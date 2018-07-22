import psutil

def Kill_All_Ie_Browsers():
    for proc in psutil.process_iter():
        # check whether the process name matches
        if proc.name() == "IEDriverServer.exe":
            proc.kill()
        if proc.name() == "iexplore.exe":
            proc.kill()