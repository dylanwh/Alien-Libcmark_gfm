#!/usr/bin/env perl
use strict;
use warnings;
use ExtUtils::MakeMaker;
use Alien::Build::MM;

my $abmm = Alien::Build::MM->new;

WriteMakefile($abmm->mm_args(
  ABSTRACT => 'Discover or download and install libfoo',
  DISTNAME => 'Alien-Libcmark_gfm',
  NAME     => 'Alien::Libcmark_gfm',
  VERSION_FROM => 'lib/Alien/Libcmark_gfm.pm',
));

sub MY::postamble {
  $abmm->mm_postamble;
}