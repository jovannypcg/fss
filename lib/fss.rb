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
end
