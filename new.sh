#read -p "Enter n " n
#for i in $(seq 1 $n);do
#echo $(shuf -i  1-6 -n 1)
#done


n=10
for i in $(seq 1 $n); do
x=$(shuf -i 1-6 -n 1)
echo "The generated random number is: $x"
echo $x >> random_numbers.txt
done


generate_rn(){
read - p " How many random numbers do you want to generate? " 
if [-f random_numbers.txt ]; then
rm random_numbers.txt
fi

for i in $(seq 1 $n); do
x=$(shuf -i 1-6 -n 1)
echo "The generated random number is: $x"
echo $x >> random_numbers.txt




if [ $x -gt 2000 ]; then echo "I am tired"
break
fi
done
}

generate_rn
