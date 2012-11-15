
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;

use File::ShareDir::Install;
install_share module => "Dist::Zilla::MintingProfile::MooseXDeclare", "profiles";


my %WriteMakefileArgs = (
  "ABSTRACT" => "A minting profile for Modules written with MooseX::Declare",
  "AUTHOR" => "Daniel B <dbr\@cpan.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30",
    "File::ShareDir::Install" => "0.03"
  },
  "DISTNAME" => "Dist-Zilla-MintingProfile-MooseXDeclare",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Dist::Zilla::MintingProfile::MooseXDeclare",
  "PREREQ_PM" => {},
  "VERSION" => "0.101",
  "test" => {
    "TESTS" => ""
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);

{
package
MY;
use File::ShareDir::Install qw(postamble);
}


