echo "Building container"
build=$(docker build .)
echo $build
docker run $build
