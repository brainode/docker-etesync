### Usage

Example command for create container
`
docker run --name=etesync -e admin=ADMINUSERNAME -e pass=ADMINPASS -e email=ADMINEMAIL -v PATHTOCONFIG:/etc/etesync-server -p 8008:8008 rusbaron/etesync:latest
`