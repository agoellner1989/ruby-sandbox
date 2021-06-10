require 'aws-sdk-s3'

def list_buckets(s3_client)
    buckets = s3_client.list_buckets.buckets
    puts "Number of buckets: #{buckets.count}"

    buckets.count.times do
        |i|
        bucket = buckets[i]
        puts "Bucket Name: #{bucket.name}"
    end
end

def get_bucket_by_name(s3_client, name)
    buckets = s3_client.list_buckets.buckets

    buckets.count.times do
        |i|
        bucket = buckets[i]

        if bucket.name == name then return bucket end
    end
end

def list_bucket_objects(s3_client,bucket_name)
    objects = s3_client.list_objects_v2(
        bucket: bucket_name,
      ).contents
    puts objects.count

    objects.each do
        |object|
        puts object.key
    end
end

def run_me
    region = 'us-east-2'    
    s3_client = Aws::S3::Client.new(region: region)
    list_buckets(s3_client)
    b = get_bucket_by_name(s3_client, 'stock-data-ag')
    list_bucket_objects(s3_client, b.name)
end

run_me if $PROGRAM_NAME == __FILE__