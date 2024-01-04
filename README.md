## Bash Execution  
=> We first define the directory where we would like our backed up tarfile to be stored  
=> We check if the directory exists or not and make one if it doesnot  
=> We take the first argument and store it into directory_to_backup variable  
=> We check if the directory we want to backup doesnot exist, we exit with code 1  
=> We create our time stamp to be concatenated to tarfile  
=> We create tar_file variable with backupdirectory, filtered out backup directory name and concatenate with timestamp  
=> We create tarfile and store into the backup directory  
=> We finally check for the exit code and if the exit code was 0 we echo success or else we echo failed.
