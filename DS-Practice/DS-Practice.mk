##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=DS-Practice
ConfigurationName      :=Debug
WorkspacePath          := "D:\Programming\AlgoPractice"
ProjectPath            := "D:\Programming\AlgoPractice\DS-Practice"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=kamrul.hasan
Date                   :=10/05/2016
CodeLitePath           :="C:\Program Files\CodeLite"
LinkerName             :=C:/TDM-GCC-64/bin/g++.exe
SharedObjectLinkerName :=C:/TDM-GCC-64/bin/g++.exe -shared -fPIC
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
ObjectsFileList        :="DS-Practice.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=C:/TDM-GCC-64/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/TDM-GCC-64/bin/ar.exe rcu
CXX      := C:/TDM-GCC-64/bin/g++.exe
CC       := C:/TDM-GCC-64/bin/gcc.exe
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/TDM-GCC-64/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
Objects0=$(IntermediateDirectory)/DFS-AjdMatrix.cpp$(ObjectSuffix) $(IntermediateDirectory)/DS-Main.cpp$(ObjectSuffix) 



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
$(IntermediateDirectory)/DFS-AjdMatrix.cpp$(ObjectSuffix): DFS-AjdMatrix.cpp $(IntermediateDirectory)/DFS-AjdMatrix.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/AlgoPractice/DS-Practice/DFS-AjdMatrix.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/DFS-AjdMatrix.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/DFS-AjdMatrix.cpp$(DependSuffix): DFS-AjdMatrix.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/DFS-AjdMatrix.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/DFS-AjdMatrix.cpp$(DependSuffix) -MM "DFS-AjdMatrix.cpp"

$(IntermediateDirectory)/DFS-AjdMatrix.cpp$(PreprocessSuffix): DFS-AjdMatrix.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/DFS-AjdMatrix.cpp$(PreprocessSuffix) "DFS-AjdMatrix.cpp"

$(IntermediateDirectory)/DS-Main.cpp$(ObjectSuffix): DS-Main.cpp $(IntermediateDirectory)/DS-Main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/AlgoPractice/DS-Practice/DS-Main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/DS-Main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/DS-Main.cpp$(DependSuffix): DS-Main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/DS-Main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/DS-Main.cpp$(DependSuffix) -MM "DS-Main.cpp"

$(IntermediateDirectory)/DS-Main.cpp$(PreprocessSuffix): DS-Main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/DS-Main.cpp$(PreprocessSuffix) "DS-Main.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


