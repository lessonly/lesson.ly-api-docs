# Markdown
set :markdown_engine, :redcarpet
set :markdown,
    fenced_code_blocks: true,
    smartypants: true,
    disable_indented_code_blocks: true,
    prettify: true,
    tables: true,
    with_toc_data: true,
    no_intra_emphasis: true

helpers do
  def api_get_request(endpoint, version = 'v1')
    request = <<~STRING
      curl https://api.lessonly.com/api/#{version}#{endpoint} \\
      -u "SUBDOMAIN:API_KEY"
    STRING
    request.chomp
  end

  def post_request(endpoint)
    request = <<~STRING
      curl -X POST https://api.lessonly.com/api/v1#{endpoint} \\
      -H "Content-Type: application/json" \\
      -u "SUBDOMAIN:API_KEY" \\
    STRING
    request.chomp
  end

  def delete_request(endpoint, version = 'v1')
    <<~STRING
      curl -X DELETE https://api.lessonly.com/api/#{version}#{endpoint} \\
      -u "SUBDOMAIN:API_KEY"
    STRING
  end

  def put_request(endpoint, params: false)
    command = []
    command << "curl -X PUT https://api.lessonly.com/api/v1#{endpoint} \\"
    command << '-H "Content-Type: application/json" \\' if params
    command << '-u "SUBDOMAIN:API_KEY" \\'
    command.join("\n")
  end

  def pagination_query_params
    <<~STRING
      page | no | Positive Integer | Which page in the pagination to fetch.  Default = 1
      per_page | no | Positive Integer | How many results to return in each page.  Default = 50; Maximum = 1000. Numbers > 1000 are ignored and 1000 will be returned.
    STRING
  end
end

# Assets
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :fonts_dir, 'fonts'

# Activate the syntax highlighter
activate :syntax

# Github pages require relative links
activate :relative_assets
set :relative_links, true

# Build Configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  # activate :relative_assets
  activate :asset_hash
  # activate :gzip
end

activate :s3_sync do |s3_sync|
  s3_sync.bucket                     = 'lessonly-api-docs-app-public-assets' # The name of the S3 bucket you are targeting. This is globally unique.
  s3_sync.region                     = 'us-east-1'     # The AWS region for your bucket.
  s3_sync.delete                     = false # We delete stray files by default.
  s3_sync.after_build                = false # We do not chain after the build step by default.
  s3_sync.prefer_gzip                = true
  s3_sync.path_style                 = true
  s3_sync.reduced_redundancy_storage = false
  s3_sync.acl                        = 'private'
  s3_sync.encryption                 = false
  s3_sync.prefix                     = ''
  s3_sync.version_bucket             = false
  s3_sync.index_document             = 'index.html'
  s3_sync.error_document             = '404.html'
end

activate :cloudfront do |cf|
  cf.access_key_id = ENV['AWS_ACCESS_KEY_ID']
  cf.secret_access_key = ENV['AWS_SECRET_ACCESS_KEY']
  cf.distribution_id = 'E2J0SWHN1A2O6G'
  cf.filter = /\.html$/i
end

# after_s3_sync do |files_by_status|
#   invalidate files_by_status[:updated]
# end
