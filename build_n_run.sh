#! /usr/bin/bash
rm -r target | echo "No target directory found"
mvn compile

#Enable the required command for executing a particular flow
#Command for converting the XES file to CSV file
#mvn exec:java -Dexec.mainClass="ee.ut.cs.dsg.miner.example.source.XESToCSVConverter"

#Command for executing the Buffered & Speculative OOO runner
#mvn exec:java -Dexec.mainClass="ee.ut.cs.dsg.miner.example.pipeline.BufferedOOOUnawareRunner" -Dexec.args="-source file -windowSize 1 -fileName DATA1.csv -filePath 'D:\\TUe\\Q2\\Seminar Process Analytics\\Reproduce Experimental Results\\Process-Discovery-over-unordered-streams-master\\data'"
#mvn exec:java -Dexec.mainClass="ee.ut.cs.dsg.miner.example.pipeline.SpeculativeOutOfOrderRunner" -Dexec.args="-source file -windowSize 1 -numRecordsToEmit 20 -interArrivalTime 10 -fileName DATA1.csv -filePath 'D:\\TUe\\Q2\\Seminar Process Analytics\\Reproduce Experimental Results\\Process-Discovery-over-unordered-streams-master\\data'"
#mvn exec:java -Dexec.mainClass="ee.ut.cs.dsg.miner.example.pipeline.BufferedOutOfOrderRunner" -Dexec.args="-source file -windowSize 20 -numRecordsToEmit 20 -interArrivalTime 10 -fileName DATA1.csv -filePath 'D:\\TUe\\Q2\\Seminar Process Analytics\\Reproduce Experimental Results\\Process-Discovery-over-unordered-streams-master\\data'"

#Command for executing the Graph Accuracy Comparator
#mvn exec:java -Dexec.mainClass="ee.ut.cs.dsg.miner.example.pipeline.GraphAccurracyComparator" -Dexec.args="-baseGraphPath 'D:\\TUe\\Q2\\Seminar Process Analytics\\Reproduce Experimental Results\\Process-Discovery-over-unordered-streams-master\\' -baseGraphFile DATA1.csv-GlobalDFG-OOOUnaware-Window-Length20.txt -oooGraphPath 'D:\\TUe\\Q2\\Seminar Process Analytics\\Reproduce Experimental Results\\Process-Discovery-over-unordered-streams-master\\' -oooGraphFile DATA1.csv-GlobalDFG-Speculative.txt"
#mvn exec:java -Dexec.mainClass="ee.ut.cs.dsg.miner.example.pipeline.GraphAccurracyComparator" -Dexec.args="-baseGraphPath 'D:\\TUe\\Q2\\Seminar Process Analytics\\Reproduce Experimental Results\\Process-Discovery-over-unordered-streams-master\\' -baseGraphFile DATA1.csv-GlobalDFG-OOOUnaware-Window-Length10.txt -oooGraphPath 'D:\\TUe\\Q2\\Seminar Process Analytics\\Reproduce Experimental Results\\Process-Discovery-over-unordered-streams-master\\' -oooGraphFile DATA1.csv-GlobalDFG-Speculative.txt"


