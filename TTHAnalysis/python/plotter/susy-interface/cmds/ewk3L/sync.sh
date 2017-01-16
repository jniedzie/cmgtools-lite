#!/bin/bash

#T="/mnt/t3nfs01/data01/shome/cheidegg/o/2015-11-29_ewkskims80X_M17_MERGED/"
T="/mnt/t3nfs01/data01/shome/cheidegg/o/testNewWorkflow"
#T="/mnt/t3nfs01/data01/shome/cheidegg/o/2016-11-28_syncWithWillem/"
O="/afs/cern.ch/user/c/cheidegg/www/heppy/2017-01-12_ewk80X_sync"
F="--accept ZZ -q all.q --direct --nosplit" #"-F" 
QUEUE="" #"-q all.q"

## friends
#python susy-interface/friendmaker.py 3l 3lA $T $T --bk --log $F --modules leptonJetReCleanerSusyEWK3L
#python susy-interface/friendmaker.py 3l 3lA $T $T --bk --log $F --modules leptonBuilderEWK
#python susy-interface/friendmaker.py 3l 3lA $T $T --bk --log $F --modules eventBTagWeight

## dumps
#python susy-interface/dumpmaker.py 3l 3lA $T $O -p TTWsync --flags '-X blinding ' $QUEUE
#python susy-interface/dumpmaker.py 3l 3lA $T $O -p WZsync --flags '-X blinding ' $QUEUE
#python susy-interface/dumpmaker.py 3l 3lF $T $O -p TTWsync --flags '-X blinding ' $QUEUE
#python susy-interface/dumpmaker.py 3l 3lE $T $O -p WZsync --flags '-X blinding ' $QUEUE
#python susy-interface/dumpmaker.py 3l 4lG $T $O -p ZZsync --flags '-X blinding ' $QUEUE
python susy-interface/dumpmaker.py 3l 3lA $T $O -p dataDE --flags '-X blinding ' $QUEUE
python susy-interface/dumpmaker.py 3l 3lE $T $O -p dataDE --flags '-X blinding ' $QUEUE
python susy-interface/dumpmaker.py 3l 4lG $T $O -p dataDE --flags '-X blinding ' $QUEUE
#python susy-interface/dumpmaker.py 3l 4lG $T $O -p dataDMsync --flags '-R blinding onlyG "run>=278820 && run<=279931" ' --mca susy-ewkino/3l/mca_ewkino_merged.txt $QUEUE
#python susy-interface/dumpmaker.py 3l 4lG $T $O -p dataDEsync --flags '-R blinding onlyG "run>=278820 && run<=279931" ' --mca susy-ewkino/3l/mca_ewkino_merged.txt $QUEUE
