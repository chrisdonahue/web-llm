docker build \
    --progress=plain \
    -f Dockerfile.build \
    -t chrisdonahue/web-llm-build \
    .

mkdir -p dist
rm -rf dist/*
docker run \
    -it \
    --rm \
    -v $(pwd)/../src:/web-llm/src \
    -v $(pwd)/dist:/web-llm/lib \
    chrisdonahue/web-llm-build