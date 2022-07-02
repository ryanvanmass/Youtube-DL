# Easy Youtube-dl Docker Image
This is an easy to use Docker Image for youtube-dl

## Build
```
    docker build -t youtubedl ./"Container build files"
```

## Run
```
    docker run --rm -t -v "$PWD/output:/home/youtube/output" youtubedl <URL>
```

# Docker Compose
1. Enter the URL were indicated in the `docker-compose` file
2. Run the bellow command
```
    docker-compose up
```
**Warning:** I reccomend running this in tmux