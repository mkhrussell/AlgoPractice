##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=LinkedListStackImpl
ConfigurationName      :=Debug
WorkspacePath          := "C:\Users\mkhrussell\Documents\Visual Studio 2015\Projects\AlgoPractice"
ProjectPath            := "C:\Users\mkhrussell\Documents\Visual Studio 2015\Projects\AlgoPractice\LinkedListStackImpl"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=mkhrussell
Date                   :=02/03/2016
CodeLitePath           :="C:\Program Files\CodeLite"
LinkerName             :=C:/LLVM/bin/clang++.exe
SharedObjectLinkerName :=C:/LLVM/bin/clang++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="LinkedListStackImpl.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=C:/TDM-GCC-64/bin/windres.exe
LinkOptions            :=  
IncludePath            := $(IncludeSwitch)C:/TDM-GCC-64/lib/gcc/x86_64-w64-mingw32/5.1.0/include/c++ $(IncludeSwitch)C:/TDM-GCC-64/lib/gcc/x86_64-w64-mingw32/5.1.0/include/c++/x86_64-w64-mingw32 $(IncludeSwitch)C:/TDM-GCC-64/lib/gcc/x86_64-w64-mingw32/5.1.0/include/c++/backward $(IncludeSwitch)C:/TDM-GCC-64/lib/gcc/x86_64-w64-mingw32/5.1.0/include $(IncludeSwitch)C:/TDM-GCC-64/include $(IncludeSwitch)C:/TDM-GCC-64/lib/gcc/x86_64-w64-mingw32/5.1.0/include-fixed $(IncludeSwitch)C:/TDM-GCC-64/x86_64-w64-mingw32/include  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/LLVM/bin/llvm-ar.exe rcu
CXX      := C:/LLVM/bin/clang++.exe
CC       := C:/LLVM/bin/clang.exe
CXXFLAGS :=  -g -O0 -pedantic -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -pedantic -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/LLVM/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
Objects0=$(IntermediateDirectory)/LinkedListStackImpl.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/LinkedListStackImpl.c$(ObjectSuffix): LinkedListStackImpl.c $(IntermediateDirectory)/LinkedListStackImpl.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/mkhrussell/Documents/Visual Studio 2015/Projects/AlgoPractice/LinkedListStackImpl/LinkedListStackImpl.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/LinkedListStackImpl.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/LinkedListStackImpl.c$(DependSuffix): LinkedListStackImpl.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/LinkedListStackImpl.c$(ObjectSuffix) -MF$(IntermediateDirectory)/LinkedListStackImpl.c$(DependSuffix) -MM "LinkedListStackImpl.c"

$(IntermediateDirectory)/LinkedListStackImpl.c$(PreprocessSuffix): LinkedListStackImpl.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/LinkedListStackImpl.c$(PreprocessSuffix) "LinkedListStackImpl.c"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


