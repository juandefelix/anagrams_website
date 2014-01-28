### Help

**Generating migrations in Sinatra:
```
$ rake generate:model NAME=<Word>
$ rake generate:migration NAME=create_words
```

To start the application type:
`shotgun`

Then go to
` http://localhost:9393/`


You might need to type these commands in the terminal to avoid the error when you have two applications running:
`pkill shotgun`
`pkill ruby`
