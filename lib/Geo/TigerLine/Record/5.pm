package Geo::TigerLine::Record::5;

use strict;

use Carp::Assert;
use base qw(Geo::TigerLine::Record::Parser Geo::TigerLine::Record::Accessor
            Geo::TigerLine::Record Class::Data::Inheritable);

use vars qw($VERSION);
$VERSION = '0.01';


# Auto-generated data dictionary.
my %Data_Dict = (
               'state' => {
                            'beg' => '2',
                            'bv' => 'No',
                            'description' => 'FIPS State Code for File',
                            'fieldnum' => '2',
                            'len' => '2',
                            'end' => '3',
                            'fmt' => 'L',
                            'field' => 'state',
                            'type' => 'N'
                          },
               'fetype' => {
                             'beg' => '47',
                             'bv' => 'Yes',
                             'description' => 'Feature Type',
                             'fieldnum' => '7',
                             'len' => '4',
                             'end' => '50',
                             'fmt' => 'L',
                             'field' => 'fetype',
                             'type' => 'A'
                           },
               'county' => {
                             'beg' => '4',
                             'bv' => 'No',
                             'description' => 'FIPS County Code for File',
                             'fieldnum' => '3',
                             'len' => '3',
                             'end' => '6',
                             'fmt' => 'L',
                             'field' => 'county',
                             'type' => 'N'
                           },
               'fedirs' => {
                             'beg' => '51',
                             'bv' => 'Yes',
                             'description' => 'Feature Direction, Suffix',
                             'fieldnum' => '8',
                             'len' => '2',
                             'end' => '52',
                             'fmt' => 'L',
                             'field' => 'fedirs',
                             'type' => 'A'
                           },
               'fename' => {
                             'beg' => '17',
                             'bv' => 'Yes',
                             'description' => 'Feature Name',
                             'fieldnum' => '6',
                             'len' => '30',
                             'end' => '46',
                             'fmt' => 'L',
                             'field' => 'fename',
                             'type' => 'A'
                           },
               'feat' => {
                           'beg' => '7',
                           'bv' => 'No',
                           'description' => 'Line Name Identification Number',
                           'fieldnum' => '4',
                           'len' => '8',
                           'end' => '14',
                           'fmt' => 'R',
                           'field' => 'feat',
                           'type' => 'N'
                         },
               'fedirp' => {
                             'beg' => '15',
                             'bv' => 'Yes',
                             'description' => 'Feature Direction, Prefix',
                             'fieldnum' => '5',
                             'len' => '2',
                             'end' => '16',
                             'fmt' => 'L',
                             'field' => 'fedirp',
                             'type' => 'A'
                           },
               'rt' => {
                         'beg' => '1',
                         'bv' => 'No',
                         'description' => 'Record Type',
                         'fieldnum' => '1',
                         'len' => '1',
                         'end' => '1',
                         'fmt' => 'L',
                         'field' => 'rt',
                         'type' => 'A'
                       }
             );


my @Data_Fields = (
                 'rt',
                 'state',
                 'county',
                 'feat',
                 'fedirp',
                 'fename',
                 'fetype',
                 'fedirs'
               );


assert(keys %Data_Dict == @Data_Fields);

# Turn the data dictionary into class data
__PACKAGE__->mk_classdata('Fields');
__PACKAGE__->mk_classdata('Dict');
__PACKAGE__->mk_classdata('Pack_Tmpl');

__PACKAGE__->Dict(\%Data_Dict);
__PACKAGE__->Fields(\@Data_Fields);

# Generate a pack template for parsing and turn it into class data.
my $pack_tmpl = join ' ', map { "A$_" } map { $_->{len} } 
                                          @Data_Dict{@Data_Fields};
__PACKAGE__->Pack_Tmpl($pack_tmpl);

# Generate accessors for each data field
foreach my $def (@Data_Dict{@Data_Fields}) {
    __PACKAGE__->mk_accessor($def);
}


=pod

=head1 NAME

Geo::TigerLine::Record::5 - TIGER/Line 1998 Complete Chain Feature Identifiers

=head1 SYNOPSIS

  use Geo::TigerLine::Record::5;

  @records = Geo::TigerLine::Record::5->parse_file($fh);
  @records = Geo::TigerLine::Record::5->parse_file($fh, \&callback);

  $record = Geo::TigerLine::Record::5->new(\%fields);

  $record->rt();
  $record->state();
  $record->county();
  $record->feat();
  $record->fedirp();
  $record->fename();
  $record->fetype();
  $record->fedirs();


=head1 DESCRIPTION

This is a class representing record type 5 of the TIGER/Line 1998
census geographic database.  Each object is one record.  It also
contains methods to parse TIGER/Line record type 5 files and turn them
into objects.

This is intended as an intermediate format between pulling the raw
data out of the simplistic TIGER/Line data files into something more
sophisticated (a process you should only have to do once).  As such,
its not very fast, but its careful, easy to use and performs some
verifications on the data being read.

As this class is autogenerated by mk_parsers, think before you modify this
file.  Its OO, so consider sub-classing instead.


=head2 Accessors

These are simple get/set accessors for each field of a record
generated from the TIGER/Line 1998 data dictionary.  They perform some
data validation.

=over 4

=item B<rt>

    $data = $record->rt();
    $record->rt($data);

Record Type.  

Expects alphanumeric data of no more than 1 characters.  $data cannot be blank 
and should be left justified.


=item B<state>

    $data = $record->state();
    $record->state($data);

FIPS State Code for File.  

Expects numeric data of no more than 2 characters.  $data cannot be blank 
and should be left justified.


=item B<county>

    $data = $record->county();
    $record->county($data);

FIPS County Code for File.  

Expects numeric data of no more than 3 characters.  $data cannot be blank 
and should be left justified.


=item B<feat>

    $data = $record->feat();
    $record->feat($data);

Line Name Identification Number.  

Expects numeric data of no more than 8 characters.  $data cannot be blank 
and should be right justified.


=item B<fedirp>

    $data = $record->fedirp();
    $record->fedirp($data);

Feature Direction, Prefix.  

Expects alphanumeric data of no more than 2 characters.  $data can be blank 
and should be left justified.


=item B<fename>

    $data = $record->fename();
    $record->fename($data);

Feature Name.  

Expects alphanumeric data of no more than 30 characters.  $data can be blank 
and should be left justified.


=item B<fetype>

    $data = $record->fetype();
    $record->fetype($data);

Feature Type.  

Expects alphanumeric data of no more than 4 characters.  $data can be blank 
and should be left justified.


=item B<fedirs>

    $data = $record->fedirs();
    $record->fedirs($data);

Feature Direction, Suffix.  

Expects alphanumeric data of no more than 2 characters.  $data can be blank 
and should be left justified.



=back


=head2 Data dictionary

This is the original TIGER/Line 1998 data dictionary from which this
class was generated.

    Record Type 5 - Complete Chain Feature Identifiers
    
         Field   BV  Fmt  Type  Beg  End  Len  Description
            RT   No    L     A    1    1    1  Record Type
         STATE   No    L     N    2    3    2  FIPS State Code for File
        COUNTY   No    L     N    4    6    3  FIPS County Code for File
          FEAT   No    R     N    7   14    8  Line Name Identification Number
        FEDIRP  Yes    L     A   15   16    2  Feature Direction, Prefix
        FENAME  Yes    L     A   17   46   30  Feature Name
        FETYPE  Yes    L     A   47   50    4  Feature Type
        FEDIRS  Yes    L     A   51   52    2  Feature Direction, Suffix
    
    
    



=head1 AUTHOR

Michael G Schwern <schwern@pobox.com>

=head1 SEE ALSO

L<Geo::TigerLine>, L<mk_parsers>

=cut


return 'Honey flash!';
