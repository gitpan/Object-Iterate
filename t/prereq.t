# $Id: prereq.t,v 1.2 2004/09/08 07:16:39 comdog Exp $
use Test::More;
eval "use Test::Prereq";
plan skip_all => "Test::Prereq required to test dependencies" if $@;
prereq_ok();
