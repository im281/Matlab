%% Program which can calculate inverse of a given matrix by

%% by Gauss Elimination Method using complete pivot.

M = [1 2 13;3 24 5;25 65 7]; % Given matrix whose inverse is to be found
A = M;
Ni = length(A(1,:)); % number of rows of given matrix
Nj =length(A(:,1));

if abs(det(A))<0.00000000001

    fprintf('The matrix determinant is zero, the result found may not be correct');

end
px =1:Ni;
qy =1:Ni;

%%main loop; find pivot entry in columns qy[k], qy[k+1], ...,qy[n-1]
%% and in rows px[k], px[k+1],.....px[n-1]
for k = 1: Ni-1
    pct = k; qdt = k;
    aet =0;
    for i=k:Ni
        for j=k:Ni
            tmp = abs(A(uint8(px(i)),uint8 (qy(j))));
            if (tmp>aet)
                aet = tmp;  pct = i;qdt = j;
            end
        end
    end
    if ~aet
        fprintf('pivot is zero, No inverse possible \n');
    end

    % Swap the rows and columns to get highest number in the diagonal
    px([k pct]) = px([pct k]);%//swap px[k] and px[pct]

    qy([k qdt]) = qy([qdt k]) ;
    %% eliminate column entries (make them zero) logically below and right to the entry mx[px[k]][qy[k]]

    for i=k+1:Ni
        if A(px(i),qy(k)) ~= 0  % if the entry is not equal to zero
            mult = A(px(i),qy(k))/A(px(k),qy(k)); % get the multiplying factor
            A(px(i),qy(k))= mult;
            for j=k+1:Ni
                A(px(i),qy(j)) = A(px(i),qy(j)) - mult*A(px(k),qy(j)); % entry will become zero
            end
        end
    end
end

AI = eye(size(A));  %% Identiy Matrix

%%forward substitution
for k=1:Ni
    for i =2:Ni
        for j =1:i-1
            AI(px(i),k) = AI(px(i),k) - A(px(i),qy(j))*AI(px(j),k);
        end
    end
end

InMat = zeros(Ni,Nj); %InMat will be the required inverse after back substitution.

%% backward substitution
for k=1:Ni
    for i = Ni:-1:1
        for j = i+1:Ni
            AI(px(i),k) = AI(px(i),k) - A(px(i),qy(j))* InMat(qy(j),k);
        end
        InMat(qy(i),k) = AI(px(i),k) / A(px(i),qy(i));
    end
end

%% wee can also find error of our result by subtracting the identity matrix

%% from the product of given matrix (M) and our result (InMat)
I = eye(Ni,Nj);
error = InMat*M - I;

%% output of the results

fprintf('The given matrix is \n\n');

fprintf(' %f %f %f \n',M);

fprintf('The inverse of the matrix is \n\n');

fprintf(' %f  %f  %f \n',InMat);

fprintf('The error in the calculate of the invese of matrix is \n\n');

fprintf('\n %f  %f  %f \n',error);
