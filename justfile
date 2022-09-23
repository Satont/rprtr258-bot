# generates: [dataset]
get_chat_logs:
  python3 dump.py >> tmp
  cat dataset tmp | sort -u > tmp_dataset
  mv tmp_dataset dataset
  rm tmp

# sources: [dataset]
# generates: [model.json]
train: get_chat_logs
  python quotes_generator/main.py train --dataset dataset --model model.json
