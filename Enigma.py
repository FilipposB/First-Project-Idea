dic=['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
tra=["1","2","3","4","5","6","7","8","9",'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q']
opt=0
num=1
rot=[0,0,0,0,0,0,1]
file="Data.txt"
rotors=("["+str(rot[0])+"]-")
for i in range (1,4,2):
    rotors=rotors+str("["+str(rot[i])+str(rot[i+1])+"]-")
rotors=rotors+("["+str(rot[5])+str(rot[6])+"]")

while opt!="3":
    print ("""
     _____ _   _ _____ _____ ___  ___  ___  
    |  ___| \ | |_   _|  __ \|  \/  | / _ \ 
    | |__ |  \| | | | | |  \/| .  . |/ /_\ \ 
    |  __|| . ` | | | | | __ | |\/| ||  _  |
    | |___| |\  |_| |_| |_\ \| |  | || | | |
    \____/\_| \_/\___/ \____/\_|  |_/\_| |_/
    

           ---------------------------
           I    1)Encrypt/Decrypt    I
           I - - - - - - - - - - - - I
           I    2)Change Encryption  I
           I - - - - - - - - - - - - I
           I    3)Quit               I
           ---------------------------

           """)
    opt=input("Choose one of the above : ")
    print ("""



""")
    if opt=="1":
        res=""
        print (rotors)
        text=input("""

Type your Text here : """)
        f = open(file, 'r')
        line=int(num/19)+1
        if float(num)/19==int(num/19):
            line=line-1
        staline=line
        lin=f.readline()
        for let in text :
            lis=[""]*26
            line=int(num/19)+1
            if float(num)/19==int(num/19):
                line=line-1
            pos=(num-19*(line-1))*13
            num+=1
            if staline!=line:
                staline=line
                lin=f.readline()
            encr=lin[(pos-13):(pos-248)]
            count=0
            cap=False
            if let==let.upper():
                cap=True
                let=let.lower()
            key=False
            for i in range (0,25):
                if let==dic[i]:
                    key=True
            if key==False:
                res=res+let
            else:         
                for le in encr:
                    val=0
                    key=False
                    while key==False:
                        if tra[val]==le:
                            key=True
                        else:
                            val+=1
                    if lis[count]!="":
                        while key==True:
                            count=count+1
                            if lis[count]=="":
                                lis[count]=le
                                lis[val]=tra[count]
                                key=False
                    else:
                        lis[count]=le
                        lis[val]=tra[count]
                    count+=1
                val=0
                key=False
                while key==False:
                    if dic[val]==let:
                        key=True
                    else:
                        val+=1
                ser=lis[val]
                val=0
                while key==True:
                    if ser==tra[val]:
                        key=False
                    else:
                        val+=1
                new=dic[val]
                if cap==True:
                    new=new.upper()
                res=res+new
        print ("")
        print ("Your Encryption : ",res)
        print ("")
        pause=input()
    elif opt=="2":
        print ("                  ",rotors)
        print ("""



                """)
        key=False
        while key==False:
            nump=input("Write a string of seven numbers (the first number should be either a 0 or a 1) : ")
            if len(nump)==7 and num<2000000:
                key=True
        count=0
        for i in nump:
            i=int(i)
            rot[count]=i
            count+=1
        rotors=("["+str(rot[0])+"]-")
        for i in range (1,4,2):
            rotors=rotors+str("["+str(rot[i])+str(rot[i+1])+"]-")
        rotors=rotors+("["+str(rot[5])+str(rot[6])+"]")
        print (rotors)
