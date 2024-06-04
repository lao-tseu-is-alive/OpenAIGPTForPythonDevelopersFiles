import os
from openai import OpenAI
DEBUG = os.getenv("DEBUG", "false")
# get environment variables for the organization and project
organization = os.getenv("OPENAI_ORGANIZATION")
project = os.getenv("OPENAI_PROJECT_ID")
model = os.getenv("OPENAI_MODEL", "gpt-3.5-turbo-1106")
# check if the organization and project are set
print(f"Organization: {organization}, Project: {project}")
# create a client
client = OpenAI(organization=organization, project=project)
# get the completion
completion = client.chat.completions.create(
    model=model,
    messages=[
        {"role": "system", "content": "You are a helpful programming assistant."},
        {"role": "user", "content": "What is the purpose of recursion ?"},
    ]
)
# print the completion
if DEBUG == "true":
    print(repr(completion))

print(completion.choices[0].message.content)
