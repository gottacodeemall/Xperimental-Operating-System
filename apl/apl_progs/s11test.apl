
integer main(){
	integer a,b,c;
	a=Fork();
	print(a);
	b=Getpid();
	print(b);
	a=Getppid();
	print(a);
	a=Wait(b);
	print("karthik");
	print(a);
	a=Signal();
	print("test");
	print(a);

	return 0;
}
