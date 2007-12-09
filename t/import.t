# $Id: import.t 522 2002-10-22 18:07:09Z comdog $

use Test::More tests => 3;
use Test::Data qw(Function);

use Object::Iterate qw(imap igrep iterate);

prototype_ok( &main::imap,    '&$' );
prototype_ok( &main::igrep,   '&$' );
prototype_ok( &main::iterate, '&$' );

