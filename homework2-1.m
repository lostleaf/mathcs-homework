
A=randn(100,3);
for i=1:1:100
    A(i,:)=A(i,:)/norm(A(i,:));
end;
%disp(A);
cnt=0;
for i=1:1:100
    for j=1:1:100 
        if i~=j
            cnt=cnt+1;
            B(cnt)=norm(A(i,:)-A(j,:));
        end
    end;
end;
%disp(B);
%hist(B);
[a,b]=hist(B);
bar(b,a/sum(a));
A=randn(100,100);
for i=1:1:100
    A(i,:)=A(i,:)/norm(A(i,:));
end;
%disp(A);
cnt=0;
for i=1:1:100
    for j=1:1:100 
        if i~=j
            cnt=cnt+1;
            B(cnt)=norm(A(i,:)-A(j,:));
        end
    end;
end;
%disp(B);
%hist(B);
[a,b]=hist(B);
figure;
bar(b,a/sum(a));