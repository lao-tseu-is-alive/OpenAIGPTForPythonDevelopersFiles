import torch
from transformers import pipeline, GPT2LMHeadModel, GPT2Tokenizer

# Check if CUDA is available
print(f"cuda available :{torch.cuda.is_available()}")
device = 'cuda' if torch.cuda.is_available() else 'cpu'
model = GPT2LMHeadModel.from_pretrained('gpt2').to(device)
tokenizer = GPT2Tokenizer.from_pretrained('gpt2')
generator = pipeline(
    'text-generation',
    model=model,
    tokenizer=tokenizer,
)
responses = generator(
    "Hello, I'm a language model",
    max_length=30,
    truncation=True,
    num_return_sequences=3
)
for res in responses:
    print(res)
