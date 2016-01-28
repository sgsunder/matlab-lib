function touch(filename)
fclose(fopen(cat(2,cat(2,pwd,'/'),filename), 'w'));
end