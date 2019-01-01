# patch-delivery
A generic framework for code compilation , patching and validate patch through module test cases implemented through vim script.


During course of development “Develop-patch-test” tasks are performed individually by a developer. 
Current framework to simplify and coordinate these tasks.

A vim plugin can be written to perform “Develop-patch-test” tasks with the intent never leave the
editor until your patch is successful.

Develop

 

The following commands can be used in whatever directory you are to generate the final rpm.

      build         "make rpm"
      release_build "make release_rpm"
      clean         "make clean"
      clean_all     "make clean all"

We can set target machines and based on that current compilation mode will be set. 
The frame must deduce the compilation type for the current subsystem based on the target machine.

  :set target BCN-124

The above command will set the current compilation mode of the subsystem to mips. 
It should able to extract the current builds available in the target machine and show error if current build 
type of the subsystem is not supported. The framework should able to remember the credentials given by the user at the beginning.
 

Patch

      :patch <target-machine-name>
      
Generated rpms will be will transferred to target machine in specific path (default path is /mnt/backup can be changed 
through other commands) and patch through configured command.

Test

      :test

 

There will be a file maintained in each subsystem consisting of test cases need to be executed for any changes. T
he target taf machine can be set by the user. Mail will be sent when regression is initiated with the diff file attached, 
so that user will know for what changes the job is initiated.
 

Through the gcov integration we can check whether code changed executed as part of the testcases.
