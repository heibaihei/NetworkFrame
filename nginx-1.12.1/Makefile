
default:	build

clean:
	rm -rf Makefile objs

build:
	$(MAKE) -f objs/Makefile

install:
	$(MAKE) -f objs/Makefile install

modules:
	$(MAKE) -f objs/Makefile modules

upgrade:
	/Users/zj-db0519/work/code/github/NetworkFrame/project/mac/NetworkFrame/../../../lib/nginx/sbin/nginx -t

	kill -USR2 `cat /Users/zj-db0519/work/code/github/NetworkFrame/project/mac/NetworkFrame/../../../lib/nginx/nginx.pid`
	sleep 1
	test -f /Users/zj-db0519/work/code/github/NetworkFrame/project/mac/NetworkFrame/../../../lib/nginx/nginx.pid.oldbin

	kill -QUIT `cat /Users/zj-db0519/work/code/github/NetworkFrame/project/mac/NetworkFrame/../../../lib/nginx/nginx.pid.oldbin`
