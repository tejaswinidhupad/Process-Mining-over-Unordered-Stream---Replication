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

: 
# Buffered Unaware 10 50 90% comparison with buffering baseline 60
for ((i = 10 ; i <=90 ; i+=40)); do
  echo     $FLINK $GRAPHACCURRACYCOMPARATOR $JAR --baseGraphPath $GRAPHPATH --oooGraphPath $GRAPHPATH --baseGraphFile "baselines.csv-GlobalDFG-Window-Length60.txt" --oooGraphFile "s${i}.csv-GlobalDFG-OOOUnaware-Window-Length60.txt" 
    $FLINK $GRAPHACCURRACYCOMPARATOR $JAR --baseGraphPath $GRAPHPATH --oooGraphPath $GRAPHPATH --baseGraphFile "baselines.csv-GlobalDFG-Window-Length60.txt" --oooGraphFile "s${i}.csv-GlobalDFG-OOOUnaware-Window-Length60.txt"
done 

# Buffered  10 50 90% comparison with buffering baseline 60
for ((i = 10 ; i <=90 ; i+=40)); do
  echo     $FLINK $GRAPHACCURRACYCOMPARATOR $JAR --baseGraphPath $GRAPHPATH --oooGraphPath $GRAPHPATH --baseGraphFile "baselines.csv-GlobalDFG-Window-Length60.txt" --oooGraphFile "s${i}.csv-GlobalDFG-Window-Length60.txt" 
    $FLINK $GRAPHACCURRACYCOMPARATOR $JAR --baseGraphPath $GRAPHPATH --oooGraphPath $GRAPHPATH --baseGraphFile "baselines.csv-GlobalDFG-Window-Length60.txt" --oooGraphFile "s${i}.csv-GlobalDFG-Window-Length60.txt"
done 

# Speculative Unaware 10 50 90% comparison with specualtive baseline 
for ((i = 10 ; i <=90 ; i+=40)); do
  echo     $FLINK $GRAPHACCURRACYCOMPARATOR $JAR --baseGraphPath $GRAPHPATH --oooGraphPath $GRAPHPATH --baseGraphFile "baselines.csv-GlobalDFG-Speculative.txt" --oooGraphFile "s${i}.csv-GlobalDFG-OOOUnaware.txt"
    $FLINK $GRAPHACCURRACYCOMPARATOR $JAR --baseGraphPath $GRAPHPATH --oooGraphPath $GRAPHPATH --baseGraphFile "baselines.csv-GlobalDFG-Speculative.txt" --oooGraphFile "s${i}.csv-GlobalDFG-OOOUnaware.txt"
done 

# Specualtive  10 50 90% comparison with specualtive baseline 
for ((i = 10 ; i <=90 ; i+=40)); do
  echo $FLINK $GRAPHACCURRACYCOMPARATOR $JAR --baseGraphPath $GRAPHPATH --oooGraphPath $GRAPHPATH --baseGraphFile "baselines.csv-GlobalDFG-Speculative.txt" --oooGraphFile "s${i}.csv-GlobalDFG-Speculative.txt"
  $FLINK $GRAPHACCURRACYCOMPARATOR $JAR --baseGraphPath $GRAPHPATH --oooGraphPath $GRAPHPATH --baseGraphFile "baselines.csv-GlobalDFG-Speculative.txt" --oooGraphFile "s${i}.csv-GlobalDFG-Speculative.txt"
done 

: 