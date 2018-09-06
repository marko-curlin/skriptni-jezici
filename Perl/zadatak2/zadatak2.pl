#!/usr/bin/perl -w
print("Molimo unesite niz brojeva: ");
chomp($line = <STDIN>);
@numbers = split(/\s+/, $line);
foreach my $x (@numbers) {
	$sum+=$x;
}
$avg = $sum/($#numbers+1);
print("Prosjek unesenih brojeva je: $avg\n");