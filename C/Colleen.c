#include <stdio.h>


/*
	"Yields falsehood when preceded by its quotation" yields falsehood when preceded by its quotation.
*/
int
quine (void) {

	const char *s = "#include <stdio.h>%2$c%2$c%2$c/*%2$c%3$c%1$cYields falsehood when preceded by its quotation%1$c yields falsehood when preceded by its quotation.%2$c*/%2$cint%2$cquine (void) {%2$c%2$c%3$cconst char *s = %1$c%4$s%1$c;%2$c%3$cprintf(s, 34, 10, 9, s);%2$c%3$creturn 0;%2$c}%2$c%2$cint%2$cmain (void) {%2$c%2$c%3$c/*%2$c%3$c%3$cLet the magic happen.%2$c%3$c*/%2$c%3$creturn quine();%2$c}%2$c";
	printf(s, 34, 10, 9, s);
	return 0;
}

int
main (void) {

	/*
		Let the magic happen.
	*/
	return quine();
}
