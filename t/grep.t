# $Id: grep.t,v 1.2 2002/10/22 18:07:09 comdog Exp $

use Test::More tests => 2;

use Object::Iterate qw(igrep);
use Object::Iterate::Tester;

my $o = Object::Iterate::Tester->new();
isa_ok( $o, 'Object::Iterate::Tester' );

my @expected = qw( a e );
my %Vowels = map { $_, 1 } @expected;

my @O = igrep { exists $Vowels{$_} } $o;

ok( eq_array( \@O, \@expected ), "igrep gives the right results" );
