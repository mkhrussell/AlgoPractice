##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=SimpleStackImpl
ConfigurationName      :=Debug
WorkspacePath          := "C:\Users\mkhrussell\Documents\Visual Studio 2015\Projects\AlgoPractice"
ProjectPath            := "C:\Users\mkhrussell\Documents\Visual Studio 2015\Projects\AlgoPractice\SimpleStackImpl"
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
ObjectsFileList        :="SimpleStackImpl.txt"
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
CXXFLAGS :=  -g -O0 -std=c++14 -std=c++11 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/LLVM/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
Objects0=$(IntermediateDirectory)/SimpleStackImpl.cpp$(ObjectSuffix) 



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
$(IntermediateDirectory)/SimpleStackImpl.cpp$(ObjectSuffix): SimpleStackImpl.cpp $(IntermediateDirectory)/SimpleStackImpl.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/mkhrussell/Documents/Visual Studio 2015/Projects/AlgoPractice/SimpleStackImpl/SimpleStackImpl.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/SimpleStackImpl.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/SimpleStackImpl.cpp$(DependSuffix): SimpleStackImpl.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/SimpleStackImpl.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/SimpleStackImpl.cpp$(DependSuffix) -MM "SimpleStackImpl.cpp"

$(IntermediateDirectory)/SimpleStackImpl.cpp$(PreprocessSuffix): SimpleStackImpl.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/SimpleStackImpl.cpp$(PreprocessSuffix) "SimpleStackImpl.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/

