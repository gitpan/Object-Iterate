# $Id: parse.t,v 1.2 2002/08/16 14:37:05 comdog Exp $
BEGIN { $| = 1; print "1..2\n"; }

eval{ require Object::Iterate };
print STDERR $@ if $@;
print $@ ? 'not ' : '', "ok\n";

eval{ require Object::Iterate::Tester };
print STDERR $@ if $@;
print $@ ? 'not ' : '', "ok\n";
