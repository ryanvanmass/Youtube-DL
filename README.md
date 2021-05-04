# Easy Youtube-dl Docker Image
This is an easy to use Docker Image for youtube-dl

## Build
```
    docker build -t youtubedl .
```

## Run
```
    docker run --rm -t -v "$PWD/output:/home/youtube/output" youtubedl <URL>
```