.RECIPEPREFIX +=

.PHONY: all

CFLAGS = -ansi -pedantic -std=c99 -Wall -O2
DFLAGS = -m64 -fPIC -w -O -shared

all: random_num mylib.so

random_num: random_num.c
  gcc -O3 $(CFLAGS) $< -o $@

clean:
  rm -f *.so *.o random_num

real_random: all
  ./random_num

fake_random: all
  LD_PRELOAD="./mylib.so" ./random_num

%.so:%.d
  dmd $(DFLAGS) -of=$@ $<
 
