docker-compose -f fastdfs.yml stop

docker-compose -f fastdfs.yml rm --force

./build.sh fastdfs

docker-compose -f fastdfs.yml up -d
