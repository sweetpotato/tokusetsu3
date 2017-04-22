#!/usr/bin/perl
use strict;
use warnings;

binmode STDIN, ':utf8';
binmode STDOUT, ':utf8';

local $/ = undef;
$_ = <STDIN>;

s|.*?<!DOCTYPE html><!--|<!DOCTYPE html><!--|s;
s|<meta charset="utf-8">.*?<title>|<meta charset="utf-8"><title>|s;
s|</footer>.*?</body></html>|</footer></body></html>|s;

print;
