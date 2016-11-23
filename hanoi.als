sig Disk { 
	size:Int 
}

sig Rod { }

sig State { 
	rods: Rod -> (seq Disk)
}

one sig A,B,C extends Rod {}

one sig D1 extends Disk {}{size=1}
one sig D2 extends Disk {}{size=2}
one sig D3 extends Disk {}{size=3}



run {}
