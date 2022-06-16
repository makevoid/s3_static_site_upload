require_relative "config"

SOURCE_DIR = "files"

def exe(cmd)
  puts "executing: #{cmd}"
  out = `#{cmd}`
  puts out
  out
end

def s3(cmd)
  exe "aws s3 --profile #{AWS_PROFILE_NAME} #{cmd}"
end

def cloudfront(cmd)
  exe "aws cloudfront --profile #{AWS_PROFILE_NAME} #{cmd}"
end

def main
  s3 "ls s3://#{BUCKET_NAME}"

  s3 "cp #{SOURCE_DIR} s3://#{BUCKET_NAME} --recursive"

  cloudfront "create-invalidation --distribution-id #{CLOUDFRONT_DISTRIBUTION_ID} --paths '/*'"

  puts "done"
end

main
