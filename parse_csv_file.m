function [Y, InitialMatrix] = parse_csv_file(file_path)
  f=fopen(file_path,"r");
  line=fgetl(f);
  aux=strsplit(line, ',');
  m= length(aux);
  i=1;
  %citim linie cu linie:
  while ischar(line=fgetl(f))
    %impartim linia cu , fiind separator:
    aux=strsplit(line, ',');
    %convertim celulele in numnere pentru a le pune in Y:
    Y(i, 1)=str2num(aux{1});
    for j=2:m
      InitialMatrix{i, j-1}=aux{j};
    end
    i=i+1;
  end
end
