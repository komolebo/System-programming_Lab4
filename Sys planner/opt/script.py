import os

def main():
	amount = 30
	
	while amount <= 1000:
		print "size: ", amount
		os.system("./main3 " + str(amount))
		amount += 10

main()
