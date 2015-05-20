# Groups

## List Groups

```shell
curl -u "DOMAIN:API_KEY" "https://lesson.ly/api/v1/groups"
```

> The above command returns JSON structured like this:

```json
{ 
  "type": "groups",
  "groups": [
    {"id": 1, "name": "Group 1"},
    {"id": 2, "name": "Group 2"},
  ]
}
```

This endpoint retrieves all groups.

### HTTP Request

`GET https://lesson.ly/groups`

## Show Group Details

```shell
curl -u "DOMAIN:API_KEY" "https://lesson.ly/api/v1/groups/:group_id"
```

> The above command returns JSON structured like this:

```json
{
  "type": "group",
  "members": [
         {"id": 1, "name": "Test Name"},
         {"id": 2, "name": "Test Name 2"}
    ],
  "managers":  [
         {"id": 1, "name": "Test Name"},
   ]
}
```

This endpoint retrieves a listing of a groups members and managers.

### Query Parameters

Paramter | Required | Type |  Description
--- | --- | --- | ---
group_id | yes | Positive Integer | The group to access.  The company must have access to the group.

### HTTP Request

`GET https://lesson.ly/groups/:group_id`
