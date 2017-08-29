decl
	integer status;
	integer p;	
	string name;
enddecl
integer main()
{
	status = Create("myfile.dat");
	print(status);
	p = Open("myfile.dat");
	print(p);
	status=Write(p,"karthik");
	print(status);
	breakpoint;
	status=Seek(p,0);
	print(status);
	status=Read(p,name);
	print(status);
	print(name);
	status = Close(p);
	print(status);
	status=Delete("myfile.dat");
	print(status);
	return 0;
}
