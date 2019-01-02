require 'fss/minio'

module FSS
  include Minio

  def list_buckets
    minio.list_buckets
  end

  def bucket_exists?(opts = {})
    begin
      minio.head_bucket(bucket: opts[:bucket])
    rescue Aws::S3::Errors::NotFound
      return false
    end

    true
  end

  def make_bucket(opts = {})
    minio.create_bucket(bucket: opts[:name])
  end

  def delete_bucket(opts = {})
    begin
      minio.delete_bucket(bucket: opts[:bucket])
    rescue Aws::S3::Errors::NoSuchBucket
      return false
    end

    true
  end

  def get_bucket_acl(opts = {})
    minio.get_bucket_acl(bucket: opts[:bucket])
  end

  def get_bucket_policy(opts = {})
    minio.get_bucket_policy(bucket: opts[:bucket])
  end

  def list_resources(opts = {})
    minio.list_objects(bucket: opts[:bucket])
  end

  def put_resource(opts = {})
    minio.put_object(body: opts[:resource_path], bucket: opts[:bucket], key: opts[:key])
  end
end
