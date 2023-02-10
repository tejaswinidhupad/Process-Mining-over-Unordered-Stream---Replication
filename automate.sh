#! /usr/bin/bash
#Edit your the parameters with the corresponding path
FLINK="\\home\\tejaswinidhupad\\flink\\flink-1.12.1\\bin\\flink run -c"
BUFFEREDOUTOFORDERRUNNER="ee.ut.cs.dsg.miner.example.pipeline.BufferedOutOfOrderRunner"
BUFFEREDOOOUNAWARERUNNER="ee.ut.cs.dsg.miner.example.pipeline.BufferedOOOUnawareRunner"
GRAPHACCURRACYCOMPARATOR="ee.ut.cs.dsg.miner.example.pipeline.GraphAccurracyComparator"
OOOUNAWARERUNNER="ee.ut.cs.dsg.miner.example.pipeline.OOOUnawareRunner"
SPECULATIVEOUTOFORDERRUNNER="ee.ut.cs.dsg.miner.example.pipeline.SpeculativeOutOfOrderRunner"
JAR="D:\\TUe\\Q2\\Seminar Process Analytics\\Reproduce Experimental Results\\Process-Discovery-over-unordered-streams-master\\target\\UnorderedStreamProcessing-1.0-SNAPSHOT.jar"
FILEPATH="D:\\TUe\\Q2\\Seminar Process Analytics\\Reproduce Experimental Results\\Process-Discovery-over-unordered-streams-master\\target\\resources\\simulated\\"
GRAPHPATH="D:\\TUe\\Q2\\Seminar Process Analytics\\Reproduce Experimental Results\\Process-Discovery-over-unordered-streams-master\\out"
  
for ((j = 10 ; j <= 60 ; j+=10)); do
  for ((i = 10 ; i < 100 ; i+=10)); do
    echo $FLINK $BUFFEREDOUTOFORDERRUNNER $JAR --source file --filePath $FILEPATH --fileName "1_ooo_${i}_3_10.csv" --windowSize $j  --interArrivalTime 1 
    $FLINK $BUFFEREDOUTOFORDERRUNNER $JAR --source file --filePath $FILEPATH --fileName "1_ooo_${i}_3_10.csv" --windowSize $j  --interArrivalTime 1 
  done    
done

# baseline for windows 10-60

for ((i = 10 ; i <= 60 ; i+=10)); do
  
  echo $FLINK $BUFFEREDOUTOFORDERRUNNER $JAR --source file --filePath $FILEPATH --fileName "baseline.csv" --windowSize $i  --interArrivalTime 1 
  $FLINK $BUFFEREDOUTOFORDERRUNNER $JAR --source file --filePath $FILEPATH --fileName "baseline.csv" --windowSize $i --interArrivalTime 1 

done 
## Speculative


for ((i = 10 ; i < 100 ; i+=10)); do
  echo $FLINK $SPECULATIVEOUTOFORDERRUNNER $JAR --source file --filePath $FILEPATH --fileName "1_ooo_${i}_3_10.csv" --interArrivalTime 1 
  $FLINK $SPECULATIVEOUTOFORDERRUNNER $JAR --source file --filePath $FILEPATH --fileName "1_ooo_${i}_3_10.csv" --interArrivalTime 1 
done 

# speculative baseline
  echo $FLINK $SPECULATIVEOUTOFORDERRUNNER $JAR --source file --filePath $FILEPATH --fileName "baseline.csv" --interArrivalTime 1 
  $FLINK $SPECULATIVEOUTOFORDERRUNNER $JAR --source file --filePath $FILEPATH --fileName "baseline.csv"  --interArrivalTime 1 
: 