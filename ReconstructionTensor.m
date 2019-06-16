clear DATA_OUT;
clear DATA_OUT_SORT;
clear a;

DATA_OUT = [];
n=1;
for s=1:200
    for o=1:1050
    temp = Output (s, o, 60);
    temp = temp*(1000000000);
    input01 = [s o 60 temp];
    DATA_OUT = [DATA_OUT; input01];
    end
    disp(n);
    disp('1000 rows process completed...');
    n =n+1;
end
disp('All rows process completed...');

DATA_OUT_SORT = sortrows(DATA_OUT,4,  'descend',  'ComparisonMethod','real');
disp('All rows sort process completed...descend...ComparisonMethod....real');
clear input01;
clear s;
clear o;
clear temp;

       