docker build \
    --progress=plain \
    -f Dockerfile.serve \
    -t chrisdonahue/web-llm-serve \
    .

docker run \
    -it \
    --rm \
    -p 8000:8888 \
    chrisdonahue/web-llm-serve