REGISTRY         := plumbum19
NAME             := test
VERSION         := 0.0.1

BASE_IMAGE         := ${REGISTRY}/${NAME}
VERSION_IMAGE   := ${BASE_IMAGE}:${VERSION}
image:
        docker build -f Dockerfile -t ${BASE_IMAGE} .
push:
        docker login -u plumbum19 -p '9e18a32e-a183-446c-a368-1ebf0a5a65cc'
        docker tag ${BASE_IMAGE} ${VERSION_IMAGE}
        docker push ${BASE_IMAGE}
        docker push ${VERSION_IMAGE}
