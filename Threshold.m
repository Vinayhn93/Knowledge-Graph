vals=newData(newData(:,5)==1,[5 6]);
vals1= vals(:,2);
minimum= min(vals1);
dat = [];
fd1= newData(:,5:6);
for k = 1:size(newData, 1)
    if any(newData(k, 6) >= minimum) 
        newData(k,6) = 1;
    else
        newData(k,6) = 0;
    end
end