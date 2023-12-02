docker build \
    --progress=plain \
    -f Dockerfile.get-started \
    -t chrisdonahue/web-llm-get-started \
    .

docker run \
    -it \
    --rm \
    -p 8888:8888 \
    chrisdonahue/web-llm-get-started