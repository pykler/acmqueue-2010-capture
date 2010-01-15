# Capture 2010 ICPC Competition Makefile

all: capture

capture: march.cpp Util.h
	g++ -o Util.o Util.h
	g++ -o capture march.cpp

test: capture time
	java -jar ./test/capture.jar -player cpp ./capture -player builtin LoopyPlayer

time:
	date
