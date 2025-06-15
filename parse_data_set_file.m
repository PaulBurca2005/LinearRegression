function [Y, InitialMatrix] = parse_data_set_file(file_path)
  f=fopen(file_path,"r");
  n= fscanf(f,'%d',1);
  m=fscanf(f,'%d',1);
  line=fgetl(f);
  Y=zeros(n,1);
  InitialMatrix = cell(n, m);
  for i=1:n
    %citim linie cu linie:
    line=fgetl(f);
    aux=strsplit(line);
    %convertim celulele in numnere pentru a le pune in Y:
    Y(i, 1)=str2num(aux{1});
    for j=2:m+1
      InitialMatrix{i, j-1}=aux{j};
    end
  end
end
