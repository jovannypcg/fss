require 'fss/minio'

module FSS
  include Minio

  def list_buckets
    minio.list_buckets
  end
end
