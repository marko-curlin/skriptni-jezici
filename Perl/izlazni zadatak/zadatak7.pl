#!/usr/bin/perl -w

<>;
while (defined($redak = <>)) {
	chomp($redak);
	@splitano = split(/\t/, $redak);
	if($splitano[0] eq "Error"){
		if(!defined($error{$splitano[2]})){
			$error{$splitano[2]} = 0;
		}
		$error{$splitano[2]}+=1;
	}
	if ($splitano[0] eq "Warning") {
		if(!defined($warning{$splitano[2]})){
			$warning{$splitano[2]} = 0;
		}
		$warning{$splitano[2]}+=1;
	}
	if ($splitano[0] eq "Information") {
		if(!defined($information{$splitano[2]})){
			$information{$splitano[2]} = 0;
		}
		$information{$splitano[2]}+=1;
	}
}

$jednako = "="x50;
$minus = "-"x50;
print("$jednako\n");
print(" Level: Error\n");
print(" Source: num. records\n");
print("$minus\n");
@keys = sort {$error{$a} <=> $error{$b}} keys %error;
foreach my $key (reverse @keys) {
	print("$key : $error{$key}\n");
}
print("\n");
print("$jednako\n");
print(" Level: Information\n");
print(" Source: num. records\n");
print("$minus\n");
@keys = sort {$information{$a} <=> $information{$b}} keys %information;
foreach my $key (reverse @keys) {
	print("$key : $information{$key}\n");
}
print("\n");
print("$jednako\n");
print(" Level: Warning\n");
print(" Source: num. records\n");
print("$minus\n");
@keys = sort {$warning{$a} <=> $warning{$b}} keys %warning;
foreach my $key (reverse @keys) {
	print("$key : $warning{$key}\n");
}