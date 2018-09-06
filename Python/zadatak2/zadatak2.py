from math import floor

input = open("ulaz.txt")
print("Hyp", end="#")
for i in range(10, 90, 10):
    print("Q"+str(i), end="#")
print("Q90")
counter = 1
for line in input:
    print("%03d" % counter, end="#")
    allNumbers = sorted(line.split())
    for i in [round(x * 0.1, 2) for x in range(1, 9, 1)]:
        # print(i)
        print(allNumbers[floor(i*len(allNumbers))], end="#")
    print(allNumbers[floor(0.9*len(allNumbers))])
    counter += 1