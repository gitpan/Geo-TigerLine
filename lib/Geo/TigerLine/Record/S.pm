package Geo::TigerLine::Record::S;

use strict;

use Carp::Assert;
use base qw(Geo::TigerLine::Record::Parser Geo::TigerLine::Record::Accessor
            Geo::TigerLine::Record Class::Data::Inheritable);

use vars qw($VERSION);
$VERSION = '0.01';


# Auto-generated data dictionary.
my %Data_Dict = (
               'sthouse' => {
                              'beg' => '88',
                              'bv' => 'Yes',
                              'description' => 'State House District Code (not filled)',
                              'fieldnum' => '25',
                              'len' => '3',
                              'end' => '90',
                              'fmt' => 'R',
                              'field' => 'sthouse',
                              'type' => 'A'
                            },
               'zcta' => {
                           'beg' => '114',
                           'bv' => 'Yes',
                           'description' => 'ZIP Code ® Tabulation Area, 2000 (not filled)',
                           'fieldnum' => '33',
                           'len' => '5',
                           'end' => '118',
                           'fmt' => 'L',
                           'field' => 'zcta',
                           'type' => 'A'
                         },
               'fpl' => {
                          'beg' => '67',
                          'bv' => 'Yes',
                          'description' => 'FIPS 55 Code (Place), Current',
                          'fieldnum' => '19',
                          'len' => '5',
                          'end' => '71',
                          'fmt' => 'L',
                          'field' => 'fpl',
                          'type' => 'N'
                        },
               'fsmcd' => {
                            'beg' => '62',
                            'bv' => 'Yes',
                            'description' => 'FIPS 55 Code (Sub-MCD), Current',
                            'fieldnum' => '18',
                            'len' => '5',
                            'end' => '66',
                            'fmt' => 'L',
                            'field' => 'fsmcd',
                            'type' => 'N'
                          },
               'fair' => {
                           'beg' => '35',
                           'bv' => 'Yes',
                           'description' => 'FIPS 55 Code (American Indian/Alaska Native Area), Current',
                           'fieldnum' => '10',
                           'len' => '5',
                           'end' => '39',
                           'fmt' => 'L',
                           'field' => 'fair',
                           'type' => 'N'
                         },
               'statecol' => {
                               'beg' => '103',
                               'bv' => 'Yes',
                               'description' => 'Census 2000 Collection State FIPS Code',
                               'fieldnum' => '29',
                               'len' => '2',
                               'end' => '104',
                               'fmt' => 'L',
                               'field' => 'statecol',
                               'type' => 'N'
                             },
               'fmcd' => {
                           'beg' => '57',
                           'bv' => 'Yes',
                           'description' => 'FIPS 55 Code (MCD/CCD), Current',
                           'fieldnum' => '17',
                           'len' => '5',
                           'end' => '61',
                           'fmt' => 'L',
                           'field' => 'fmcd',
                           'type' => 'N'
                         },
               'census6' => {
                              'beg' => '82',
                              'bv' => 'Yes',
                              'description' => 'Census Use 6',
                              'fieldnum' => '22',
                              'len' => '1',
                              'end' => '82',
                              'fmt' => 'R',
                              'field' => 'census6',
                              'type' => 'N'
                            },
               'census7' => {
                              'beg' => '91',
                              'bv' => 'Yes',
                              'description' => 'Census Use 7',
                              'fieldnum' => '26',
                              'len' => '5',
                              'end' => '95',
                              'fmt' => 'L',
                              'field' => 'census7',
                              'type' => 'A'
                            },
               'trust' => {
                            'beg' => '44',
                            'bv' => 'Yes',
                            'description' => 'American Indian Trust Land Flag, Current',
                            'fieldnum' => '12',
                            'len' => '1',
                            'end' => '44',
                            'fmt' => 'L',
                            'field' => 'trust',
                            'type' => 'A'
                          },
               'blkcol' => {
                             'beg' => '108',
                             'bv' => 'Yes',
                             'description' => 'Census 2000 Collection Block Number',
                             'fieldnum' => '31',
                             'len' => '5',
                             'end' => '112',
                             'fmt' => 'R',
                             'field' => 'blkcol',
                             'type' => 'N'
                           },
               'councol' => {
                              'beg' => '105',
                              'bv' => 'Yes',
                              'description' => 'Census 2000 Collection County FIPS Code',
                              'fieldnum' => '30',
                              'len' => '3',
                              'end' => '107',
                              'fmt' => 'L',
                              'field' => 'councol',
                              'type' => 'N'
                            },
               'rs7' => {
                          'beg' => '96',
                          'bv' => 'Yes',
                          'description' => 'Reserved Space 7',
                          'fieldnum' => '27',
                          'len' => '1',
                          'end' => '96',
                          'fmt' => 'L',
                          'field' => 'rs7',
                          'type' => 'A'
                        },
               'rs8' => {
                          'beg' => '119',
                          'bv' => 'Yes',
                          'description' => 'Reserved Space 8',
                          'fieldnum' => '34',
                          'len' => '2',
                          'end' => '120',
                          'fmt' => 'L',
                          'field' => 'rs8',
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
               'cdcu' => {
                           'beg' => '83',
                           'bv' => 'Yes',
                           'description' => 'Congressional District Code, Current',
                           'fieldnum' => '23',
                           'len' => '2',
                           'end' => '84',
                           'fmt' => 'R',
                           'field' => 'cdcu',
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
               'water' => {
                            'beg' => '26',
                            'bv' => 'Yes',
                            'description' => 'Water Flag',
                            'fieldnum' => '7',
                            'len' => '1',
                            'end' => '26',
                            'fmt' => 'L',
                            'field' => 'water',
                            'type' => 'N'
                          },
               'ct' => {
                         'beg' => '72',
                         'bv' => 'Yes',
                         'description' => 'Census Tract Code, 1990',
                         'fieldnum' => '20',
                         'len' => '6',
                         'end' => '77',
                         'fmt' => 'L',
                         'field' => 'ct',
                         'type' => 'N'
                       },
               'ma' => {
                         'beg' => '31',
                         'bv' => 'Yes',
                         'description' => 'FIPS Metropolitan Area Code, Current',
                         'fieldnum' => '9',
                         'len' => '4',
                         'end' => '34',
                         'fmt' => 'L',
                         'field' => 'ma',
                         'type' => 'N'
                       },
               'anrc' => {
                           'beg' => '45',
                           'bv' => 'Yes',
                           'description' => 'Census Alaska Native Regional Corporation Code, Current',
                           'fieldnum' => '13',
                           'len' => '2',
                           'end' => '46',
                           'fmt' => 'L',
                           'field' => 'anrc',
                           'type' => 'N'
                         },
               'blksufcol' => {
                                'beg' => '113',
                                'bv' => 'Yes',
                                'description' => 'Census 2000 Collection Block Number Suffix',
                                'fieldnum' => '32',
                                'len' => '1',
                                'end' => '113',
                                'fmt' => 'L',
                                'field' => 'blksufcol',
                                'type' => 'A'
                              },
               'cmsa' => {
                           'beg' => '27',
                           'bv' => 'Yes',
                           'description' => 'FIPS Consolidated Metropolitan Statistical Area Code, Current',
                           'fieldnum' => '8',
                           'len' => '4',
                           'end' => '30',
                           'fmt' => 'L',
                           'field' => 'cmsa',
                           'type' => 'N'
                         },
               'fccity' => {
                             'beg' => '52',
                             'bv' => 'Yes',
                             'description' => 'FIPS 55 Code (Consolidated City), Current',
                             'fieldnum' => '16',
                             'len' => '5',
                             'end' => '56',
                             'fmt' => 'L',
                             'field' => 'fccity',
                             'type' => 'N'
                           },
               'air' => {
                          'beg' => '40',
                          'bv' => 'Yes',
                          'description' => 'Census American Indian/Alaska Native Area Code, Current',
                          'fieldnum' => '11',
                          'len' => '4',
                          'end' => '43',
                          'fmt' => 'L',
                          'field' => 'air',
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
                            'beg' => '47',
                            'bv' => 'Yes',
                            'description' => 'FIPS State Code, Current',
                            'fieldnum' => '14',
                            'len' => '2',
                            'end' => '48',
                            'fmt' => 'L',
                            'field' => 'state',
                            'type' => 'N'
                          },
               'county' => {
                             'beg' => '49',
                             'bv' => 'Yes',
                             'description' => 'FIPS County Code, Current',
                             'fieldnum' => '15',
                             'len' => '3',
                             'end' => '51',
                             'fmt' => 'L',
                             'field' => 'county',
                             'type' => 'N'
                           },
               'blk' => {
                          'beg' => '78',
                          'bv' => 'Yes',
                          'description' => 'Census Block Number, 1990',
                          'fieldnum' => '21',
                          'len' => '4',
                          'end' => '81',
                          'fmt' => 'L',
                          'field' => 'blk',
                          'type' => 'A'
                        },
               'stsenate' => {
                               'beg' => '85',
                               'bv' => 'Yes',
                               'description' => 'State Senate District Code (not filled)',
                               'fieldnum' => '24',
                               'len' => '3',
                               'end' => '87',
                               'fmt' => 'R',
                               'field' => 'stsenate',
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
               'vtd' => {
                          'beg' => '97',
                          'bv' => 'Yes',
                          'description' => 'Voting District Code (not filled)',
                          'fieldnum' => '28',
                          'len' => '6',
                          'end' => '102',
                          'fmt' => 'L',
                          'field' => 'vtd',
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
                 'water',
                 'cmsa',
                 'ma',
                 'fair',
                 'air',
                 'trust',
                 'anrc',
                 'state',
                 'county',
                 'fccity',
                 'fmcd',
                 'fsmcd',
                 'fpl',
                 'ct',
                 'blk',
                 'census6',
                 'cdcu',
                 'stsenate',
                 'sthouse',
                 'census7',
                 'rs7',
                 'vtd',
                 'statecol',
                 'councol',
                 'blkcol',
                 'blksufcol',
                 'zcta',
                 'rs8'
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

Geo::TigerLine::Record::S - TIGER/Line 1998 Polygon Additional Geographic Entity Codes

=head1 SYNOPSIS

  use Geo::TigerLine::Record::S;

  @records = Geo::TigerLine::Record::S->parse_file($fh);
  @records = Geo::TigerLine::Record::S->parse_file($fh, \&callback);

  $record = Geo::TigerLine::Record::S->new(\%fields);

  $record->rt();
  $record->version();
  $record->state();
  $record->county();
  $record->cenid();
  $record->polyid();
  $record->water();
  $record->cmsa();
  $record->ma();
  $record->fair();
  $record->air();
  $record->trust();
  $record->anrc();
  $record->state();
  $record->county();
  $record->fccity();
  $record->fmcd();
  $record->fsmcd();
  $record->fpl();
  $record->ct();
  $record->blk();
  $record->census6();
  $record->cdcu();
  $record->stsenate();
  $record->sthouse();
  $record->census7();
  $record->rs7();
  $record->vtd();
  $record->statecol();
  $record->councol();
  $record->blkcol();
  $record->blksufcol();
  $record->zcta();
  $record->rs8();


=head1 DESCRIPTION

This is a class representing record type S of the TIGER/Line 1998
census geographic database.  Each object is one record.  It also
contains methods to parse TIGER/Line record type S files and turn them
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

FIPS State Code, Current.  

Expects numeric data of no more than 2 characters.  $data can be blank 
and should be left justified.


=item B<county>

    $data = $record->county();
    $record->county($data);

FIPS County Code, Current.  

Expects numeric data of no more than 3 characters.  $data can be blank 
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


=item B<water>

    $data = $record->water();
    $record->water($data);

Water Flag.  

Expects numeric data of no more than 1 characters.  $data can be blank 
and should be left justified.


=item B<cmsa>

    $data = $record->cmsa();
    $record->cmsa($data);

FIPS Consolidated Metropolitan Statistical Area Code, Current.  

Expects numeric data of no more than 4 characters.  $data can be blank 
and should be left justified.


=item B<ma>

    $data = $record->ma();
    $record->ma($data);

FIPS Metropolitan Area Code, Current.  

Expects numeric data of no more than 4 characters.  $data can be blank 
and should be left justified.


=item B<fair>

    $data = $record->fair();
    $record->fair($data);

FIPS 55 Code (American Indian/Alaska Native Area), Current.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<air>

    $data = $record->air();
    $record->air($data);

Census American Indian/Alaska Native Area Code, Current.  

Expects numeric data of no more than 4 characters.  $data can be blank 
and should be left justified.


=item B<trust>

    $data = $record->trust();
    $record->trust($data);

American Indian Trust Land Flag, Current.  

Expects alphanumeric data of no more than 1 characters.  $data can be blank 
and should be left justified.


=item B<anrc>

    $data = $record->anrc();
    $record->anrc($data);

Census Alaska Native Regional Corporation Code, Current.  

Expects numeric data of no more than 2 characters.  $data can be blank 
and should be left justified.


=item B<state>

    $data = $record->state();
    $record->state($data);

FIPS State Code, Current.  

Expects numeric data of no more than 2 characters.  $data can be blank 
and should be left justified.


=item B<county>

    $data = $record->county();
    $record->county($data);

FIPS County Code, Current.  

Expects numeric data of no more than 3 characters.  $data can be blank 
and should be left justified.


=item B<fccity>

    $data = $record->fccity();
    $record->fccity($data);

FIPS 55 Code (Consolidated City), Current.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<fmcd>

    $data = $record->fmcd();
    $record->fmcd($data);

FIPS 55 Code (MCD/CCD), Current.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<fsmcd>

    $data = $record->fsmcd();
    $record->fsmcd($data);

FIPS 55 Code (Sub-MCD), Current.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<fpl>

    $data = $record->fpl();
    $record->fpl($data);

FIPS 55 Code (Place), Current.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<ct>

    $data = $record->ct();
    $record->ct($data);

Census Tract Code, 1990.  

Expects numeric data of no more than 6 characters.  $data can be blank 
and should be left justified.


=item B<blk>

    $data = $record->blk();
    $record->blk($data);

Census Block Number, 1990.  

Expects alphanumeric data of no more than 4 characters.  $data can be blank 
and should be left justified.


=item B<census6>

    $data = $record->census6();
    $record->census6($data);

Census Use 6.  

Expects numeric data of no more than 1 characters.  $data can be blank 
and should be right justified.


=item B<cdcu>

    $data = $record->cdcu();
    $record->cdcu($data);

Congressional District Code, Current.  

Expects numeric data of no more than 2 characters.  $data can be blank 
and should be right justified.


=item B<stsenate>

    $data = $record->stsenate();
    $record->stsenate($data);

State Senate District Code (not filled).  

Expects alphanumeric data of no more than 3 characters.  $data can be blank 
and should be right justified.


=item B<sthouse>

    $data = $record->sthouse();
    $record->sthouse($data);

State House District Code (not filled).  

Expects alphanumeric data of no more than 3 characters.  $data can be blank 
and should be right justified.


=item B<census7>

    $data = $record->census7();
    $record->census7($data);

Census Use 7.  

Expects alphanumeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<rs7>

    $data = $record->rs7();
    $record->rs7($data);

Reserved Space 7.  

Expects alphanumeric data of no more than 1 characters.  $data can be blank 
and should be left justified.


=item B<vtd>

    $data = $record->vtd();
    $record->vtd($data);

Voting District Code (not filled).  

Expects alphanumeric data of no more than 6 characters.  $data can be blank 
and should be left justified.


=item B<statecol>

    $data = $record->statecol();
    $record->statecol($data);

Census 2000 Collection State FIPS Code.  

Expects numeric data of no more than 2 characters.  $data can be blank 
and should be left justified.


=item B<councol>

    $data = $record->councol();
    $record->councol($data);

Census 2000 Collection County FIPS Code.  

Expects numeric data of no more than 3 characters.  $data can be blank 
and should be left justified.


=item B<blkcol>

    $data = $record->blkcol();
    $record->blkcol($data);

Census 2000 Collection Block Number.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be right justified.


=item B<blksufcol>

    $data = $record->blksufcol();
    $record->blksufcol($data);

Census 2000 Collection Block Number Suffix.  

Expects alphanumeric data of no more than 1 characters.  $data can be blank 
and should be left justified.


=item B<zcta>

    $data = $record->zcta();
    $record->zcta($data);

ZIP Code ® Tabulation Area, 2000 (not filled).  

Expects alphanumeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<rs8>

    $data = $record->rs8();
    $record->rs8($data);

Reserved Space 8.  

Expects alphanumeric data of no more than 2 characters.  $data can be blank 
and should be left justified.



=back


=head2 Data dictionary

This is the original TIGER/Line 1998 data dictionary from which this
class was generated.

    Record Type S - Polygon Additional Geographic Entity Codes
    
         Field   BV  Fmt  Type  Beg  End  Len  Description
            RT   No    L     A    1    1    1  Record Type
       VERSION   No    L     N    2    5    4  Version Number
         STATE   No    L     N    6    7    2  FIPS State Code for File
        COUNTY   No    L     N    8   10    3  FIPS County Code for File
         CENID   No    L     A   11   15    5  Census File Identification Code
        POLYID   No    R     N   16   25   10  Polygon Identification Code
         WATER  Yes    L     N   26   26    1  Water Flag
          CMSA  Yes    L     N   27   30    4  FIPS Consolidated Metropolitan Statistical Area Code, Current
            MA  Yes    L     N   31   34    4  FIPS Metropolitan Area Code, Current
          FAIR  Yes    L     N   35   39    5  FIPS 55 Code (American Indian/Alaska Native Area), Current
           AIR  Yes    L     N   40   43    4  Census American Indian/Alaska Native Area Code, Current
         TRUST  Yes    L     A   44   44    1  American Indian Trust Land Flag, Current
          ANRC  Yes    L     N   45   46    2  Census Alaska Native Regional Corporation Code, Current
         STATE  Yes    L     N   47   48    2  FIPS State Code, Current
        COUNTY  Yes    L     N   49   51    3  FIPS County Code, Current
        FCCITY  Yes    L     N   52   56    5  FIPS 55 Code (Consolidated City), Current
          FMCD  Yes    L     N   57   61    5  FIPS 55 Code (MCD/CCD), Current
         FSMCD  Yes    L     N   62   66    5  FIPS 55 Code (Sub-MCD), Current
           FPL  Yes    L     N   67   71    5  FIPS 55 Code (Place), Current
            CT  Yes    L     N   72   77    6  Census Tract Code, 1990
           BLK  Yes    L     A   78   81    4  Census Block Number, 1990
       CENSUS6  Yes    R     N   82   82    1  Census Use 6
          CDCU  Yes    R     N   83   84    2  Congressional District Code, Current
      STSENATE  Yes    R     A   85   87    3  State Senate District Code (not filled)
       STHOUSE  Yes    R     A   88   90    3  State House District Code (not filled)
       CENSUS7  Yes    L     A   91   95    5  Census Use 7
           RS7  Yes    L     A   96   96    1  Reserved Space 7
           VTD  Yes    L     A   97  102    6  Voting District Code (not filled)
      STATECOL  Yes    L     N  103  104    2  Census 2000 Collection State FIPS Code
       COUNCOL  Yes    L     N  105  107    3  Census 2000 Collection County FIPS Code
        BLKCOL  Yes    R     N  108  112    5  Census 2000 Collection Block Number
     BLKSUFCOL  Yes    L     A  113  113    1  Census 2000 Collection Block Number Suffix
          ZCTA  Yes    L     A  114  118    5  ZIP Code ® Tabulation Area, 2000 (not filled)
           RS8  Yes    L     A  119  120    2  Reserved Space 8
    
    
    



=head1 AUTHOR

Michael G Schwern <schwern@pobox.com>

=head1 SEE ALSO

L<Geo::TigerLine>, L<mk_parsers>

=cut


return 'Honey flash!';
