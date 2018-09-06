import sys

inputFile = open(sys.argv[1])
counter = {}
for line in inputFile:
    splitano = line.split()
    IP = splitano[0]
    prvi, drugi, treci, cetvrti = IP.split(".")
    kljuc = prvi + "." + drugi + ".*.*"
    if splitano[-1] is "-":
        continue
    counter[kljuc] = counter.get(kljuc, 0) + int(splitano[-1])
rezultat = []
for item in counter.items():
    rezultat.append(item)
sortirano = sorted(rezultat, key=lambda t: t[1], reverse=True)
print("-"*32)
print("  IP adrese   |  Br. pristupa")
print("-"*32)
for element in sortirano:
    print("{:>12s}   {:8d}".format(element[0], element[1]))
print("-" * 32)