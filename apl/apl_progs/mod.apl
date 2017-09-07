

integer main(){
	integer a;
	a=Create("a.dat");
	print(a);
	a=Create("b.dat");
	print(a);
	a=Open("a.dat");
	print(a);
	integer i;
	i=0;
	integer x;
	integer b;
	b=Open("a.dat");
	print(b);
	integer c;
	c=Open("b.dat");
	print(c);
	while(i<700) do
		if(i%2==0) then
			x=Write(a,i);
			print(x);
		else
			x=Write(b,i);
			print(x);	
		endif;
		i=i+1;
	endwhile;
	
	integer changeseek;
	changeseek=Seek(a,10);
	print(changeseek);		
	changeseek=Seek(b,10);
	print(changeseek);
	integer temp;
	i=0;
	while(i<300) do
		if(i%2==1) then
			x=Read(a,temp);
			print(x);
			print(temp);
			x=Write(c,temp);
			print(x);
		else
			x=Read(b,temp);
			print(x);
			print(temp);
			x=Write(c,temp);
			print(x);
		endif;
		i=i+1;
	endwhile;
	
	x=Close(a);
	print(x);
	x=Delete("a.dat");
	x=Write(a,300);
	print(x);
	x=Write(b,400);
	print(x);
	x=Close(b);
	print(x);
	
	a=Open("a.dat");
	b=Open("b.dat");
	i=0;
	while(i<700) do	
		if(i%2==0) then
			x=Write(a,i);
			print(x);
		else
			x=Write(b,i);
			print(x);	
		endif;
		i=i+1;
	endwhile;
	x=Close(a);
	print(x);
	x=Close(b);
	print(x);		
return 0;
}	
