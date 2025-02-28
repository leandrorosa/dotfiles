function drun
#     docker run --platform linux/arm64 -it -v $PWD:/root/shared --entrypoint /bin/sh $argv
    docker run -it -v $PWD:/home/shared --entrypoint /bin/sh $argv
end