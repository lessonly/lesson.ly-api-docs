# Tags

## List Tags

```shell
curl -u "DOMAIN:API_KEY" "https://api.lesson.ly/api/v1/tags"
```

> The above command returns JSON structured like this:

```json
{
  "type": "tags",
  "tags": [
    {
      "id": 1,
      "name": "Marketing"
    },
    {
      "id": 2,
      "name": "Development"
    }
  ]
}
```

This endpoint retrieves all tags.

### HTTP Request

`GET https://api.lesson.ly/api/v1/tags`

## Show Tag Details

```shell
curl -u "DOMAIN:API_KEY" "https://api.lesson.ly/api/v1/tags/:tag_id
```

> The above command returns JSON structured like this:

```json
{
  "type": "tag",
  "id": 1,
  "name": "Marketing"
}
```

This endpoint retrieves all the tag details.
### HTTP Request

`GET https://api.lesson.ly/api/v1/tags/:tag_id`

### Query Parameters

Paramter | Required | Type |  Description
--- | --- | --- | ---
tag_id | yes | Positive Integer | The tag to access.  The company must have access to the tag.

## Tag Lessons

```shell
curl -u "DOMAIN:API_KEY" "https://api.lesson.ly/api/v1/tags/:tag_id/lessons
```

> The above command returns JSON structured like this:

```json
{
  "type": "tag_lessons",
  "lessons": [
    {
      "id": 5,
      "title": "Marketing 101",
      "assignees_count": 21,
      "completed_count": 1,
      "retake_score": 90,
      "description": "A quick overview about how we do marketing."
    },
    {
      "id": 456,
      "title": "Development 101",
      "assignees_count": 11,
      "completed_count": 5,
      "retake_score": 95,
      "description": "A quick overview about how we do development."
    }
  ]
}
```

This endpoint retrieves all the lessons tagged with a particular tag.
### HTTP Request

`GET https://api.lesson.ly/api/v1/tags/:tag_id/lessons`

### Query Parameters

Paramter | Required | Type |  Description
--- | --- | --- | ---
tag_id | yes | Positive Integer | The tag to access.  The company must have access to the tag.

## Tag Courses

```shell
curl -u "DOMAIN:API_KEY" "https://api.lesson.ly/api/v1/tags/:tag_id/courses
```

> The above command returns JSON structured like this:

```json
{
  "type": "tag_courses",
  "courses": [
    {
      "id": 123,
      "title": "Onboarding Course",
      "assignees_count": 15,
      "completed_count": 11,
      "description": "This course will get you up to speed in our company.",
      "lessons": [
        {
          "id": 5,
          "title": "Marketing 101",
          "assignees_count": 21,
          "completed_count": 1,
          "retake_score": 90,
          "description": "A quick overview about how we do marketing."
        },
        {
          "id": 456,
          "title": "Development 101",
          "assignees_count": 11,
          "completed_count": 5,
          "retake_score": 95,
          "description": "A quick overview about how we do development."
        }
      ]
    }
  ]
}
```

This endpoint retrieves all the courses tagged with a particular tag.
### HTTP Request

`GET https://api.lesson.ly/api/v1/tags/:tag_id/courses`

### Query Parameters

Paramter | Required | Type |  Description
--- | --- | --- | ---
tag_id | yes | Positive Integer | The tag to access.  The company must have access to the tag.
