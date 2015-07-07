# Authentication

> The following pattern authorizes an API request:

```shell
# With shell, you can just pass the correct header with each request
curl -u "DOMAIN:API_KEY" "api_endpoint_here"

```

> Make sure to replace `DOMAIN` with your Lesson.ly domain and `API_KEY` with your personal API key.

Lesson.ly uses API keys and basic HTTP authorization to allow access to the API. All API requests must be sent over HTTPS. You can register a new Lesson.ly API key by signing into Lesson.ly and navigating to the settings page.  If you do not see the API key link, you may need to request for the feature to be activated:  [here] (mailto:info@lesson.ly).


<aside class="alert">
You must replace <code>DOMAIN</code> with your Lesson.ly domain and <code>API_KEY</code> with your personal API key.
</aside>
