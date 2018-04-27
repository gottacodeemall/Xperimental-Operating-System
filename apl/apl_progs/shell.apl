decl
	integer a;
	string re;
enddecl

integer main(){

	integer i;
	print("XOS-$");
	read(re);
	while(re != "exit") do
		a=Fork();
		if(a==-1) then
			print("cannot fork");               //fork so that we can execute the command
			break;
		endif;
		if(a==-2) then
			i=Exec(re);							//in child process execute the command given
			if(i==-1) then
				print("Cannot Exec");
				break;
			endif;
		else
			i=Wait(a);                          // wait for the chlid process to complete
			if(i==-1) then
				print("Wait Problem");
				break;
			endif;
		endif;
		print("XOS-$");							//read another command
		read(re);
	endwhile;
	return 0;
}
