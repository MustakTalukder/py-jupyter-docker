# py-jupyter-docker - To run everything in one command

-  docker-compose up -d --build

# Manual build (backup )
 - docker build -t tsa-container .
 - docker run -it --name tsa_container -p 8888:8888 tsa-container
