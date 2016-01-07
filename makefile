.PHONY: build clean error install

error:
	@echo "Please choose one of the following target: build, clean, install"

clean:
	@echo "***Cleaning build***"
	rm -rf out

build: out
	@echo "***Building***"
	cp src/* out 

install: out/gdrive-backup
	@echo "***Installing***"
	/bin/cp -rf out/gdrive-backup /usr/local/bin/

##

out/gdrive-backup:
	make build
	@echo "***No build found, rebuilding***"

out: 
	mkdir out

