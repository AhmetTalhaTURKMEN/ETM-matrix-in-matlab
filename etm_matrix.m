data=getgenbank('NC_000908','SequenceOnly',true);
[Dimers, Percent] = dimercount(data);
Adenin=length(strfind(data,'A'))/length(data);
Sitozin=length(strfind(data,'C'))/length(data);
Guanin=length(strfind(data,'G'))/length(data);
Timin=length(strfind(data,'T'))/length(data);
ETM=zeros(4,4);
for i=1:4
    for j=1:4
       if  i==1
          ETM(i,j)=Percent(i,j)/Adenin;
       end 
       if  i==2
          ETM(i,j)=Percent(i,j)/Sitozin;
       end 
       if  i==3
          ETM(i,j)=Percent(i,j)/Guanin;
       end 
       if  i==4
          ETM(i,j)=Percent(i,j)/Timin;
       end 
    end
end