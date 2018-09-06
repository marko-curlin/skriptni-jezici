import os

inputStudenti = open("studenti.txt")
studenti = {}
for line in inputStudenti:
    JMBAG, prezime, ime = line.split()
    studenti[JMBAG] = (prezime, ime)
redniBroj = []
bodoviStudentLabos = {}
for file in os.listdir("."):
    if file.startswith("Lab"):
        splitano = file.split("_")
        brojVjezbe = splitano[1]
        inputBodovi = open(file)
        for line in inputBodovi:
            JMBAG, bodovi = line.split()
            if (JMBAG, brojVjezbe) in bodoviStudentLabos:
                print("Student vec ima unesene bodove za danu vjezbu")
                continue
            bodoviStudentLabos[JMBAG, brojVjezbe] = float(bodovi)
        redniBroj.append(brojVjezbe)

print("JMBAG\tPrezime, Ime\t", end="")
for broj in sorted(redniBroj):
    print("L" + broj, end="\t")
print()
for JMBAG in studenti:
    print(JMBAG + "\t" + studenti[JMBAG][0] + ", " + studenti[JMBAG][1], end="\t\t")
    for broj in redniBroj:
        bodovi = bodoviStudentLabos.get((JMBAG, broj))
        if bodovi is None:
            print("", end="\t")
        else:
            print(bodovi, end="\t")
    print()