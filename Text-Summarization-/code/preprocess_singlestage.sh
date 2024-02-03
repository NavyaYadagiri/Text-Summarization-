# Generating data for single stage training
DATAFILES=("/content/drive/MyDrive/CapstoneProject/medical_conversation_summarization-main/data/dev.jsonl" 
           "/content/drive/MyDrive/CapstoneProject/medical_conversation_summarization-main/data/test.jsonl" 
           "/content/drive/MyDrive/CapstoneProject/medical_conversation_summarization-main/data/train.jsonl") 
# change this to match the path to data files
EXP="data"  # change this to a name of your choice, .source|.target|.meta|.hypo|.log will be saved here

for DATAFILE in ${DATAFILES[@]};
do
    echo $DATAFILE
    python preprocessing/generate_data.py \
        --mode "plain" \
        --file $DATAFILE \
        --exp $EXP
done
