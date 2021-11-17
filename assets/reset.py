f = open("assets/save.txt", "rb")
t = open("p.jpg", "wb")
t.write(f.read())
