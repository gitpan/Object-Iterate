# $Id: prereq.t 1463 2004-09-08 07:16:39Z comdog $
use Test::More;
eval "use Test::Prereq";
plan skip_all => "Test::Prereq required to test dependencies" if $@;
prereq_ok();
