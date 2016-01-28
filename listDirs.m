function [ dirs ] = listDirs( parentDir )
%LISTDIRS List the subdirectories of a specified parent directory. Does not act recursively.
%   Input  = String describing parent directory (absolute or relative)
%   Output = Cell Vector of sub directory (absolute paths)

unixCommand  = sprintf('ls -1d %s/*/', parentDir);
[~,lsReturn] = system(unixCommand);
dirs         = textscan(lsReturn, '%s', 'Delimiter', '\n');
dirs         = dirs{1};

end

