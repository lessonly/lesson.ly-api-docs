# Authentication

> The following pattern authorizes an API request:

```shell
# With shell, you can just pass the correct header with each request
curl -u "SUBDOMAIN:API_KEY" "api_endpoint_here"

```

> Make sure to replace `SUBDOMAIN` with your Lessonly subdomain and `API_KEY` with your personal API key.

Lessonly uses API keys and basic HTTP authorization to allow access to the API. All API requests must be sent over HTTPS. You can register a new Lessonly API key by signing into Lessonly and navigating to the settings page.  If you do not see the API key link, you may need to request for the feature to be activated:  [here] (mailto:info@lessonly.com).


<aside class="alert">
You must replace <code>SUBDOMAIN</code> with your Lessonly subdomain and <code>API_KEY</code> with your personal API key.
</aside>
