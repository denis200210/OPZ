# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\CLion 2020.2.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\CLion 2020.2.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\79146\CLionProjects\untitled9

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\79146\CLionProjects\untitled9\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\untitled9.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\untitled9.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\untitled9.dir\flags.make

CMakeFiles\untitled9.dir\main.cpp.obj: CMakeFiles\untitled9.dir\flags.make
CMakeFiles\untitled9.dir\main.cpp.obj: ..\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\79146\CLionProjects\untitled9\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/untitled9.dir/main.cpp.obj"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\untitled9.dir\main.cpp.obj /FdCMakeFiles\untitled9.dir\ /FS -c C:\Users\79146\CLionProjects\untitled9\main.cpp
<<

CMakeFiles\untitled9.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/untitled9.dir/main.cpp.i"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\untitled9.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\79146\CLionProjects\untitled9\main.cpp
<<

CMakeFiles\untitled9.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/untitled9.dir/main.cpp.s"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\untitled9.dir\main.cpp.s /c C:\Users\79146\CLionProjects\untitled9\main.cpp
<<

# Object files for target untitled9
untitled9_OBJECTS = \
"CMakeFiles\untitled9.dir\main.cpp.obj"

# External object files for target untitled9
untitled9_EXTERNAL_OBJECTS =

untitled9.exe: CMakeFiles\untitled9.dir\main.cpp.obj
untitled9.exe: CMakeFiles\untitled9.dir\build.make
untitled9.exe: CMakeFiles\untitled9.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\79146\CLionProjects\untitled9\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable untitled9.exe"
	"C:\CLion 2020.2.3\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\untitled9.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x86\mt.exe --manifests  -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\untitled9.dir\objects1.rsp @<<
 /out:untitled9.exe /implib:untitled9.lib /pdb:C:\Users\79146\CLionProjects\untitled9\cmake-build-debug\untitled9.pdb /version:0.0  /machine:X86 /debug /INCREMENTAL /subsystem:console  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\untitled9.dir\build: untitled9.exe

.PHONY : CMakeFiles\untitled9.dir\build

CMakeFiles\untitled9.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\untitled9.dir\cmake_clean.cmake
.PHONY : CMakeFiles\untitled9.dir\clean

CMakeFiles\untitled9.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\79146\CLionProjects\untitled9 C:\Users\79146\CLionProjects\untitled9 C:\Users\79146\CLionProjects\untitled9\cmake-build-debug C:\Users\79146\CLionProjects\untitled9\cmake-build-debug C:\Users\79146\CLionProjects\untitled9\cmake-build-debug\CMakeFiles\untitled9.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\untitled9.dir\depend

