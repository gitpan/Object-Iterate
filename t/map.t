# $Id: map.t,v 1.2 2002/10/22 18:07:09 comdog Exp $

use Test::More tests => 2;

use Object::Iterate qw(imap);
use Object::Iterate::Tester;

my $o = Object::Iterate::Tester->new();
isa_ok( $o, 'Object::Iterate::Tester' );

my @O = imap { uc } $o;

my @expected = qw( A B C D E F );

ok( eq_array( \@O, \@expected ), 'imap outputs right results' );

