# $Id: import.t,v 1.2 2002/10/22 18:07:09 comdog Exp $

use Test::More tests => 3;
use Test::Data qw(Function);

use Object::Iterate qw(imap igrep iterate);

prototype_ok( &main::imap,    '&$' );
prototype_ok( &main::igrep,   '&$' );
prototype_ok( &main::iterate, '&$' );

