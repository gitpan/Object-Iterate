# $Id: tester.t,v 1.2 2002/10/22 18:07:09 comdog Exp $

use Test::More tests => 15;

use Object::Iterate;
use Object::Iterate::Tester;

my $o = Object::Iterate::Tester->new();
isa_ok( $o, 'Object::Iterate::Tester' );
can_ok( $o, $Object::Iterate::More );
can_ok( $o, $Object::Iterate::Next );

foreach ( qw(a b c d e) )
	{
	is( $o->$Object::Iterate::Next, $_, 'Fetched right element' );
	ok( $o->$Object::Iterate::More, 'Object has more elements' );
	}

is( $o->$Object::Iterate::Next, 'f', 'Fetched right element' );
my $more = not $o->$Object::Iterate::More;
ok( $more, 'Object has no more elements' );
