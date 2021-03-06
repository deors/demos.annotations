@echo off
set BASE_ROOT=..\deors-demos-annotations-velocity
set PROC_ROOT=..\deors-demos-annotations-velocity-processors
set OPT=-XprintProcessorInfo -XprintRounds
set CP=%BASE_ROOT%\target\deors-demos-annotations-velocity-1.0-SNAPSHOT.jar
rem set CP=%CP%;%HOME%\.m2\repository\javax\persistence\persistence-api\1.0\persistence-api-1.0.jar
set PRP=%CP%;%PROC_ROOT%\target\deors-demos-annotations-velocity-processors-1.0-SNAPSHOT.jar
set PRP=%PRP%;%HOME%\.m2\repository\org\apache\velocity\velocity\1.6.4\velocity-1.6.4.jar
set PRP=%PRP%;%HOME%\.m2\repository\commons-collections\commons-collections\3.2.1\commons-collections-3.2.1.jar
set PRP=%PRP%;%HOME%\.m2\repository\commons-lang\commons-lang\2.4\commons-lang-2.4.jar
set PRP=%PRP%;%HOME%\.m2\repository\org\apache\velocity\velocity-tools\2.0\velocity-tools-2.0.jar
set SRC=src\main\java\deors\demos\annotations\velocity\client\Article.java
set GEN_SRC=target\generated-sources\annotations
set GEN_CLS=target\classes
mkdir %GEN_SRC%
mkdir %GEN_CLS%
javac %OPT% -classpath %CP% -processorpath %PRP% %SRC% -s %GEN_SRC% -d %GEN_CLS%
