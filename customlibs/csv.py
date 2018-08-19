import  csv
import  psutil

def read_csv_files(filename):
    data = []
    with open(filename, 'rb') as csvfile:
        reader = csv.reader(csvfile)
        for row in reader:
            data.append(row)
    return data

def Kill_All_Ie_Browsers():
    for proc in psutil.process_iter():
        # check whether the process name matches
        if proc.name() == "IEDriverServer.exe":
            proc.kill()
        if proc.name() == "iexplore.exe":
            proc.kill()