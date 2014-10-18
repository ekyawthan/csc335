


// factorial in scala using tail recursion
def Factorial(x: BigInt): BigInt = {
	if(x == 1) return 1 else return x*Factorial(x-1);
}

println(Factorial(234));