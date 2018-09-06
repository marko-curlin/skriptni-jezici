#!/usr/bin/perl -w
print("Molimo unesite znakovni niz: ");
$string = <STDIN>;
print("Koliko puta zelite da se znakovni niz ponovi: ");
chomp($n = <STDIN>);
if($n =~ /\D/){
	die("Morate unijeti broj!\n");
}
while($n > 0){
	print($string);
	$n -= 1;
}