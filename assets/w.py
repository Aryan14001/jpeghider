user = input("Enter text:").encode()
with open('p.jpg', 'ab') as f:
  f.write(user) 