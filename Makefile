.PHONY: run

build:
	clang -g -Wall -o pth_pool pth_pool.c -lpthread -lrt

run: build producer_consumer.out
	./producer_consumer.out

clean: producer_consumer.out
	rm -rf producer_consumer.out
