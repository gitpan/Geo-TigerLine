package Geo::TigerLine::Record::9;

use strict;

use Carp::Assert;
use base qw(Geo::TigerLine::Record::Parser Geo::TigerLine::Record::Accessor
            Geo::TigerLine::Record Class::Data::Inheritable);

use vars qw($VERSION);
$VERSION = '0.01';


# Auto-generated data dictionary.
my %Data_Dict = (
               'kglzip4' => {
                              'beg' => '76',
                              'bv' => 'No*',
                              'description' => '+4 Postal Add-On Code for KGL',
                              'fieldnum' => '12',
                              'len' => '4',
                              'end' => '79',
                              'fmt' => 'L',
                              'field' => 'kglzip4',
                              'type' => 'N'
                            },
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
               'kglname' => {
                              'beg' => '30',
                              'bv' => 'Yes',
                              'description' => 'Key Geographic Location Name',
                              'fieldnum' => '9',
                              'len' => '30',
                              'end' => '59',
                              'fmt' => 'L',
                              'field' => 'kglname',
                              'type' => 'A'
                            },
               'cfcc' => {
                           'beg' => '27',
                           'bv' => 'Yes',
                           'description' => 'Census Feature Class Code',
                           'fieldnum' => '8',
                           'len' => '3',
                           'end' => '29',
                           'fmt' => 'L',
                           'field' => 'cfcc',
                           'type' => 'A'
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
                             'beg' => '88',
                             'bv' => 'Yes',
                             'description' => 'Filler (to make even character count)',
                             'fieldnum' => '14',
                             'len' => '1',
                             'end' => '88',
                             'fmt' => 'L',
                             'field' => 'filler',
                             'type' => 'A'
                           },
               'source' => {
                             'beg' => '26',
                             'bv' => 'Yes',
                             'description' => 'Source or First Source Code to Update',
                             'fieldnum' => '7',
                             'len' => '1',
                             'end' => '26',
                             'fmt' => 'L',
                             'field' => 'source',
                             'type' => 'A'
                           },
               'kgladd' => {
                             'beg' => '60',
                             'bv' => 'No*',
                             'description' => 'Key Geographic Location Address',
                             'fieldnum' => '10',
                             'len' => '11',
                             'end' => '70',
                             'fmt' => 'R',
                             'field' => 'kgladd',
                             'type' => 'A'
                           },
               'kglzip' => {
                             'beg' => '71',
                             'bv' => 'No*',
                             'description' => 'Key Geographic Location ZIP Code',
                             'fieldnum' => '11',
                             'len' => '5',
                             'end' => '75',
                             'fmt' => 'L',
                             'field' => 'kglzip',
                             'type' => 'N'
                           },
               'feat' => {
                           'beg' => '80',
                           'bv' => 'Yes',
                           'description' => 'Line Name Identification Number',
                           'fieldnum' => '13',
                           'len' => '8',
                           'end' => '87',
                           'fmt' => 'R',
                           'field' => 'feat',
                           'type' => 'N'
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
                       }
             );


my @Data_Fields = (
                 'rt',
                 'version',
                 'state',
                 'county',
                 'cenid',
                 'polyid',
                 'source',
                 'cfcc',
                 'kglname',
                 'kgladd',
                 'kglzip',
                 'kglzip4',
                 'feat',
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

Geo::TigerLine::Record::9 - TIGER/Line 1998 Key Geographic Location Features

=head1 SYNOPSIS

  use Geo::TigerLine::Record::9;

  @records = Geo::TigerLine::Record::9->parse_file($fh);
  @records = Geo::TigerLine::Record::9->parse_file($fh, \&callback);

  $record = Geo::TigerLine::Record::9->new(\%fields);

  $record->rt();
  $record->version();
  $record->state();
  $record->county();
  $record->cenid();
  $record->polyid();
  $record->source();
  $record->cfcc();
  $record->kglname();
  $record->kgladd();
  $record->kglzip();
  $record->kglzip4();
  $record->feat();
  $record->filler();


=head1 DESCRIPTION

This is a class representing record type 9 of the TIGER/Line 1998
census geographic database.  Each object is one record.  It also
contains methods to parse TIGER/Line record type 9 files and turn them
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


=item B<source>

    $data = $record->source();
    $record->source($data);

Source or First Source Code to Update.  

Expects alphanumeric data of no more than 1 characters.  $data can be blank 
and should be left justified.


=item B<cfcc>

    $data = $record->cfcc();
    $record->cfcc($data);

Census Feature Class Code.  

Expects alphanumeric data of no more than 3 characters.  $data can be blank 
and should be left justified.


=item B<kglname>

    $data = $record->kglname();
    $record->kglname($data);

Key Geographic Location Name.  

Expects alphanumeric data of no more than 30 characters.  $data can be blank 
and should be left justified.


=item B<kgladd>

    $data = $record->kgladd();
    $record->kgladd($data);

Key Geographic Location Address.  

Expects alphanumeric data of no more than 11 characters.  $data cannot be blank 
and should be right justified.


=item B<kglzip>

    $data = $record->kglzip();
    $record->kglzip($data);

Key Geographic Location ZIP Code.  

Expects numeric data of no more than 5 characters.  $data cannot be blank 
and should be left justified.


=item B<kglzip4>

    $data = $record->kglzip4();
    $record->kglzip4($data);

+4 Postal Add-On Code for KGL.  

Expects numeric data of no more than 4 characters.  $data cannot be blank 
and should be left justified.


=item B<feat>

    $data = $record->feat();
    $record->feat($data);

Line Name Identification Number.  

Expects numeric data of no more than 8 characters.  $data can be blank 
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

    Record Type 9 - Key Geographic Location Features
    
         Field   BV  Fmt  Type  Beg  End  Len  Description
            RT   No    L     A    1    1    1  Record Type
       VERSION   No    L     N    2    5    4  Version Number
         STATE   No    L     N    6    7    2  FIPS State Code for File
        COUNTY   No    L     N    8   10    3  FIPS County Code for File
         CENID   No    L     A   11   15    5  Census File Identification Code
        POLYID   No    R     N   16   25   10  Polygon Identification Code
        SOURCE  Yes    L     A   26   26    1  Source or First Source Code to Update
          CFCC  Yes    L     A   27   29    3  Census Feature Class Code
       KGLNAME  Yes    L     A   30   59   30  Key Geographic Location Name
        KGLADD  No*    R     A   60   70   11  Key Geographic Location Address
        KGLZIP  No*    L     N   71   75    5  Key Geographic Location ZIP Code
       KGLZIP4  No*    L     N   76   79    4  +4 Postal Add-On Code for KGL
          FEAT  Yes    R     N   80   87    8  Line Name Identification Number
        FILLER  Yes    L     A   88   88    1  Filler (to make even character count)
    
    
    



=head1 AUTHOR

Michael G Schwern <schwern@pobox.com>

=head1 SEE ALSO

L<Geo::TigerLine>, L<mk_parsers>

=cut


return 'Honey flash!';
