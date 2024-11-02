# show build version
docker buildx version

# enable build instancd
docker buildx create --name mybuilder --use

# Create the builder
docker buildx build  --builder multi-builder --platform linux/amd64,linux/arm64  -t kimjk667/cloud-cicd --push .
# docker buildx build  --platform linux/amd64,linux/arm64  -t kimjk667/cloud-cicd --push .
docker build  -t kimjk667/cloud-cicd --push .