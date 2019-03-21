#include <fcntl.h>
#include <stdio.h>
/*
	With stringify it's much better :3
*/
#define F1 int main(void){FILE *f = fopen("Grace_kid.c", "w");if (!f)return -1;fprintf(f, "#include <fcntl.h>\n#include <stdio.h>\n/*\n\x9With stringify it's much better :3\n*/\n#define F1 %s\n#define F2(x) #x\n#define F3(x) F2(x)\nconst char *s = F3(F1);\nF1\n", s);fclose(f);return 0;}
#define F2(x) #x
#define F3(x) F2(x)
const char *s = F3(F1);
F1
