package Geo::TigerLine::Record::8;

use strict;

use Carp::Assert;
use base qw(Geo::TigerLine::Record::Parser Geo::TigerLine::Record::Accessor
            Geo::TigerLine::Record Class::Data::Inheritable);

use vars qw($VERSION);
$VERSION = '0.01';


# Auto-generated data dictionary.
my %Data_Dict = (
               'polyid' => {
                             'beg' => '16',
                             'bv' => 'No',
                             'description' => 'Polygon Identification Code',
                             'fieldnum' => '6',
                             'len' => '10',
                             'end' => '25',
                             'fmt' => 'R',
                             'field' => 'polyid',
                             'type' => 'N'
                           },
               'state' => {
                            'beg' => '6',
                            'bv' => 'No',
                            'description' => 'FIPS State Code for File',
                            'fieldnum' => '3',
                            'len' => '2',
                            'end' => '7',
                            'fmt' => 'L',
                            'field' => 'state',
                            'type' => 'N'
                          },
               'county' => {
                             'beg' => '8',
                             'bv' => 'No',
                             'description' => 'FIPS County Code for File',
                             'fieldnum' => '4',
                             'len' => '3',
                             'end' => '10',
                             'fmt' => 'L',
                             'field' => 'county',
                             'type' => 'N'
                           },
               'cenid' => {
                            'beg' => '11',
                            'bv' => 'No',
                            'description' => 'Census File Identification Code',
                            'fieldnum' => '5',
                            'len' => '5',
                            'end' => '15',
                            'fmt' => 'L',
                            'field' => 'cenid',
                            'type' => 'A'
                          },
               'filler' => {
                             'beg' => '36',
                             'bv' => 'Yes',
                             'description' => 'Filler (to make even character count)',
                             'fieldnum' => '8',
                             'len' => '1',
                             'end' => '36',
                             'fmt' => 'L',
                             'field' => 'filler',
                             'type' => 'A'
                           },
               'version' => {
                              'beg' => '2',
                              'bv' => 'No',
                              'description' => 'Version Number',
                              'fieldnum' => '2',
                              'len' => '4',
                              'end' => '5',
                              'fmt' => 'L',
                              'field' => 'version',
                              'type' => 'N'
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
                       },
               'land' => {
                           'beg' => '26',
                           'bv' => 'No',
                           'description' => 'Landmark Identification Number',
                           'fieldnum' => '7',
                           'len' => '10',
                           'end' => '35',
                           'fmt' => 'R',
                           'field' => 'land',
                           'type' => 'N'
                         }
             );


my @Data_Fields = (
                 'rt',
                 'version',
                 'state',
                 'county',
                 'cenid',
                 'polyid',
                 'land',
                 'filler'
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

Geo::TigerLine::Record::8 - TIGER/Line 1998 Polygons Linked to Area Landmarks

=head1 SYNOPSIS

  use Geo::TigerLine::Record::8;

  @records = Geo::TigerLine::Record::8->parse_file($fh);
  @records = Geo::TigerLine::Record::8->parse_file($fh, \&callback);

  $record = Geo::TigerLine::Record::8->new(\%fields);

  $record->rt();
  $record->version();
  $record->state();
  $record->county();
  $record->cenid();
  $record->polyid();
  $record->land();
  $record->filler();


=head1 DESCRIPTION

This is a class representing record type 8 of the TIGER/Line 1998
census geographic database.  Each object is one record.  It also
contains methods to parse TIGER/Line record type 8 files and turn them
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


=item B<version>

    $data = $record->version();
    $record->version($data);

Version Number.  

Expects numeric data of no more than 4 characters.  $data cannot be blank 
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


=item B<cenid>

    $data = $record->cenid();
    $record->cenid($data);

Census File Identification Code.  

Expects alphanumeric data of no more than 5 characters.  $data cannot be blank 
and should be left justified.


=item B<polyid>

    $data = $record->polyid();
    $record->polyid($data);

Polygon Identification Code.  

Expects numeric data of no more than 10 characters.  $data cannot be blank 
and should be right justified.


=item B<land>

    $data = $record->land();
    $record->land($data);

Landmark Identification Number.  

Expects numeric data of no more than 10 characters.  $data cannot be blank 
and should be right justified.


=item B<filler>

    $data = $record->filler();
    $record->filler($data);

Filler (to make even character count).  

Expects alphanumeric data of no more than 1 characters.  $data can be blank 
and should be left justified.



=back


=head2 Data dictionary

This is the original TIGER/Line 1998 data dictionary from which this
class was generated.

    Record Type 8 - Polygons Linked to Area Landmarks
    
         Field   BV  Fmt  Type  Beg  End  Len  Description
            RT   No    L     A    1    1    1  Record Type
       VERSION   No    L     N    2    5    4  Version Number
         STATE   No    L     N    6    7    2  FIPS State Code for File
        COUNTY   No    L     N    8   10    3  FIPS County Code for File
         CENID   No    L     A   11   15    5  Census File Identification Code
        POLYID   No    R     N   16   25   10  Polygon Identification Code
          LAND   No    R     N   26   35   10  Landmark Identification Number
        FILLER  Yes    L     A   36   36    1  Filler (to make even character count)
    
    
    



=head1 AUTHOR

Michael G Schwern <schwern@pobox.com>

=head1 SEE ALSO

L<Geo::TigerLine>, L<mk_parsers>

=cut


return 'Honey flash!';
