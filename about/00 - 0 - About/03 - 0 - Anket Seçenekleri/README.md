# Anket Seçenekler Veri Tabanı

## Tüm Veriler

### Url
```
{{url}}/api/survey/options/all
```

## Tüm Veriler - Params

### Url
```
{{url}}/api/survey/options/all?page=2&rowcount=4&order=asc
```
```
{{url}}/api/survey/options/all?order=asc&ValueTop=15
```

## Veri Arama

### Url
```
{{url}}/api/survey/options/find/33
```

## Veri Arama - Post

### Url
```
{{url}}/api/survey/options/find_post
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
{{url}}/api/survey/options/find_user?order=asc
```
```
{{url}}/api/survey/options/find_user?page=2&rowcount=4&order=asc
```
### POST
```
{
   "created_byId": 1
}
```

## Veri Ekleme

### Url
```
{{url}}/api/survey/options/add
```
### POST
```
{
    "survey_id":4,
    "title":"Seçenek 4 - 2",
    "created_byId": 1
}
```


## Veri Ekleme Token

### Url
```
{{url}}/api/survey/options/add/token
```
### POST
```
{
    "survey_id":4,
    "title":"Seçenek 4 - 2",
    "created_byToken": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZW1haWwiOiJ1c2VyQGdtYWlsLmNvbSIsImlhdCI6MTcwMzA3OTIyOX0.BkbTAFtpJlYBtDOLR2diF0YipECYeRkmIdA1q7Krk4Q"
}
```

## Veri Güncelleme

### Url
```
{{url}}/api/survey/options/edit
```
### POST
```
{   
    "id":59,
    "title":"title güncelleme",
    "updated_byId": 5
}
```


## Çoklu Veri Güncelleme

### Url
```
{{url}}/api/survey/options/edit/multi
```
### POST
```
{
    "ids": "5,4",
    "title":"title güncelleme",
    "updated_byId": 5
}
```

## Veri Silme

### Url
```
{{url}}/api/survey/options/delete/68
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
{{url}}/api/survey/options/delete/multi
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
{{url}}/api/survey/options/delete/edit
```
### POST
```
{
    "ids":"33",
    "deleted_byId": 10
}
```
