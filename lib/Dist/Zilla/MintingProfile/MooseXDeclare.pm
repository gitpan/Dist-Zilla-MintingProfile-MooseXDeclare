package Dist::Zilla::MintingProfile::MooseXDeclare;

# ABSTRACT: A minting profile for Modules written with MooseX::Declare

use Moose;
use namespace::autoclean;
with 'Dist::Zilla::Role::MintingProfile::ShareDir';
 
__PACKAGE__->meta->make_immutable;
1;