import sys
import datetime

date = '2020-02-02'
a = datetime.datetime.strptime(sys.argv[2], "%Y-%m-%d").date()


print(type(datetime.datetime.strptime(sys.argv[2], "%Y-%m-%d").date()))