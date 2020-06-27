# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# This Source Code Form is "Incompatible With Secondary Licenses", as
# defined by the Mozilla Public License, v. 2.0.

package Bugzilla::Extension::Dlang;

use 5.10.1;
use strict;
use warnings;

use base qw(Bugzilla::Extension);

sub app_startup {
  my ($self, $args) = @_;
  my $app = $args->{app};
  my $r   = $app->routes;

  delete $app->static->extra->{'favicon.ico'};
  $r->get(
    '/favicon.ico' => sub {
      my $c = shift;
      $c->reply->file($c->app->home->child('extensions/Dlang/web/images/favicon.ico'));
    }
  );
}

__PACKAGE__->NAME;
