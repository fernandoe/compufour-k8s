pull:
	docker pull jacobalberty/firebird:2.5.6-sc
	docker pull jacobalberty/firebird:2.5.8-sc
	docker pull jacobalberty/firebird:2.5.8-ss

run:
	docker run --name firebird --rm -p 3050:3050 -v /home/ubuntu/database:/firebird/data -e ISC_PASSWORD='masterkey' -d jacobalberty/firebird:2.5.6-sc
	docker run --name firebird --rm -p 3050:3050 -v /home/ubuntu/database:/firebird/data -e ISC_PASSWORD='masterkey' -d jacobalberty/firebird:2.5.8-sc
	docker run --name firebird --rm -p 3050:3050 -v /home/ubuntu/database:/firebird/data -e ISC_PASSWORD='masterkey' -d jacobalberty/firebird:2.5.8-ss
		