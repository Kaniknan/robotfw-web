import  example
import  psutil


def read_csv_files(filename):
    data = []
    with open(filename, 'rb') as csvfile:
        reader = example.reader(csvfile)
        for row in reader:
            data.append(row)
    return data


def kill_all_ie_browsers():
    for proc in psutil.process_iter():
        # check whether the process name matches
        if proc.name() == "IEDriverServer.exe":
            proc.kill()
        if proc.name() == "iexplore.exe":
            proc.kill()