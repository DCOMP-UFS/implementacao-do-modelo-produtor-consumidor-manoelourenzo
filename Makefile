.PHONY: all

all: build run
	
build: producer_consumer.c
	clang -g -Wall -o producer_consumer.out producer_consumer.c -lpthread -lrt

run: producer_consumer.out
	./producer_consumer.out

clean: producer_consumer.out
	rm -rf producer_consumer.out
