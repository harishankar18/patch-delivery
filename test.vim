"The following script is used for the automating the
"following tasks.
"
" Develop
"
"The following commands can be used in whatever directory you are to generate the final rpm.
"
"      build         'make rpm'
"      release_build 'make release_rpm'
"      clean         'make clean'
"      clean_all     'make clean all'
"
"We can set target machines and based on that current compilation mode will be set. 
"The frame must deduce the compilation type for the current subsystem based on the target machine.
" There can be different variants available based on the SLN and NLN type available in the system.
"
"      :set target <target-machine>
"
"The above command will set the current compilation mode of the subsystem to mips. It should able to extract the
" current builds available in the target machine and show error if current build type of the subsystem is not supported.
" The framework should able to remember the credentials given by the user at the beginning.
" 
"
"Patch
"
"      :patch
" 
"
"Generated rpms will be will transferred to target machine in specific path (default path is /mnt/backup can 
"be changed through other commands) and patch through “fsswcli” command. Validation will be existing to any specific 
"machine can be used by a one specific user at a time. We can also validate whether after patching the application is
" running correctly or not.
"
" 
"
"Test
"
"      :test
"
"There will be a file maintained in each subsystem consisting of test cases need to be executed for any changes. 
"The target taf machine can be set by the user. Mail will be sent when regression is initiated with the diff file 
"attached, so that user will know for what changes the job is initiated.
" 
"
"Through the gcov integration we can check whether code changed executed as part of the testcases.

" This function is used for invoking the
" building the rpm
"
function Build_rpm()
  echom "rpm building is initiated"
  make release_rpm
endfunction

" This function is used for invoking the
" cleaning all the rpms
function Clean_rpm()
  echom "rpm building is initiated"
  make clean_all
endfunction
