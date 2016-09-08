# PPT text detector keras
This is a standalone repository containing a keras based text detector for English/Arabic power point images. 
Author: Yue Wu ( yue_wu@isi.edu )

## This repository contains the following modules :
    *dataset: testing data for sanity check and demo purposes
    *model: keras model
    *demo_output: output of demo
    *test.sh : testing script
    *keras_ppt_text_detector.py : decoding script 

## Python Dependencies:
    *theano
    *keras v1.0.3
    *scipy, numpy, cv2
    
## Usage:
```
usage: keras_ppt_text_detector.py    [-h] [-f INPUT_FILE] [-l INPUT_FLIST]
                                     [-w WEIGHTS] [-px PAD_X] [-py PAD_Y]
                                     [-o OUTPUT_BBOX_FILE]
                                     [-d VISUALIZATION_DIR] [-tp PROBA_THRESH]
                                     [-tw WIDTH_THRESH] [-th HEIGHT_THRESH]
                                     [-no_resize] [-verbose]
                                     [--mode {ppt,word,pdf}] [--version]

Keras PPT (Arabic/English) Text Detector

optional arguments:
  -h, --help            show this help message and exit
  -f INPUT_FILE         input test image file path
  -l INPUT_FLIST        input test image file list, each line is a file
  -w WEIGHTS            Keras model weights
  -px PAD_X             pad nb_pixels along x axis for a bbox
  -py PAD_Y             pad nb_pixels along y axis for a bbox
  -o OUTPUT_BBOX_FILE   output detected bbox file
  -d VISUALIZATION_DIR  output visualization dir for debugging
  -tp PROBA_THRESH      threshold for text region probability
  -tw WIDTH_THRESH      threshold for text region width
  -th HEIGHT_THRESH     threshold for text region height
  -no_resize            decoding without resize
  -verbose              verbose decoding
  --mode {ppt,word,pdf}
                        decoder working mode with preset params
  --version             show program's version number and exit
```
