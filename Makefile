check: fmt vet tidy test
.PHONY: check

build:
	@echo "==> building gh-models binary <=="
	script/build
.PHONY: build

fmt:
	@echo "==> running Go format <=="
	gofmt -s -l -w .
.PHONY: fmt

vet:
	@echo "==> vetting Go code <=="
	go vet ./...
.PHONY: vet

tidy:
	@echo "==> running Go mod tidy <=="
	go mod tidy
.PHONY: tidy

test:
	@echo "==> running Go tests <=="
	go test -race -cover ./...
.PHONY: test
