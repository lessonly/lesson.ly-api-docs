# Groups

## List Groups

```shell
curl -u "DOMAIN:API_KEY" "https://api.lesson.ly/api/v1/groups"
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

`GET https://api.lesson.ly/api/v1/groups`

## Show Group Details

```shell
curl -u "DOMAIN:API_KEY" "https://api.lesson.ly/api/v1/groups/:group_id"
```

> The above command returns JSON structured like this:

```json
{
  "type": "group",
  "name": "Test Group",
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

`GET https://api.lesson.ly/api/v1/groups/:group_id`

## Update Group

```shell
curl -u "DOMAIN:API_KEY" "https://api.lesson.ly/api/v1/groups/:group_id" -p params
```

> The following are sample parameters for this request:

```json
{ 
  "name": "New Name",
  "members":
    [ 
      {"id": 1 },
      {"id": 2, "remove": "true"}

    ],
  "managers":
    [
      {"id":  3, "remove": "true" },
      {"id":  4 }
    ]

}
```
> A successful update will return JSON consisting of the group details repsonse:

```json
{
  "type": "update_group",
  "name": "New Name",
  "members": [
         {"id": 1, "name": "Test Name"},
    ],
  "managers":  [
         {"id": 4, "name": "Test Name 4"},
   ]
}
```

This endpoint allows you to update a group and its members and managers

### HTTP Request

`PUT https://api.lesson.ly/api/v1/groups/:group_id/` -p params

### Query Parameters

Paramter | Required | Type |  Description
--- | --- | --- | ---
group_id | yes | Positive Integer | The group to access.  The company must have access to the group.
members | no | Array |  The members of a group.  Passing "remove": "true" will remove this association.
managers | no | Array | The managers of a group.  Passing "remove": "true" will remove this association.
