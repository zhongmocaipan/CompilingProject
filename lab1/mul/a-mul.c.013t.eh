
;; Function main (main, funcdef_no=0, decl_uid=2344, cgraph_uid=1, symbol_order=0)

int main ()
{
  long long int factorial[1001];
  int n;
  int i;
  int D.2354;

  n = 1000;
  factorial[0] = 1;
  i = 1;
  goto <D.2352>;
  <D.2351>:
  _1 = i + -1;
  _2 = factorial[_1];
  _3 = (long long int) i;
  _4 = _2 * _3;
  factorial[i] = _4;
  i = i + 1;
  <D.2352>:
  if (i <= n) goto <D.2351>; else goto <D.2349>;
  <D.2349>:
  _5 = factorial[n];
  printf ("%d! = %lld\n", n, _5);
  D.2354 = 0;
  goto <D.2356>;
  <D.2356>:
  factorial = {CLOBBER};
  goto <D.2355>;
  D.2354 = 0;
  goto <D.2355>;
  <D.2355>:
  return D.2354;
}


