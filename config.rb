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
      per_page | no | Positive Integer | How many results to return in each page.  Default = 50; Maximum = 5000. Numbers > 5000 are ignored and 5000 will be returned.
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
  # activate :asset_hash
  # activate :gzip
end
