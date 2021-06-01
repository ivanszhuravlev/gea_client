.PHONY: protobuf

protobuf:
	protoc	--dart_out=./lib/models/ -Iprotos=./proto \
		$$(find ./proto -type f -iname "*.proto")