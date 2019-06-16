
% function F = normalize_F(F, type)
%
% Normalize rows of F using type which can be:
%  1   - use 1-norm [default]
%  2   - use 2-norm

%
function F = normalize_factor(F, type)

if nargin < 2
    type = 0;
end

switch type
    case 1
        for i = 1:size(F,2)
            F(:,i) = F(:,i) ./ norm(F(:,i),1);
        end

    case 2
        for i = 1:size(F,2)
            F(:,i) = F(:,i) ./ norm(F(:,i),2);
        end

end

