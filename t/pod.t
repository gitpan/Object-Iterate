# $Id: pod.t,v 1.1 2002/10/22 16:58:40 comdog Exp $
use strict;

use vars qw(@files);

BEGIN {
	use File::Find::Rule;
	@files = File::Find::Rule->file()->name( '*.pm' )->in( 'blib/lib' );
	}

use Test::Pod tests => scalar @files;

foreach my $file ( @files )
	{
	pod_ok($file);
	}
