function docker-clean
  docker rmi -f (docker images -q)
  docker rm -v -f (docker ps -qa)
end
