
# Rate Limiting

Lesson.ly currently limits the rate of requests made to the API.  At the limit of 500 requests per minute the API will return "403 Forbidden (Rate Limit Exceeded)".  To avoid hitting this rate limit, you can adjust your scripts and workflows to add pauses in between subsequent API requests.
