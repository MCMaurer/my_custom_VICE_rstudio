function killstan 
	pgrep -f parallel:::.slaveRSOCK
	pkill -f parallel:::.slaveRSOCK
end
