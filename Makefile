serve: flags += --unpublished
serve: flags += --future
serve: flags += --watch
serve: flags += --trace
serve: flags += --host 0.0.0.0
serve: flags += --port 80
serve: flags += --disable-disk-cache
serve:
	@make run bind=y cmd="jekyll serve ${flags}"

update:
	@make run cmd="bundle update"

sh:
	@make run cmd="sh"

run: image = fefas/blog
run: version = $(shell git rev-parse --short HEAD)
run: workdir = /usr/local/blog
run: port ?= 1403
run:
	@docker build \
        -t ${image} \
        --build-arg WORKDIR=${workdir} \
        --build-arg VERSION=${version} \
        .
	@docker run \
        -it \
        --rm \
        $(if ${bind},-p ${port}:80) \
        -v ${PWD}/src:${workdir} \
        ${image} \
        ${cmd}
