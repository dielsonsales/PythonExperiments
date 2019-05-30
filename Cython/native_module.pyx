from random import randint
from libc.stdio cimport FILE, fopen, fclose, fprintf, fgets


cpdef c_function():
	cdef int sum = 0
	for i in range(100):
		sum += randint(0, 100)
	return sum


cpdef write_to_file():
	cdef FILE* p
	p = fopen("test.txt", "w")
	fprintf(p, "✊")
	fclose(p)


cpdef read_file(input_path):
	cdef FILE* p
	cdef char s[100]
	p = fopen(input_path.encode(), "r")
	while fgets(s, 100, p) != NULL:
		print(str(s, 'utf-8'))
	fclose(p)
