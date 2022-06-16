# S3 static site upload

Wrapper around AWS cli to publish / update your static site to S3 + Cloudfront.


### Prerequisites:

- ruby installed
- aws cli installed
- S3 public bucket created
- Cloudfront distribution created
- AWS profile added to your `~/.aws/credentials`

### Configuration:

- edit `config.rb` specifying `AWS_PROFILE_NAME`, `BUCKET_NAME`, and `CLOUDFRONT_DISTRIBUTION_ID`

### Steps:

- copy your site's files into the `files` directory
- run `rake` to upload  
- there is no step 3 :D

---

Enjoy!

@makevoid
