#Create a for loop that counts only the odd numbers in a vector

x=1:20
count=0
for(i in x){
  if(i%%2==1)#if the integer is odd, then increase the count by 1
    count=count+1
  }
print(count)#so, adding the count of numbers using a for loop

#Create a for loop that takes the even numbers up to 100 and squares them

ev=seq(0,100,by=2)
ev
evsqd=NULL
evsqd
#Like a function of i, create formula with the function being set to null
for(i in 1:51){
  evsqd[i]=ev[i]^2
}

