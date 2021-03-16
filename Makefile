image:
      docker build -f Dockerfile -t plumbum19/test .
push:
      docker login -u plumbum19 -p '9e18a32e-a183-446c-a368-1ebf0a5a65cc'
      docker tag plumbum19/test plumbum19/test:0.0.1
      docker push plumbum19/test
      docker push plumbum19/test:0.0.1
