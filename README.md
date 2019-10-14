# README


Tutorial: https://graphql-ruby.org/getting_started

## console graphql

http://localhost:3000/graphiql


## Querys


```
{
  dogs{
    id
    name
  }
}
```


```
mutation {
  createDog(
    input:{ name: "Pluto"}
  ) {
    dog{
      id
      name
    }
  }
}
```

```
{
  dog(id: 1){
    id
    name
  }
}
```

