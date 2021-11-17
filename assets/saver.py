f = open("assets/p.jpg", "rb")
t = open("save.txt", "wb")
t.write(f.read())
