# $Id: load.t,v 1.3 2004/09/08 07:16:39 comdog Exp $
BEGIN {
	@classes = qw(Object::Iterate Object::Iterate::Tester);
	}

use Test::More tests => scalar @classes;

foreach my $class ( @classes )
	{
	print "bail out! $class did not compile\n" unless use_ok( $class );
	}
