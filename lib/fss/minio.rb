require 'aws-sdk-s3'

module FSS
  module Minio
    Aws.config.update({
      endpoint: ENV['MINIO_ENDPOINT'],
      access_key_id: ENV['MINIO_ACCESS_KEY'],
      secret_access_key: ENV['MINIO_SECRET_KEY'],
      region: ENV['MINIO_REGION'],
      force_path_style: true
    })

    def minio
      Aws::S3::Client.new
    end
  end
end
