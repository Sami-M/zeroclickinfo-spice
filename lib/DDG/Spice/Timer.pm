package DDG::Spice::Timer;

use DDG::Spice;

name 'Timer';
description 'Displays a countdown timer';
primary_example_queries 'timer';
category 'special';
topics 'everyday', 'science', 'words_and_games';
code_url 'https://github.com/duckduckgo/zeroclickinfo-spice/blob/master/lib/DDG/Spice/Timer.pm';
attribution twitter => 'mattr555',
            github => ['https://github.com/mattr555/', 'Matt Ramina'];

triggers startend => ['timer', 'countdown'];
triggers start => ['time'];

spice call_type => 'self';

handle remainder => sub {
    return unless /(online|\d+ ?(m(in(utes?)?)?|s(ec(onds?)?)?|(h(ours)?)?|hr) ?)+/ || $_ eq '';
    return '';
};

1;
