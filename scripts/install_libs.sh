#!/bin/bash
echo " install_libs.sh will install all the required libraries for the project"
pip install openai
pip install torch
pip install transformers
# check if the installation is successful
echo "checking the transformers installation..."
echo "more info : https://huggingface.co/docs/transformers/en/installation"
python -c "import openai; print(openai.__version__)"
python -c "from transformers import pipeline; print(pipeline('sentiment-analysis')('we love you'))"
python -c "import torch; print(torch.__version__)"