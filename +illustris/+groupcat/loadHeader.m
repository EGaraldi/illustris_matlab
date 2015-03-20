function [header] = loadHeader(basePath, snapNum, chunkNum)
  % LOADHEADER  Load the group catalog header.
  if ~exist('chunkNum','var')
    chunkNum = 0;
  end
  
  filePath = illustris.groupcat.gcPath(basePath,snapNum);
  header = illustris.hdf5_all_attrs(filePath, 'Header');
end
