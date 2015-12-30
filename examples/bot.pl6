use lib <lib ../lib>;
use IRC::Client;
use IRC::Client::Plugin::HNY;

sub MAIN (
            :$host    = 'localhost',
            :$channel = '#zofbot',
    Numeric :$time
) {

    $time.defined and %*ENV<CUSTOM-NOW-TIME> = $time;

    IRC::Client.new(
        :$host,
        :channels($channel),
        :debug,
        plugins => [ IRC::Client::Plugin::HNY.new ]
    ).run;

}
