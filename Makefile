EXE = index
OBJS = porter2_stemmer.o
CC = clang++ -std=c++11 -Wall -pedantic -I.
CCOPTS = -O3
LINKER = clang++ -std=c++11 -w -Wall -pedantic -I.

all: $(EXE)

$(EXE): $(OBJS) main.cpp
	$(LINKER) main.cpp -o $@ $(OBJS)

porter2_stemmer.o: porter2_stemmer/porter2_stemmer.h porter2_stemmer/porter2_stemmer.cpp
	$(CC) $(CCOPTS) -c porter2_stemmer/porter2_stemmer.cpp -o $@

clean:
	rm -f *.o $(EXE) results_file.txt #*_tfidf.txt perDoc.txt index.txt query.txt