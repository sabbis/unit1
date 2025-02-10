ycord = 240
backupy = ycord
build = 6

def make_ordered_list():
    global ycord
    global build
    command = ""
    for i in range(1, 30):
        if ycord <= 600:
            print("  PShape " + "build" + str(build) + "detail" + str(i) + " = createShape(RECT, 0, " + str(ycord) +", 140, 2);")
            ycord += 20
    
        
    
def addchildren():
    global backupy
    global build
    for i in range(1, 29):
        if backupy <= 600:
            print("  buildingsFront2.addChild(build" + str(build) + "detail" + str(i) + ");")
            backupy += 20
        


make_ordered_list()
addchildren()
