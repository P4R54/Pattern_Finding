function find2
clc
A = randi([0 1],40,40);
%A = load('mat.txt');
solver(A)
end
function solver(A)

color1=[1 1 0;
    0 .5 .5;
    1 0 1;
    0 1 1];
X = A;
axis ij
axis equal
axis tight
colormap(color1)
X = [X ones(length(X),1)];
X = [X;ones(1,length(X))];
C = X;
B = X;
pcolor(X)
% disp(X);
% X = num2cell(A);
% X(A == 1) = {'+'};
% X(A == 0) = {'o'};
% X = cell2mat(X)
%view(90,90)
for i=1:length(X)
    for j=1:length(X)
        if (X(i,j) == 0)
            count = 0;
            another = 0;
            try
                if (X(i+1,j) == 0 && X(i+2,j) == 0 && X(i+2,j+1) == 0)
                    sx = ['(',num2str(i),',',num2str(j),')'];
                    if (count == 0)
                        disp(sx)
                        count = 1;
                    end
                    B(i,j) = 0.5;
                    C(i,j) = 0.5;
                    C(i+1,j) = 0.5;
                    C(i+2,j) = 0.5;
                    C(i+2,j+1) = 0.5;
                    pause(0.5)
                    subplot(2,1,1);
                    another = another + 1;
                    pcolor(B)
                    strings = ['L shapes Count for point(',num2str(i),',',num2str(j),') = ',num2str(another)];
                    title(strings)
                    subplot(2,1,2);
                    pcolor(C)
                    B=X;
                    C=X;
                end
            catch
            end
            try
                if (X(i,j+1) == 0 && X(i+1,j+1) == 0 && X(i+2,j+1) == 0)
                    sx = ['(',num2str(i),',',num2str(j),')'];
                    if (count == 0)
                        disp(sx)
                        count = 1;
                    end
                    B(i,j) = 0.5;
                    C(i,j) = 0.5;
                    C(i,j+1) = 0.5;
                    C(i+1,j+1) = 0.5;
                    C(i+2,j+1) = 0.5;
                    pause(0.5)
                    subplot(2,1,1);
                    another = another + 1;
                    pcolor(B)
                    strings = ['L shapes Count for point(',num2str(i),',',num2str(j),') = ',num2str(another)];
                    title(strings)
                    subplot(2,1,2);
                    pcolor(C)
                    B=X;
                    C=X;
                end
            catch
            end
            try
                if (X(i+1,j) == 0 && X(i+1,j+1) == 0 && X(i+1,j+2) == 0)
                    sx = ['(',num2str(i),',',num2str(j),')'];
                    if (count == 0)
                        disp(sx)
                        count = 1;
                    end
                    B(i,j) = 0.5;
                    C(i,j) = 0.5;
                    C(i+1,j) = 0.5;
                    C(i+1,j+1) = 0.5;
                    C(i+1,j+2) = 0.5;
                    pause(0.5)
                    subplot(2,1,1);
                    another = another + 1;
                    pcolor(B) 
                    strings = ['L shapes Count for point(',num2str(i),',',num2str(j),') = ',num2str(another)];
                    title(strings)
                    subplot(2,1,2);
                    pcolor(C)
                    B=X;
                    C=X;
                end
            catch
            end
            try
                if (X(i,j+1) == 0 && X(i,j+2) == 0 && X(i+1,j+2) == 0)
                    sx = ['(',num2str(i),',',num2str(j),')'];
                    if (count == 0)
                        disp(sx)
                        count = 1;
                    end
                    B(i,j) = 0.5;
                    C(i,j) = 0.5;
                    C(i,j+1) = 0.5;
                    C(i,j+2) = 0.5;
                    C(i+1,j+2) = 0.5;
                    pause(0.5)
                    subplot(2,1,1);
                    another = another + 1;
                    pcolor(B)       
                    strings = ['L shapes Count for point(',num2str(i),',',num2str(j),') = ',num2str(another)];
                    title(strings)
                    subplot(2,1,2);
                    pcolor(C)
                    B=X;
                    C=X;
                end
            catch
            end
            try
                if (X(i+1,j) == 0 && X(i+2,j) == 0 && X(i+2,j-1) == 0)
                    sx = ['(',num2str(i),',',num2str(j),')'];
                    if (count == 0)
                        disp(sx)
                        count = 1;
                    end
                    B(i,j) = 0.5;
                    C(i,j) = 0.5;
                    C(i+1,j) = 0.5;
                    C(i+2,j) = 0.5;
                    C(i+2,j-1) = 0.5;
                    pause(0.5)
                    subplot(2,1,1);
                    another = another + 1;    
                    pcolor(B)          
                    strings = ['L shapes Count for point(',num2str(i),',',num2str(j),') = ',num2str(another)]; 
                    title(strings)
                    subplot(2,1,2);
                    pcolor(C)
                    B=X;
                    C=X;
                end
            catch
            end
            try
                if (X(i,j-1) == 0 && X(i+1,j-1) == 0 && X(i+2,j-1) == 0)
                    sx = ['(',num2str(i),',',num2str(j),')'];
                    if (count == 0)
                        disp(sx)
                        count = 1;
                    end
                    B(i,j) = 0.5;
                    C(i,j) = 0.5;
                    C(i,j-1) = 0.5;
                    C(i+1,j-1) = 0.5;
                    C(i+2,j-1) = 0.5;
                    pause(0.5)
                    subplot(2,1,1);
                    another = another + 1; 
                    pcolor(B)    
                    strings = ['L shapes Count for point(',num2str(i),',',num2str(j),') = ',num2str(another)]; 
                    title(strings)
                    subplot(2,1,2);
                    pcolor(C)
                    B=X;
                    C=X;
                end
            catch
            end
            try
                if (X(i,j-1) == 0 && X(i,j-2) == 0 && X(i+1,j-2) == 0)
                    sx = ['(',num2str(i),',',num2str(j),')'];
                    if (count == 0)
                        disp(sx)
                        count = 1;
                    end
                    B(i,j) = 0.5;
                    C(i,j) = 0.5;
                    C(i,j-1) = 0.5;
                    C(i,j-2) = 0.5;
                    C(i+1,j-2) = 0.5;
                    pause(0.5)
                    subplot(2,1,1);
                    another = another + 1;  
                    pcolor(B)         
                    strings = ['L shapes Count for point(',num2str(i),',',num2str(j),') = ',num2str(another)];
                    title(strings)
                    subplot(2,1,2);
                    pcolor(C)
                    B=X;
                    C=X;
                end
            catch
            end
            try
                if (X(i+1,j) == 0 && X(i+1,j-1) == 0 && X(i+1,j-2) == 0)
                    sx = ['(',num2str(i),',',num2str(j),')'];
                    if (count == 0)
                        disp(sx)
                        count = 1;
                    end
                    B(i,j) = 0.5;
                    C(i,j) = 0.5;
                    C(i+1,j) = 0.5;
                    C(i+1,j-1) = 0.5;
                    C(i+1,j-2) = 0.5;
                    pause(0.5)
                    subplot(2,1,1);
                    another = another + 1;    
                    pcolor(B)            
                    strings = ['L shapes Count for point(',num2str(i),',',num2str(j),') = ',num2str(another)];
                    title(strings)
                    subplot(2,1,2);
                    pcolor(C)
                    B=X;
                    C=X;
                end
            catch
            end
        end
    end
end
end












