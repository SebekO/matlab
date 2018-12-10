T = "78 72 64 66 49F";
degreeSymbol = char(176);
T = insertBefore(T,'F',degreeSymbol)
A = sscanf(T,strcat("%d",degreeSymbol,"F"))