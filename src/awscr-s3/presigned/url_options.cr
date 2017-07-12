module Awscr
  module S3
    module Presigned
      class Url
        # Options for generating a `Presigned::Url`
        struct Options
          # The bucket for the presigned url
          getter bucket

          # The object key, it must start with '/'
          getter object

          # When the link expires, defaults to 1 day
          getter expires

          # Additional presigned options
          getter additional_options

          # Aws access key
          getter aws_access_key

          # Aws secret key
          getter aws_secret_key

          # The Aws region
          getter region

          @expires : Int32
          @additional_options : Hash(String, String)
          @bucket : String
          @object : String
          @region : String
          @aws_access_key : String
          @aws_secret_key : String

          def initialize(@aws_access_key, @aws_secret_key, @region,
                         @object, @bucket, @expires = 86_400,
                         @additional_options = {} of String => String)
          end
        end
      end
    end
  end
end
