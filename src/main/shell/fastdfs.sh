#! /bin/bash

docker-compose -f fastdfs.yml stop

docker-compose -f fastdfs.yml rm --force

exist=`docker inspect --format '{{.State.Running}}' fastdfs`

if [ "${exist}" != "true" ];
then
        ./delete_image.sh
        echo "---->删除无用镜像"
fi

./build.sh fastdfs

docker-compose -f fastdfs.yml up -d
