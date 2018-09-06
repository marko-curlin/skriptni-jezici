import urllib.request
import re
import sys

URL = sys.argv[1]
page = urllib.request.urlopen(URL)
mybytes = page.read()
mystr = mybytes.decode("utf8")
allLinks = re.findall(r'href="(http[^"]+)"', mystr)
allHosts = {}
print("LINKOVI:")
for link in allLinks:
    print(link)
    host = link.split("/")[2]
    allHosts[host] = allHosts.get(host, 0) + 1
print("HOSTOVI:")
for host in allHosts:
    print(host + ": ", allHosts[host])
print("Linkova na slike ima: " + str(len(re.findall(r'img src="', mystr))))
allEMails = re.findall(r"[\w+|-]+@[\w+|-]+\.[a-z]+", mystr)
print("EMAILOVI:")
allEMails = set(allEMails)
for eMail in allEMails:
    print(eMail)