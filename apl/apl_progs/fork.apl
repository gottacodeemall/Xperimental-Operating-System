decl
	integer a;
enddecl

integer main(){
	print("before fork");
	breakpoint;
	a=Fork();
	print("after fork");
	
	return 0;
}		
