#!/usr/bin/perl

while (defined($redak = <>)){
	chomp($redak);
	$datum = $redak;
	$datum =~ s/.*\[(\d{2}\/\w{3}\/\d{4}):.*/$1/;
	if($datum ne $datum_stari){
		print("Datum: $datum\n");
		print("sat : broj pristupa\n");
		print("--------------------------\n");
		for (my $var = 0; $var < 24; $var++) {
			print("$var : $brojac[$sat]\n");
		}
		$datum_stari = $datum;
		$#brojac = 0;
	}
	$sat = $redak;
	$sat =~ s/.*\[\d{2}\/\w{3}\/\d{4}:(\d{2}).*/$1/;
	$brojac{$sat}++;
}
print("Datum: $datum\n");
print("sat : broj pristupa\n");
print("--------------------------\n");
for (my $var = 0; $var < 24; $var++) {
	print("$var : $brojac{$sat}\n");
}