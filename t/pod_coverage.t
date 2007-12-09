# $Id: pod_coverage.t 1595 2005-03-12 04:12:06Z comdog $

use Test::More;
eval "use Test::Pod::Coverage";

if( $@ )
	{
	plan skip_all => "Test::Pod::Coverage required for testing POD";
	}
else
	{
	plan tests => 2;

	pod_coverage_ok( "Object::Iterate" );      

	pod_coverage_ok( "Object::Iterate::Tester",
		{ trustme => [ qr/./ ] }, );      
	}
