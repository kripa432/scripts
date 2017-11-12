import subprocess
x=input()
while(x):
    x=x.split('(')[0].split('-')
    id=x[0].split()[2]
    name=x[1:2]
    #print(id,name)
    url="https://uva.onlinejudge.org/external/"+str(int(eval(id)/100))+"/"+id + ".pdf"
    cmd="-O "+" ".join(x[0].split()[1:3]) + " - " +name[0].strip() + ".pdf "
    print("wget",cmd,url)
    subprocess.call(["wget",cmd,url])
    x=input()
