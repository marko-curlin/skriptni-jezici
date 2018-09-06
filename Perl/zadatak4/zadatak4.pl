#!/usr/bin/perl -w
use Time::Piece;

<>;
while(<>){
	chomp;
	my ($JMBAG, $prezime, $ime, $termin, $zakljucano) = split(/;/, $_);
	$datum_termin = $termin;
	$datum_termin =~ s/(\d{4}-\d{2}-\d{2} \d{2}:\d{2}).*/$1/;
	$datum_termin = "$datum_termin" . ":00";
	my $t1 = Time::Piece->strptime($datum_termin => '%Y-%m-%d %H:%M:%S');
	my $t2 = Time::Piece->strptime($zakljucano => '%Y-%m-%d %H:%M:%S');
	if($t2 - $t1 > 3600){
		$sat_termin = $termin;
		$sat_termin =~ s/\d{4}-\d{2}-\d{2} (\d{2}:\d{2}).*/$1/;
		print("$JMBAG $prezime $ime	- PROBLEM: $datum_termin $sat_termin --> $zakljucano\n");
	}
}