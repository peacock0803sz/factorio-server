if [ -z "$1" ]; then
	path="/opt/factorio"
else
	path=$2
fi

if [ -z "$2" ]; then
	name="factorio"
else
	name=$1
fi


docker run -d -it \
	-p 34197:34197/udp \
	-p 27015:27105/tcp \
	-v $path:/factorio \
	--name $name \
	--restart=always \
	dtandersen/factorio
	
