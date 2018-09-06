#!/usr/bin/perl -w

print("Lista po rangu:\n");
print("------------------------\n");
$prvi_red = <>;
chomp($prvi_red);
@koeficijenti = split(/;/, $prvi_red);
$i = 0;
while(defined($redak = <>)){
	chomp($redak);
	@splitano = split(/;/, $redak);
	$JMBAG[$i] = shift(@splitano);
	$ime[$i] = shift(@splitano);
	$prezime[$i] = shift(@splitano);
	$zbroj = 0;
	foreach my $x (0..$#splitano) {
		if($splitano[$x] ne "-"){
			$zbroj += $splitano[$x] * $koeficijenti[$x];
		}
	}
	$rezultat[$i] = $zbroj;
	$i+=1;
}
foreach my $x (0..$#rezultat) {
	$y=$x+1;
	print "$y. $prezime[$x], $ime[$x] ($JMBAG[$x]) : $rezultat[$x]\n";
}