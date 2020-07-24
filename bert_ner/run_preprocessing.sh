export MAX_LENGTH=128
export BERT_MODEL=bert-base-multilingual-cased
python preprocess.py data/raw6/train.txt $BERT_MODEL $MAX_LENGTH > data/preprocessed6/train.txt
python preprocess.py data/raw6/dev.txt $BERT_MODEL $MAX_LENGTH > data/preprocessed6/dev.txt
python preprocess.py data/raw6/test.txt $BERT_MODEL $MAX_LENGTH > data/preprocessed6/test.txt
cat data/raw6/train.txt data/raw6/dev.txt data/raw6/test.txt | cut -d " " -f 2 | grep -v "^$" | sort -u > data/preprocessed6/labels.txt
