import mgrs
import random
import json

lats = range(-80, 84)
longs = range(-180, 180)

TESTS_PER_GRATICULE = 10

newfile = raw_input('Enter Output Filename[MGRS_Test.json]: ')
newfile = newfile or 'MGRS_Test.json'

m = mgrs.MGRS()

cases = []

for lat in lats:
    for lon in longs:
        for i in xrange(TESTS_PER_GRATICULE):
            x = lon+random.random()
            y = lat+random.random()

            mgrsout = m.toMGRS(y, x)

            tempDict = dict()

            tempDict['Lon'] = x
            tempDict['Lat'] = y
            tempDict['MGRS'] = mgrsout

            cases.append(tempDict)



out = json.dumps(cases)

with open(newfile, 'a') as outFile:
    outFile.write(out)







