UserTag filters Order exclude
UserTag filters Routine <<EOR
use vars '%Filter_desc';
%Vend::Interpolate::Filter_desc = (
	filesafe        => 'Safe for filename',
	currency        => 'Currency',
	mailto          => 'mailto: link',
	commify         => 'Commify',
	lookup          => 'DB lookup',
	uc              => 'Upper case',
	date_change     => 'Date widget',
	null_to_space   => 'NULL to SPACE',
	null_to_comma   => 'NULL to COMMA',
	null_to_colons  => 'NULL to ::',
	space_to_null   => 'SPACE to NULL',
	colons_to_null  => ':: to NULL',
	last_non_null   => 'Reverse combo',
	nullselect      => 'Combo box',
	tabbed          => 'Newline to TAB',
	lc              => 'Lower case',
	digits_dot      => 'Digits-dots',
	backslash       => 'Strip backslash',
	option_format   => 'Option format',
	crypt           => 'Crypt',
	namecase        => 'Name case',
	name            => 'Last&#44;First to First Last',
	digits          => 'Digits only',
	word            => 'A-Za-z_0-9',
	unix            => 'DOS to UNIX newlines',
	dos             => 'UNIX to DOS newlines',
	mac             => 'UNIX or DOS to Mac OS newlines',
	no_white        => 'No whitespace',
	strip           => 'Trim whitespace',
	sql             => 'SQL quoting',
	textarea_put    => 'Textarea PUT',
	textarea_get    => 'Textarea GET',
	text2html       => 'Simple text2html',
	urlencode       => 'URL encode',
	entities        => 'HTML entities',
);

my $fdesc_sort = sub {
	return 1 if $a and ! $b;
	return -1 if ! $a and $b;
	return lc($Filter_desc{$a}) cmp lc($Filter_desc{$b});
};

sub {
	my ($exclude) = @_;
	my @out = map
			{ $_ . ($Filter_desc{$_} ? "=$Filter_desc{$_}" : '') } 
				sort $fdesc_sort keys %Vend::Interpolate::Filter;
	if($exclude == 1) {
		@out = grep /=/, @out;
	}
	unshift @out, "=--add--";
	return join ",\n", @out;
}
EOR
