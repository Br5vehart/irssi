# Example how to create your own /commands:

# /HELLO <nick> - sends a "Hello, world!" to given nick.

use Irssi;
use strict;
use vars qw($VERSION ',
    license     => 'Public Domain'
);

sub cmd_hello {
	my ($data, $server, $channel) = @_;

	$server->command("/msg $data Hello, world!");
}

Irssi::command_bind('hello', 'cmd_hello');
