# Tags

## List Tags

```shell
curl -u "DOMAIN:API_KEY" "https://api.lessonly.com/api/v1/tags"
```

> The above command returns JSON structured like this:

```json
{
  "type": "tags",
  "tags": [
    {
      "id": 1,
      "resource_type": "tag",
      "name": "Marketing"
    },
    {
      "id": 2,
      "resource_type": "tag",
      "name": "Development"
    }
  ]
}
```

This endpoint retrieves all tags.

### HTTP Request

`GET https://api.lessonly.com/api/v1/tags`

## Show Tag Details

```shell
curl -u "DOMAIN:API_KEY" "https://api.lessonly.com/api/v1/tags/:tag_id
```

> The above command returns JSON structured like this:

```json
{
  "type": "tag",
  "resource_type": "tag",
  "id": 1,
  "name": "Marketing"
}
```

This endpoint retrieves all the tag details.
### HTTP Request

`GET https://api.lessonly.com/api/v1/tags/:tag_id`

### Query Parameters

Parameter | Required | Type |  Description
--- | --- | --- | ---
tag_id | yes | Positive Integer | The tag to access.  The company must have access to the tag.

## Tag Lessons

```shell
curl -u "DOMAIN:API_KEY" "https://api.lessonly.com/api/v1/tags/:tag_id/lessons
```

> The above command returns JSON structured like this:

```json
{
  "type": "tag_lessons",
  "lessons": [
    {
      "id": 5,
      "resource_type": "lesson",
      "title": "Marketing 101",
      "assignees_count": 21,
      "completed_count": 1,
      "retake_score": 90,
      "description": "A quick overview about how we do marketing."
    },
    {
      "id": 456,
      "resource_type": "lesson",
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

`GET https://api.lessonly.com/api/v1/tags/:tag_id/lessons`

### Query Parameters

Parameter | Required | Type |  Description
--- | --- | --- | ---
tag_id | yes | Positive Integer | The tag to access.  The company must have access to the tag.

## Tag Courses

```shell
curl -u "DOMAIN:API_KEY" "https://api.lessonly.com/api/v1/tags/:tag_id/courses
```

> The above command returns JSON structured like this:

```json
{
  "type": "tag_courses",
  "courses": [
    {
      "id": 123,
      "resource_type": "course",
      "title": "Onboarding Course",
      "assignees_count": 15,
      "completed_count": 11,
      "description": "This course will get you up to speed in our company.",
      "lessons": [
        {
          "id": 5,
          "resource_type": "lesson",
          "title": "Marketing 101",
          "assignees_count": 21,
          "completed_count": 1,
          "retake_score": 90,
          "description": "A quick overview about how we do marketing."
        },
        {
          "id": 456,
          "resource_type": "lesson",
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

`GET https://api.lessonly.com/api/v1/tags/:tag_id/courses`

### Query Parameters

Parameter | Required | Type |  Description
--- | --- | --- | ---
tag_id | yes | Positive Integer | The tag to access.  The company must have access to the tag.

## Tag Paths

```shell
curl -u "DOMAIN:API_KEY" "https://api.lessonly.com/api/v1/tags/:tag_id/paths
```

> The above command returns JSON structured like this:

```json
{
  "type": "tag_paths",
  "paths": [
    {
      "id": 123,
      "resource_type": "path",
      "title": "Onboarding Path",
      "description": "This Path will get you up to speed in our company.",
      "enforced_order": true,
      "public": false,
      "created_at": "2017-11-16T14:57:41Z",
      "last_updated_at": null,
      "published_at": "2017-11-16T14:57:42.351-05:00",
      "publisher_id": 1,
      "tags": [
        {
          "id": 1,
          "resource_type": "tag",
          "name": "First Tag"
        },
        {
          "id": 2,
          "resource_type": "tag",
          "name": "Second tag"
        }
      ],
      "links": {
        "shareable": "http://dev123.lessonly.dev/path/9999-onboarding-test",
        "overview": "http://dev123.lessonly.dev/paths/9999-onboarding-test"
      },
      "archived_at": null,
      "archived_by_user_id": null,
      "contents": [
        {
          "id": 1339,
          "resource_type": "lesson",
          "title": "Your first day",
          "archived_at": null,
          "archived_by_user_id": null
        },
        {
          "id": 8,
          "resource_type": "wait_step",
          "effect": "locked",
          "condition": "prev_step_finished",
          "unit": "days",
          "amount": 1
        },
        {
          "id": 1339,
          "resource_type": "lesson",
          "title": "Getting started",
          "archived_at": null,
          "archived_by_user_id": null
        }
      ]
    }
  ]
}
```

This endpoint retrieves all the paths tagged with a particular tag.

### HTTP Request

`GET https://api.lessonly.com/api/v1/tags/:tag_id/paths`

### Query Parameters

Parameter | Required | Type |  Description
--- | --- | --- | ---
tag_id | yes | Positive Integer | The tag to access.  The company must have access to the tag.
