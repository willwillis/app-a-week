#!/usr/bin/perl
use strict;
use warnings;
use DateTime;

my $dt = DateTime->today;

my $count = 0;
while ($count < 52) {
    $dt = $dt->add(days => 1);
    if ($dt->day_of_week == 6) {
        print "### Week " , ++$count,"\n", $dt->strftime("- %Y-%m-%d\n\n");
    }
}
