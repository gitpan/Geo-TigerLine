package Geo::TigerLine::Record::7;

use strict;

use Carp::Assert;
use base qw(Geo::TigerLine::Record::Parser Geo::TigerLine::Record::Accessor
            Geo::TigerLine::Record Class::Data::Inheritable);

use vars qw($VERSION);
$VERSION = '0.01';


# Auto-generated data dictionary.
my %Data_Dict = (
               'lalong' => {
                             'beg' => '55',
                             'bv' => 'Yes',
                             'description' => 'Longitude',
                             'fieldnum' => '9',
                             'len' => '10',
                             'end' => '64',
                             'fmt' => 'R',
                             'field' => 'lalong',
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
               'cfcc' => {
                           'beg' => '22',
                           'bv' => 'Yes',
                           'description' => 'Census Feature Class Code',
                           'fieldnum' => '7',
                           'len' => '3',
                           'end' => '24',
                           'fmt' => 'L',
                           'field' => 'cfcc',
                           'type' => 'A'
                         },
               'filler' => {
                             'beg' => '74',
                             'bv' => 'Yes',
                             'description' => 'Filler (to make even character count)',
                             'fieldnum' => '11',
                             'len' => '1',
                             'end' => '74',
                             'fmt' => 'L',
                             'field' => 'filler',
                             'type' => 'A'
                           },
               'source' => {
                             'beg' => '21',
                             'bv' => 'Yes',
                             'description' => 'Source or First Source Code to Update',
                             'fieldnum' => '6',
                             'len' => '1',
                             'end' => '21',
                             'fmt' => 'L',
                             'field' => 'source',
                             'type' => 'A'
                           },
               'lalat' => {
                            'beg' => '65',
                            'bv' => 'Yes',
                            'description' => 'Latitude',
                            'fieldnum' => '10',
                            'len' => '9',
                            'end' => '73',
                            'fmt' => 'R',
                            'field' => 'lalat',
                            'type' => 'N'
                          },
               'laname' => {
                             'beg' => '25',
                             'bv' => 'Yes',
                             'description' => 'Landmark Name',
                             'fieldnum' => '8',
                             'len' => '30',
                             'end' => '54',
                             'fmt' => 'L',
                             'field' => 'laname',
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
                           'beg' => '11',
                           'bv' => 'No',
                           'description' => 'Landmark Identification Number',
                           'fieldnum' => '5',
                           'len' => '10',
                           'end' => '20',
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
                 'land',
                 'source',
                 'cfcc',
                 'laname',
                 'lalong',
                 'lalat',
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

Geo::TigerLine::Record::7 - TIGER/Line 1998 Landmark  Features

=head1 SYNOPSIS

  use Geo::TigerLine::Record::7;

  @records = Geo::TigerLine::Record::7->parse_file($fh);
  @records = Geo::TigerLine::Record::7->parse_file($fh, \&callback);

  $record = Geo::TigerLine::Record::7->new(\%fields);

  $record->rt();
  $record->version();
  $record->state();
  $record->county();
  $record->land();
  $record->source();
  $record->cfcc();
  $record->laname();
  $record->lalong();
  $record->lalat();
  $record->filler();


=head1 DESCRIPTION

This is a class representing record type 7 of the TIGER/Line 1998
census geographic database.  Each object is one record.  It also
contains methods to parse TIGER/Line record type 7 files and turn them
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


=item B<land>

    $data = $record->land();
    $record->land($data);

Landmark Identification Number.  

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


=item B<laname>

    $data = $record->laname();
    $record->laname($data);

Landmark Name.  

Expects alphanumeric data of no more than 30 characters.  $data can be blank 
and should be left justified.


=item B<lalong>

    $data = $record->lalong();
    $record->lalong($data);

Longitude.  

Expects numeric data of no more than 10 characters.  $data can be blank 
and should be right justified.


=item B<lalat>

    $data = $record->lalat();
    $record->lalat($data);

Latitude.  

Expects numeric data of no more than 9 characters.  $data can be blank 
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

    Record Type 7 - Landmark  Features
    
         Field   BV  Fmt  Type  Beg  End  Len  Description
            RT   No    L     A    1    1    1  Record Type
       VERSION   No    L     N    2    5    4  Version Number
         STATE   No    L     N    6    7    2  FIPS State Code for File
        COUNTY   No    L     N    8   10    3  FIPS County Code for File
          LAND   No    R     N   11   20   10  Landmark Identification Number
        SOURCE  Yes    L     A   21   21    1  Source or First Source Code to Update
          CFCC  Yes    L     A   22   24    3  Census Feature Class Code
        LANAME  Yes    L     A   25   54   30  Landmark Name
        LALONG  Yes    R     N   55   64   10  Longitude
         LALAT  Yes    R     N   65   73    9  Latitude
        FILLER  Yes    L     A   74   74    1  Filler (to make even character count)
    
    
    



=head1 AUTHOR

Michael G Schwern <schwern@pobox.com>

=head1 SEE ALSO

L<Geo::TigerLine>, L<mk_parsers>

=cut


return 'Honey flash!';
