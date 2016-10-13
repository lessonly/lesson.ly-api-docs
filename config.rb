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
  def api_get_request(endpoint)
    "curl -u \"DOMAIN:API_KEY\" \"https://api.lesson.ly/api/v1#{endpoint}\""
  end

  def post_request(endpoint)
    "curl -H \"Content-Type: application/json\" -u \"DOMAIN:API_KEY\" -d 'JSON_PARAMS' \"https://api.lesson.ly/api/v1#{endpoint}\""
  end

  def put_request(endpoint)
    "curl -X PUT -u \"DOMAIN:API_KEY\" \"https://api.lesson.ly/api/v1#{endpoint}\""
  end

  def put_request_with_params(endpoint)
    "curl -X PUT -H \"Content-Type: application/json\" -u \"DOMAIN:API_KEY\" -d 'JSON_PARAMS' \"https://api.lesson.ly/api/v1#{endpoint}\""
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
