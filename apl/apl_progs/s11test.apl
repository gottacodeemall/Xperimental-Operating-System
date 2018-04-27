integer main(){
    integer a,b,c,d;
    a=Fork();
    print(a);
    b=Getpid();
    print(b);
    c=Getppid();
    print(c);
    if(a==1) then
        d=Wait(1);
        print("karthik");
        print(d);
    endif;

    return 0;
}
