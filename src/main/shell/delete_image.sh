docker rmi $(docker images | grep "none" | awk '{print $3}')

docker rmi com.fastdfs/springboot-fastdfs:latest
