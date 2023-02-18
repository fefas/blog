serve:
	@make run cmd="jekyll serve \
	    --disable-disk-cache \
        --trace \
        --incremental \
        --watch \
        --unpublished \
        --future \
        --port 80 \
        --host 0.0.0.0"

run: image = fefas/blog
run: version = $(shell git rev-parse --short HEAD)
run: workdir = /usr/local/blog
run: port ?= 8080
run:
	@docker build \
        -t ${image} \
        --build-arg WORKDIR=${workdir} \
        --build-arg VERSION=${version} \
        .
	@docker run \
        -it \
        --rm \
        -p ${port}:80 \
        ${image} \
        ${cmd}
