package Geo::TigerLine::Record::A;

use strict;

use Carp::Assert;
use base qw(Geo::TigerLine::Record::Parser Geo::TigerLine::Record::Accessor
            Geo::TigerLine::Record Class::Data::Inheritable);

use vars qw($VERSION);
$VERSION = '0.01';


# Auto-generated data dictionary.
my %Data_Dict = (
               'ua90' => {
                           'beg' => '81',
                           'bv' => 'Yes',
                           'description' => 'Census Urbanized Area Code, 1990',
                           'fieldnum' => '19',
                           'len' => '4',
                           'end' => '84',
                           'fmt' => 'L',
                           'field' => 'ua90',
                           'type' => 'N'
                         },
               'taz' => {
                          'beg' => '75',
                          'bv' => 'Yes',
                          'description' => 'Traffic Analysis Zone Code, 1990',
                          'fieldnum' => '18',
                          'len' => '6',
                          'end' => '80',
                          'fmt' => 'L',
                          'field' => 'taz',
                          'type' => 'A'
                        },
               'sduni' => {
                            'beg' => '70',
                            'bv' => 'Yes',
                            'description' => 'School District Code, Unified District',
                            'fieldnum' => '17',
                            'len' => '5',
                            'end' => '74',
                            'fmt' => 'L',
                            'field' => 'sduni',
                            'type' => 'A'
                          },
               'ctpp' => {
                           'beg' => '86',
                           'bv' => 'Yes',
                           'description' => 'Census Transportation Planning Package Area Code, 1990',
                           'fieldnum' => '21',
                           'len' => '4',
                           'end' => '89',
                           'fmt' => 'L',
                           'field' => 'ctpp',
                           'type' => 'A'
                         },
               'urbflag' => {
                              'beg' => '85',
                              'bv' => 'Yes',
                              'description' => 'Urban/Rural Indicator, 1990',
                              'fieldnum' => '20',
                              'len' => '1',
                              'end' => '85',
                              'fmt' => 'L',
                              'field' => 'urbflag',
                              'type' => 'A'
                            },
               'sdsec' => {
                            'beg' => '65',
                            'bv' => 'Yes',
                            'description' => 'School District Code, Secondary School',
                            'fieldnum' => '16',
                            'len' => '5',
                            'end' => '69',
                            'fmt' => 'L',
                            'field' => 'sdsec',
                            'type' => 'A'
                          },
               'ctbna90' => {
                              'beg' => '41',
                              'bv' => 'Yes',
                              'description' => 'Census Tract/BNA Code, 1990',
                              'fieldnum' => '10',
                              'len' => '6',
                              'end' => '46',
                              'fmt' => 'L',
                              'field' => 'ctbna90',
                              'type' => 'N'
                            },
               'fpl' => {
                          'beg' => '36',
                          'bv' => 'Yes',
                          'description' => 'FIPS 55 Code (Place/CDP), 1990',
                          'fieldnum' => '9',
                          'len' => '5',
                          'end' => '40',
                          'fmt' => 'L',
                          'field' => 'fpl',
                          'type' => 'N'
                        },
               'blk90' => {
                            'beg' => '47',
                            'bv' => 'Yes',
                            'description' => 'Census Block Number, 1990',
                            'fieldnum' => '11',
                            'len' => '4',
                            'end' => '50',
                            'fmt' => 'L',
                            'field' => 'blk90',
                            'type' => 'A'
                          },
               'fair' => {
                           'beg' => '26',
                           'bv' => 'Yes',
                           'description' => 'FIPS 55 Code (American Indian/Alaska Native Area), 1990',
                           'fieldnum' => '7',
                           'len' => '5',
                           'end' => '30',
                           'fmt' => 'L',
                           'field' => 'fair',
                           'type' => 'N'
                         },
               'coun90' => {
                             'beg' => '92',
                             'bv' => 'Yes',
                             'description' => 'FIPS County Code, 1990',
                             'fieldnum' => '23',
                             'len' => '3',
                             'end' => '94',
                             'fmt' => 'L',
                             'field' => 'coun90',
                             'type' => 'N'
                           },
               'air90' => {
                            'beg' => '95',
                            'bv' => 'Yes',
                            'description' => 'Census American Indian/Alaska Native Area Code, 1990',
                            'fieldnum' => '24',
                            'len' => '4',
                            'end' => '98',
                            'fmt' => 'L',
                            'field' => 'air90',
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
               'ua' => {
                         'beg' => '60',
                         'bv' => 'Yes',
                         'description' => 'Census Urbanized Area Code, 2000 (not filled)',
                         'fieldnum' => '15',
                         'len' => '5',
                         'end' => '64',
                         'fmt' => 'L',
                         'field' => 'ua',
                         'type' => 'N'
                       },
               'cd106' => {
                            'beg' => '51',
                            'bv' => 'Yes',
                            'description' => 'Congressional District Number, 106th',
                            'fieldnum' => '12',
                            'len' => '2',
                            'end' => '52',
                            'fmt' => 'R',
                            'field' => 'cd106',
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
               'sdelm' => {
                            'beg' => '55',
                            'bv' => 'Yes',
                            'description' => 'School District Code, Elementary School',
                            'fieldnum' => '14',
                            'len' => '5',
                            'end' => '59',
                            'fmt' => 'L',
                            'field' => 'sdelm',
                            'type' => 'A'
                          },
               'fmcd' => {
                           'beg' => '31',
                           'bv' => 'Yes',
                           'description' => 'FIPS 55 Code (MCD/CCD), 1990',
                           'fieldnum' => '8',
                           'len' => '5',
                           'end' => '35',
                           'fmt' => 'L',
                           'field' => 'fmcd',
                           'type' => 'N'
                         },
               'cd108' => {
                            'beg' => '53',
                            'bv' => 'Yes',
                            'description' => 'Congressional District Number, 108th',
                            'fieldnum' => '13',
                            'len' => '2',
                            'end' => '54',
                            'fmt' => 'R',
                            'field' => 'cd108',
                            'type' => 'N'
                          },
               'state90' => {
                              'beg' => '90',
                              'bv' => 'Yes',
                              'description' => 'FIPS State Code, 1990',
                              'fieldnum' => '22',
                              'len' => '2',
                              'end' => '91',
                              'fmt' => 'L',
                              'field' => 'state90',
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
                 'fair',
                 'fmcd',
                 'fpl',
                 'ctbna90',
                 'blk90',
                 'cd106',
                 'cd108',
                 'sdelm',
                 'ua',
                 'sdsec',
                 'sduni',
                 'taz',
                 'ua90',
                 'urbflag',
                 'ctpp',
                 'state90',
                 'coun90',
                 'air90'
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

Geo::TigerLine::Record::A - TIGER/Line 1998 Polygon Geographic Entity Codes

=head1 SYNOPSIS

  use Geo::TigerLine::Record::A;

  @records = Geo::TigerLine::Record::A->parse_file($fh);
  @records = Geo::TigerLine::Record::A->parse_file($fh, \&callback);

  $record = Geo::TigerLine::Record::A->new(\%fields);

  $record->rt();
  $record->version();
  $record->state();
  $record->county();
  $record->cenid();
  $record->polyid();
  $record->fair();
  $record->fmcd();
  $record->fpl();
  $record->ctbna90();
  $record->blk90();
  $record->cd106();
  $record->cd108();
  $record->sdelm();
  $record->ua();
  $record->sdsec();
  $record->sduni();
  $record->taz();
  $record->ua90();
  $record->urbflag();
  $record->ctpp();
  $record->state90();
  $record->coun90();
  $record->air90();


=head1 DESCRIPTION

This is a class representing record type A of the TIGER/Line 1998
census geographic database.  Each object is one record.  It also
contains methods to parse TIGER/Line record type A files and turn them
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


=item B<fair>

    $data = $record->fair();
    $record->fair($data);

FIPS 55 Code (American Indian/Alaska Native Area), 1990.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<fmcd>

    $data = $record->fmcd();
    $record->fmcd($data);

FIPS 55 Code (MCD/CCD), 1990.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<fpl>

    $data = $record->fpl();
    $record->fpl($data);

FIPS 55 Code (Place/CDP), 1990.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<ctbna90>

    $data = $record->ctbna90();
    $record->ctbna90($data);

Census Tract/BNA Code, 1990.  

Expects numeric data of no more than 6 characters.  $data can be blank 
and should be left justified.


=item B<blk90>

    $data = $record->blk90();
    $record->blk90($data);

Census Block Number, 1990.  

Expects alphanumeric data of no more than 4 characters.  $data can be blank 
and should be left justified.


=item B<cd106>

    $data = $record->cd106();
    $record->cd106($data);

Congressional District Number, 106th.  

Expects numeric data of no more than 2 characters.  $data can be blank 
and should be right justified.


=item B<cd108>

    $data = $record->cd108();
    $record->cd108($data);

Congressional District Number, 108th.  

Expects numeric data of no more than 2 characters.  $data can be blank 
and should be right justified.


=item B<sdelm>

    $data = $record->sdelm();
    $record->sdelm($data);

School District Code, Elementary School.  

Expects alphanumeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<ua>

    $data = $record->ua();
    $record->ua($data);

Census Urbanized Area Code, 2000 (not filled).  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<sdsec>

    $data = $record->sdsec();
    $record->sdsec($data);

School District Code, Secondary School.  

Expects alphanumeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<sduni>

    $data = $record->sduni();
    $record->sduni($data);

School District Code, Unified District.  

Expects alphanumeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<taz>

    $data = $record->taz();
    $record->taz($data);

Traffic Analysis Zone Code, 1990.  

Expects alphanumeric data of no more than 6 characters.  $data can be blank 
and should be left justified.


=item B<ua90>

    $data = $record->ua90();
    $record->ua90($data);

Census Urbanized Area Code, 1990.  

Expects numeric data of no more than 4 characters.  $data can be blank 
and should be left justified.


=item B<urbflag>

    $data = $record->urbflag();
    $record->urbflag($data);

Urban/Rural Indicator, 1990.  

Expects alphanumeric data of no more than 1 characters.  $data can be blank 
and should be left justified.


=item B<ctpp>

    $data = $record->ctpp();
    $record->ctpp($data);

Census Transportation Planning Package Area Code, 1990.  

Expects alphanumeric data of no more than 4 characters.  $data can be blank 
and should be left justified.


=item B<state90>

    $data = $record->state90();
    $record->state90($data);

FIPS State Code, 1990.  

Expects numeric data of no more than 2 characters.  $data can be blank 
and should be left justified.


=item B<coun90>

    $data = $record->coun90();
    $record->coun90($data);

FIPS County Code, 1990.  

Expects numeric data of no more than 3 characters.  $data can be blank 
and should be left justified.


=item B<air90>

    $data = $record->air90();
    $record->air90($data);

Census American Indian/Alaska Native Area Code, 1990.  

Expects numeric data of no more than 4 characters.  $data can be blank 
and should be left justified.



=back


=head2 Data dictionary

This is the original TIGER/Line 1998 data dictionary from which this
class was generated.

    Record Type A - Polygon Geographic Entity Codes
    
         Field   BV  Fmt  Type  Beg  End  Len  Description
            RT   No    L     A    1    1    1  Record Type
       VERSION   No    L     N    2    5    4  Version Number
         STATE   No    L     N    6    7    2  FIPS State Code for File
        COUNTY   No    L     N    8   10    3  FIPS County Code for File
         CENID   No    L     A   11   15    5  Census File Identification Code
        POLYID   No    R     N   16   25   10  Polygon Identification Code
          FAIR  Yes    L     N   26   30    5  FIPS 55 Code (American Indian/Alaska Native Area), 1990
          FMCD  Yes    L     N   31   35    5  FIPS 55 Code (MCD/CCD), 1990
           FPL  Yes    L     N   36   40    5  FIPS 55 Code (Place/CDP), 1990
       CTBNA90  Yes    L     N   41   46    6  Census Tract/BNA Code, 1990
         BLK90  Yes    L     A   47   50    4  Census Block Number, 1990
         CD106  Yes    R     N   51   52    2  Congressional District Number, 106th
         CD108  Yes    R     N   53   54    2  Congressional District Number, 108th
         SDELM  Yes    L     A   55   59    5  School District Code, Elementary School
            UA  Yes    L     N   60   64    5  Census Urbanized Area Code, 2000 (not filled)
         SDSEC  Yes    L     A   65   69    5  School District Code, Secondary School
         SDUNI  Yes    L     A   70   74    5  School District Code, Unified District
           TAZ  Yes    L     A   75   80    6  Traffic Analysis Zone Code, 1990
          UA90  Yes    L     N   81   84    4  Census Urbanized Area Code, 1990
       URBFLAG  Yes    L     A   85   85    1  Urban/Rural Indicator, 1990
          CTPP  Yes    L     A   86   89    4  Census Transportation Planning Package Area Code, 1990
       STATE90  Yes    L     N   90   91    2  FIPS State Code, 1990
        COUN90  Yes    L     N   92   94    3  FIPS County Code, 1990
         AIR90  Yes    L     N   95   98    4  Census American Indian/Alaska Native Area Code, 1990
    
    
    



=head1 AUTHOR

Michael G Schwern <schwern@pobox.com>

=head1 SEE ALSO

L<Geo::TigerLine>, L<mk_parsers>

=cut


return 'Honey flash!';
