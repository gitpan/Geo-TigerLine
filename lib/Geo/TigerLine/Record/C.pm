package Geo::TigerLine::Record::C;

use strict;

use Carp::Assert;
use base qw(Geo::TigerLine::Record::Parser Geo::TigerLine::Record::Accessor
            Geo::TigerLine::Record Class::Data::Inheritable);

use vars qw($VERSION);
$VERSION = '0.01';


# Auto-generated data dictionary.
my %Data_Dict = (
               'ma' => {
                         'beg' => '26',
                         'bv' => 'Yes',
                         'description' => 'Metropolitan Area Code',
                         'fieldnum' => '11',
                         'len' => '4',
                         'end' => '29',
                         'fmt' => 'L',
                         'field' => 'ma',
                         'type' => 'N'
                       },
               'anrc' => {
                           'beg' => '50',
                           'bv' => 'Yes',
                           'description' => 'Census Alaska Native Regional Corporation Code',
                           'fieldnum' => '16',
                           'len' => '2',
                           'end' => '51',
                           'fmt' => 'L',
                           'field' => 'anrc',
                           'type' => 'N'
                         },
               'fipsyr' => {
                             'beg' => '11',
                             'bv' => 'Yes',
                             'description' => 'FIPS Code and Name Relationship Applicable Year',
                             'fieldnum' => '5',
                             'len' => '4',
                             'end' => '14',
                             'fmt' => 'L',
                             'field' => 'fipsyr',
                             'type' => 'N'
                           },
               'entity' => {
                             'beg' => '25',
                             'bv' => 'No',
                             'description' => 'Entity Type Code',
                             'fieldnum' => '10',
                             'len' => '1',
                             'end' => '25',
                             'fmt' => 'L',
                             'field' => 'entity',
                             'type' => 'A'
                           },
               'pdc' => {
                          'beg' => '22',
                          'bv' => 'Yes',
                          'description' => 'Census Place Description Code',
                          'fieldnum' => '8',
                          'len' => '1',
                          'end' => '22',
                          'fmt' => 'L',
                          'field' => 'pdc',
                          'type' => 'A'
                        },
               'fipscc' => {
                             'beg' => '20',
                             'bv' => 'Yes',
                             'description' => 'FIPS 55 Class Code',
                             'fieldnum' => '7',
                             'len' => '2',
                             'end' => '21',
                             'fmt' => 'L',
                             'field' => 'fipscc',
                             'type' => 'A'
                           },
               'name' => {
                           'beg' => '55',
                           'bv' => 'No',
                           'description' => 'Name of Geographic Area',
                           'fieldnum' => '18',
                           'len' => '58',
                           'end' => '112',
                           'fmt' => 'L',
                           'field' => 'name',
                           'type' => 'A'
                         },
               'lasad' => {
                            'beg' => '23',
                            'bv' => 'Yes',
                            'description' => 'Legal/Administrative/Statistical Area Description Code',
                            'fieldnum' => '9',
                            'len' => '2',
                            'end' => '24',
                            'fmt' => 'L',
                            'field' => 'lasad',
                            'type' => 'N'
                          },
               'state' => {
                            'beg' => '6',
                            'bv' => 'Yes',
                            'description' => 'FIPS State Code',
                            'fieldnum' => '3',
                            'len' => '2',
                            'end' => '7',
                            'fmt' => 'L',
                            'field' => 'state',
                            'type' => 'N'
                          },
               'sd' => {
                         'beg' => '30',
                         'bv' => 'Yes',
                         'description' => 'School District Code',
                         'fieldnum' => '12',
                         'len' => '5',
                         'end' => '34',
                         'fmt' => 'L',
                         'field' => 'sd',
                         'type' => 'N'
                       },
               'air' => {
                          'beg' => '35',
                          'bv' => 'Yes',
                          'description' => 'Census American Indian/Alaska Native Area Code',
                          'fieldnum' => '13',
                          'len' => '4',
                          'end' => '38',
                          'fmt' => 'L',
                          'field' => 'air',
                          'type' => 'N'
                        },
               'county' => {
                             'beg' => '8',
                             'bv' => 'Yes',
                             'description' => 'FIPS County Code',
                             'fieldnum' => '4',
                             'len' => '3',
                             'end' => '10',
                             'fmt' => 'L',
                             'field' => 'county',
                             'type' => 'N'
                           },
               'ua' => {
                         'beg' => '45',
                         'bv' => 'Yes',
                         'description' => 'Census Urbanized Area Code',
                         'fieldnum' => '15',
                         'len' => '5',
                         'end' => '49',
                         'fmt' => 'L',
                         'field' => 'ua',
                         'type' => 'N'
                       },
               'fips' => {
                           'beg' => '15',
                           'bv' => 'Yes',
                           'description' => 'FIPS PUB 55-3 Code',
                           'fieldnum' => '6',
                           'len' => '5',
                           'end' => '19',
                           'fmt' => 'L',
                           'field' => 'fips',
                           'type' => 'N'
                         },
               'census5' => {
                              'beg' => '52',
                              'bv' => 'Yes',
                              'description' => 'Census Use 5',
                              'fieldnum' => '17',
                              'len' => '3',
                              'end' => '54',
                              'fmt' => 'L',
                              'field' => 'census5',
                              'type' => 'N'
                            },
               'vtd' => {
                          'beg' => '39',
                          'bv' => 'Yes',
                          'description' => 'Voting District Code',
                          'fieldnum' => '14',
                          'len' => '6',
                          'end' => '44',
                          'fmt' => 'R',
                          'field' => 'vtd',
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
                       }
             );


my @Data_Fields = (
                 'rt',
                 'version',
                 'state',
                 'county',
                 'fipsyr',
                 'fips',
                 'fipscc',
                 'pdc',
                 'lasad',
                 'entity',
                 'ma',
                 'sd',
                 'air',
                 'vtd',
                 'ua',
                 'anrc',
                 'census5',
                 'name'
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

Geo::TigerLine::Record::C - TIGER/Line 1998 Geographic Entity Names

=head1 SYNOPSIS

  use Geo::TigerLine::Record::C;

  @records = Geo::TigerLine::Record::C->parse_file($fh);
  @records = Geo::TigerLine::Record::C->parse_file($fh, \&callback);

  $record = Geo::TigerLine::Record::C->new(\%fields);

  $record->rt();
  $record->version();
  $record->state();
  $record->county();
  $record->fipsyr();
  $record->fips();
  $record->fipscc();
  $record->pdc();
  $record->lasad();
  $record->entity();
  $record->ma();
  $record->sd();
  $record->air();
  $record->vtd();
  $record->ua();
  $record->anrc();
  $record->census5();
  $record->name();


=head1 DESCRIPTION

This is a class representing record type C of the TIGER/Line 1998
census geographic database.  Each object is one record.  It also
contains methods to parse TIGER/Line record type C files and turn them
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

FIPS State Code.  

Expects numeric data of no more than 2 characters.  $data can be blank 
and should be left justified.


=item B<county>

    $data = $record->county();
    $record->county($data);

FIPS County Code.  

Expects numeric data of no more than 3 characters.  $data can be blank 
and should be left justified.


=item B<fipsyr>

    $data = $record->fipsyr();
    $record->fipsyr($data);

FIPS Code and Name Relationship Applicable Year.  

Expects numeric data of no more than 4 characters.  $data can be blank 
and should be left justified.


=item B<fips>

    $data = $record->fips();
    $record->fips($data);

FIPS PUB 55-3 Code.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<fipscc>

    $data = $record->fipscc();
    $record->fipscc($data);

FIPS 55 Class Code.  

Expects alphanumeric data of no more than 2 characters.  $data can be blank 
and should be left justified.


=item B<pdc>

    $data = $record->pdc();
    $record->pdc($data);

Census Place Description Code.  

Expects alphanumeric data of no more than 1 characters.  $data can be blank 
and should be left justified.


=item B<lasad>

    $data = $record->lasad();
    $record->lasad($data);

Legal/Administrative/Statistical Area Description Code.  

Expects numeric data of no more than 2 characters.  $data can be blank 
and should be left justified.


=item B<entity>

    $data = $record->entity();
    $record->entity($data);

Entity Type Code.  

Expects alphanumeric data of no more than 1 characters.  $data cannot be blank 
and should be left justified.


=item B<ma>

    $data = $record->ma();
    $record->ma($data);

Metropolitan Area Code.  

Expects numeric data of no more than 4 characters.  $data can be blank 
and should be left justified.


=item B<sd>

    $data = $record->sd();
    $record->sd($data);

School District Code.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<air>

    $data = $record->air();
    $record->air($data);

Census American Indian/Alaska Native Area Code.  

Expects numeric data of no more than 4 characters.  $data can be blank 
and should be left justified.


=item B<vtd>

    $data = $record->vtd();
    $record->vtd($data);

Voting District Code.  

Expects alphanumeric data of no more than 6 characters.  $data can be blank 
and should be right justified.


=item B<ua>

    $data = $record->ua();
    $record->ua($data);

Census Urbanized Area Code.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<anrc>

    $data = $record->anrc();
    $record->anrc($data);

Census Alaska Native Regional Corporation Code.  

Expects numeric data of no more than 2 characters.  $data can be blank 
and should be left justified.


=item B<census5>

    $data = $record->census5();
    $record->census5($data);

Census Use 5.  

Expects numeric data of no more than 3 characters.  $data can be blank 
and should be left justified.


=item B<name>

    $data = $record->name();
    $record->name($data);

Name of Geographic Area.  

Expects alphanumeric data of no more than 58 characters.  $data cannot be blank 
and should be left justified.



=back


=head2 Data dictionary

This is the original TIGER/Line 1998 data dictionary from which this
class was generated.

    Record Type C - Geographic Entity Names
    
         Field   BV  Fmt  Type  Beg  End  Len  Description
            RT   No    L     A    1    1    1  Record Type
       VERSION   No    L     N    2    5    4  Version Number
         STATE  Yes    L     N    6    7    2  FIPS State Code
        COUNTY  Yes    L     N    8   10    3  FIPS County Code
        FIPSYR  Yes    L     N   11   14    4  FIPS Code and Name Relationship Applicable Year
          FIPS  Yes    L     N   15   19    5  FIPS PUB 55-3 Code
        FIPSCC  Yes    L     A   20   21    2  FIPS 55 Class Code
           PDC  Yes    L     A   22   22    1  Census Place Description Code
         LASAD  Yes    L     N   23   24    2  Legal/Administrative/Statistical Area Description Code
        ENTITY   No    L     A   25   25    1  Entity Type Code
            MA  Yes    L     N   26   29    4  Metropolitan Area Code
            SD  Yes    L     N   30   34    5  School District Code
           AIR  Yes    L     N   35   38    4  Census American Indian/Alaska Native Area Code
           VTD  Yes    R     A   39   44    6  Voting District Code
            UA  Yes    L     N   45   49    5  Census Urbanized Area Code
          ANRC  Yes    L     N   50   51    2  Census Alaska Native Regional Corporation Code
       CENSUS5  Yes    L     N   52   54    3  Census Use 5
          NAME   No    L     A   55  112   58  Name of Geographic Area
    
    
    



=head1 AUTHOR

Michael G Schwern <schwern@pobox.com>

=head1 SEE ALSO

L<Geo::TigerLine>, L<mk_parsers>

=cut


return 'Honey flash!';
