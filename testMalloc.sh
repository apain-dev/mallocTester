touch malloc.c
echo "#include <stdio.h>\nvoid *malloc(size_t t){ return NULL; }" > malloc.c
gcc -c malloc.c 
gcc -shared -fPIC malloc.o -o libmalloc.so
export LD_LIBRARY_PATH=chemin:$LD_LIBRARY_PATH
