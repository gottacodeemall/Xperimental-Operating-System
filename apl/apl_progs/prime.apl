decl
integer n;
integer a[100];
enddecl

integer main(){
	breakpoint;
	read(n);
	integer i,j;
	j=0;
	while(j<n) do
		a[j]=0;
		j=j+1;
	endwhile;
	i=2;
	integer k;
	if(n<=2) then
		print(0);
	else
		while(i<n) do
			if(a[i]==0) then
				print(i);
				k=i*2;
				while(k<n) do
					a[k]=1;
					k=k+i;
				endwhile;
			endif;
			i=i+1;
		endwhile;	
	endif;
return 0;
}						
			
		

