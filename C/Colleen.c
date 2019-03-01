#include <stdio.h>


/*
	"Yields falsehood when preceded by its quotation" yields falsehood when preceded by its quotation.
*/
int
quine (void) {

	const char *s = "#include <stdio.h>%c%c%c/*%c%c%cYields falsehood when preceded by its quotation%c yields falsehood when preceded by its quotation.%c*/%cint%cquine (void) {%c%c%cconst char *s = %c%s%c;%c%cprintf(s, 10, 10, 10, 10, 9, 34, 34, 10, 10, 10, 10, 10, 9, 34, s, 34, 10, 9, 10, 9, 10, 10, 10, 10, 10, 10, 9, 10, 9, 9, 10, 9, 10, 9, 10, 10);%c%creturn 0;%c}%c%cint%cmain (void) {%c%c%c/*%c%c%cLet the magic happen.%c%c*/%c%creturn quine();%c}%c";
	printf(s, 10, 10, 10, 10, 9, 34, 34, 10, 10, 10, 10, 10, 9, 34, s, 34, 10, 9, 10, 9, 10, 10, 10, 10, 10, 10, 9, 10, 9, 9, 10, 9, 10, 9, 10, 10);
	return 0;
}

int
main (void) {

	/*
		Let the magic happen.
	*/
	return quine();
}
