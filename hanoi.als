sig Disk { 
	size:Int
} 
{
	size > 0
}

sig Rod { }

sig State { 
	rods: Rod -> (seq Disk)
}
{
	all d:Disk | one rods.d
	all r:Rod, i, j: rods[r].inds | i < j => rods[r][i].size > rods[r][i].size
}

one sig A,B,C extends Rod {}

one sig D1 extends Disk {}{size=1}
one sig D2 extends Disk {}{size=2}
one sig D3 extends Disk {}{size=3}

/*
fun topDisk[s: State, rod: Rod]: set Disk{
	s.rods.first
}

pred Move[torod:Rod, fromrod:Rod, s:State, s':State] {
	let disk = topDisk[s,fromrod] | {
		
	}
}*/

run {
	first.rods[A].elems = Disk
	last.rods[C].elems = Disk
}
