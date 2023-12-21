# Kullanıcı Veri Tabanı

## Tüm Veriler

### Url
```
{{url}}/api/users/all
```

## Tüm Veriler - Params

### Url
```
{{url}}/api/users/all?page=2&rowcount=4&order=asc
```
```
{{url}}/api/users/all?order=asc&ValueTop=15
```

## Veri Arama

### Url
```
{{url}}/api/users/find/33
```

## Veri Arama - Post

### Url
```
{{url}}/api/users/find_post
```
### POST
```
{
    "id":2
}
```

## Veri Arama - Kullanıcı

### Url
```
{{url}}/api/users/find_user?order=asc
```
```
{{url}}/api/users/find_user?page=2&rowcount=4&order=asc
```
### POST
```
{
   "created_byId": 1
}
```

### POST
```
{
   "value": 1
}
```

## Veri Ekleme

### Url
```
{{url}}/api/users/add
```
### POST
```
{
    "name":"name add",
    "surname":"surname add",
    "created_byId": 0
}
```

## Veri Güncelleme

### Url
```
{{url}}/api/users/edit
```
### POST
```
{   
    "id":67,
    "name":"name güncelleme",
    "surname":"surname güncelleme",
    "updated_byId": 5
}
```


## Çoklu Veri Güncelleme

### Url
```
{{url}}/api/users/edit/multi
```
### POST
```
{
    "ids": "98,34",
    "name":"name güncelleme",
    "surname":"surname güncelleme",
    "updated_byId": 5
}
```

## Veri Silme

### Url
```
{{url}}/api/users/delete/68
```
### POST
```
{
    "deleted_byId": 1
}
```

## Çoklu Veri Silme 

### Url
```
{{url}}/api/users/delete/multi
```
### POST
```
{
    "ids": "68,67",
    "deleted_byId": 1
}
```

## Geçisi Veri Silme 

### Url
```
{{url}}/api/users/delete/edit
```
### POST
```
{
    "ids":"33",
    "deleted_byId": 10
}
```


## Login

### Url
```
{{url}}/api/users/login
```
### POST
```
{
    "email": "user@gmail.com",
    "password": "123"
}
```
