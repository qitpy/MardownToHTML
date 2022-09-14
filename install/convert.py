import markdown
import os

with open('../src/main.md', 'r') as f:
    text = f.read()
    html = markdown.markdown(text) 

try:
    os.mkdir("../build")
except:
    print("cant create build folder: Access denied || folder existed")

with open('../build/index.html', 'w') as f:
    f.write(html)