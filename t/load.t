# $Id: load.t 1463 2004-09-08 07:16:39Z comdog $
BEGIN {
	@classes = qw(Object::Iterate Object::Iterate::Tester);
	}

use Test::More tests => scalar @classes;

foreach my $class ( @classes )
	{
	print "bail out! $class did not compile\n" unless use_ok( $class );
	}
