package Geo::TigerLine::Record::3;

use strict;

use Carp::Assert;
use base qw(Geo::TigerLine::Record::Parser Geo::TigerLine::Record::Accessor
            Geo::TigerLine::Record Class::Data::Inheritable);

use vars qw($VERSION);
$VERSION = '0.01';


# Auto-generated data dictionary.
my %Data_Dict = (
               'vtd90l' => {
                             'beg' => '104',
                             'bv' => 'Yes',
                             'description' => 'Voting District Code, 1990 Left',
                             'fieldnum' => '28',
                             'len' => '4',
                             'end' => '107',
                             'fmt' => 'L',
                             'field' => 'vtd90l',
                             'type' => 'A'
                           },
               'trust90r' => {
                               'beg' => '67',
                               'bv' => 'Yes',
                               'description' => 'American Indian Trust Land Flag 1990, Right',
                               'fieldnum' => '17',
                               'len' => '1',
                               'end' => '67',
                               'fmt' => 'L',
                               'field' => 'trust90r',
                               'type' => 'A'
                             },
               'blk90r' => {
                             'beg' => '74',
                             'bv' => 'Yes',
                             'description' => 'Census Block Number, 1990 Right',
                             'fieldnum' => '20',
                             'len' => '4',
                             'end' => '77',
                             'fmt' => 'L',
                             'field' => 'blk90r',
                             'type' => 'A'
                           },
               'fmcd90l' => {
                              'beg' => '26',
                              'bv' => 'Yes',
                              'description' => 'FIPS 55 Code (MCD/CCD), 1990 Left',
                              'fieldnum' => '8',
                              'len' => '5',
                              'end' => '30',
                              'fmt' => 'L',
                              'field' => 'fmcd90l',
                              'type' => 'N'
                            },
               'coun90r' => {
                              'beg' => '23',
                              'bv' => 'Yes',
                              'description' => 'FIPS County Code, 1990 Right',
                              'fieldnum' => '7',
                              'len' => '3',
                              'end' => '25',
                              'fmt' => 'L',
                              'field' => 'coun90r',
                              'type' => 'N'
                            },
               'fanrcr' => {
                             'beg' => '91',
                             'bv' => 'Yes',
                             'description' => 'FIPS 55 Code (ANRC), Current Right',
                             'fieldnum' => '24',
                             'len' => '5',
                             'end' => '95',
                             'fmt' => 'L',
                             'field' => 'fanrcr',
                             'type' => 'N'
                           },
               'airr' => {
                           'beg' => '82',
                           'bv' => 'Yes',
                           'description' => 'Census American Indian/Alaska Native Area Code, Current Right',
                           'fieldnum' => '22',
                           'len' => '4',
                           'end' => '85',
                           'fmt' => 'L',
                           'field' => 'airr',
                           'type' => 'N'
                         },
               'air90l' => {
                             'beg' => '58',
                             'bv' => 'Yes',
                             'description' => 'Census American Indian/Alaska Native Area Code 1990, Left',
                             'fieldnum' => '14',
                             'len' => '4',
                             'end' => '61',
                             'fmt' => 'L',
                             'field' => 'air90l',
                             'type' => 'N'
                           },
               'vtd90r' => {
                             'beg' => '108',
                             'bv' => 'Yes',
                             'description' => 'Voting District Code, 1990 Right',
                             'fieldnum' => '29',
                             'len' => '4',
                             'end' => '111',
                             'fmt' => 'L',
                             'field' => 'vtd90r',
                             'type' => 'A'
                           },
               'ctbna90l' => {
                               'beg' => '46',
                               'bv' => 'Yes',
                               'description' => 'Census Tract/BNA Code, 1990 Left',
                               'fieldnum' => '12',
                               'len' => '6',
                               'end' => '51',
                               'fmt' => 'L',
                               'field' => 'ctbna90l',
                               'type' => 'N'
                             },
               'fmcd90r' => {
                              'beg' => '31',
                              'bv' => 'Yes',
                              'description' => 'FIPS 55 Code (MCD/CCD), 1990 Right',
                              'fieldnum' => '9',
                              'len' => '5',
                              'end' => '35',
                              'fmt' => 'L',
                              'field' => 'fmcd90r',
                              'type' => 'N'
                            },
               'air90r' => {
                             'beg' => '62',
                             'bv' => 'Yes',
                             'description' => 'Census American Indian/Alaska Native Area Code 1990, Right',
                             'fieldnum' => '15',
                             'len' => '4',
                             'end' => '65',
                             'fmt' => 'L',
                             'field' => 'air90r',
                             'type' => 'N'
                           },
               'fpl90l' => {
                             'beg' => '36',
                             'bv' => 'Yes',
                             'description' => 'FIPS 55 Code (Place/CDP), 1990 Left',
                             'fieldnum' => '10',
                             'len' => '5',
                             'end' => '40',
                             'fmt' => 'L',
                             'field' => 'fpl90l',
                             'type' => 'N'
                           },
               'ctbna90r' => {
                               'beg' => '52',
                               'bv' => 'Yes',
                               'description' => 'Census Tract/BNA Code, 1990 Right',
                               'fieldnum' => '13',
                               'len' => '6',
                               'end' => '57',
                               'fmt' => 'L',
                               'field' => 'ctbna90r',
                               'type' => 'N'
                             },
               'state90l' => {
                               'beg' => '16',
                               'bv' => 'Yes',
                               'description' => 'FIPS State Code, 1990 Left',
                               'fieldnum' => '4',
                               'len' => '2',
                               'end' => '17',
                               'fmt' => 'L',
                               'field' => 'state90l',
                               'type' => 'N'
                             },
               'fpl90r' => {
                             'beg' => '41',
                             'bv' => 'Yes',
                             'description' => 'FIPS 55 Code (Place/CDP), 1990 Right',
                             'fieldnum' => '11',
                             'len' => '5',
                             'end' => '45',
                             'fmt' => 'L',
                             'field' => 'fpl90r',
                             'type' => 'N'
                           },
               'census3' => {
                              'beg' => '96',
                              'bv' => 'Yes',
                              'description' => 'Census Use 3',
                              'fieldnum' => '25',
                              'len' => '3',
                              'end' => '98',
                              'fmt' => 'L',
                              'field' => 'census3',
                              'type' => 'N'
                            },
               'census4' => {
                              'beg' => '99',
                              'bv' => 'Yes',
                              'description' => 'Census Use 4',
                              'fieldnum' => '26',
                              'len' => '3',
                              'end' => '101',
                              'fmt' => 'L',
                              'field' => 'census4',
                              'type' => 'N'
                            },
               'rs1' => {
                          'beg' => '68',
                          'bv' => 'Yes',
                          'description' => 'Reserved Space 1',
                          'fieldnum' => '18',
                          'len' => '2',
                          'end' => '69',
                          'fmt' => 'L',
                          'field' => 'rs1',
                          'type' => 'A'
                        },
               'rs2' => {
                          'beg' => '102',
                          'bv' => 'Yes',
                          'description' => 'Reserved Space 2',
                          'fieldnum' => '27',
                          'len' => '2',
                          'end' => '103',
                          'fmt' => 'L',
                          'field' => 'rs2',
                          'type' => 'A'
                        },
               'state90r' => {
                               'beg' => '18',
                               'bv' => 'Yes',
                               'description' => 'FIPS State Code, 1990 Right',
                               'fieldnum' => '5',
                               'len' => '2',
                               'end' => '19',
                               'fmt' => 'L',
                               'field' => 'state90r',
                               'type' => 'N'
                             },
               'tlid' => {
                           'beg' => '6',
                           'bv' => 'No',
                           'description' => 'TIGER/Line ID, Permanent Record Number',
                           'fieldnum' => '3',
                           'len' => '10',
                           'end' => '15',
                           'fmt' => 'R',
                           'field' => 'tlid',
                           'type' => 'N'
                         },
               'trust90l' => {
                               'beg' => '66',
                               'bv' => 'Yes',
                               'description' => 'American Indian Trust Land Flag 1990, Left',
                               'fieldnum' => '16',
                               'len' => '1',
                               'end' => '66',
                               'fmt' => 'L',
                               'field' => 'trust90l',
                               'type' => 'A'
                             },
               'blk90l' => {
                             'beg' => '70',
                             'bv' => 'Yes',
                             'description' => 'Census Block Number, 1990 Left',
                             'fieldnum' => '19',
                             'len' => '4',
                             'end' => '73',
                             'fmt' => 'L',
                             'field' => 'blk90l',
                             'type' => 'A'
                           },
               'coun90l' => {
                              'beg' => '20',
                              'bv' => 'Yes',
                              'description' => 'FIPS County Code, 1990 Left',
                              'fieldnum' => '6',
                              'len' => '3',
                              'end' => '22',
                              'fmt' => 'L',
                              'field' => 'coun90l',
                              'type' => 'N'
                            },
               'fanrcl' => {
                             'beg' => '86',
                             'bv' => 'Yes',
                             'description' => 'FIPS 55 Code (ANRC), Current Left',
                             'fieldnum' => '23',
                             'len' => '5',
                             'end' => '90',
                             'fmt' => 'L',
                             'field' => 'fanrcl',
                             'type' => 'N'
                           },
               'airl' => {
                           'beg' => '78',
                           'bv' => 'Yes',
                           'description' => 'Census American Indian/Alaska Native Area Code, Current Left',
                           'fieldnum' => '21',
                           'len' => '4',
                           'end' => '81',
                           'fmt' => 'L',
                           'field' => 'airl',
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
                 'tlid',
                 'state90l',
                 'state90r',
                 'coun90l',
                 'coun90r',
                 'fmcd90l',
                 'fmcd90r',
                 'fpl90l',
                 'fpl90r',
                 'ctbna90l',
                 'ctbna90r',
                 'air90l',
                 'air90r',
                 'trust90l',
                 'trust90r',
                 'rs1',
                 'blk90l',
                 'blk90r',
                 'airl',
                 'airr',
                 'fanrcl',
                 'fanrcr',
                 'census3',
                 'census4',
                 'rs2',
                 'vtd90l',
                 'vtd90r'
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

Geo::TigerLine::Record::3 - TIGER/Line 1998 Complete Chain Geographic Entity Codes

=head1 SYNOPSIS

  use Geo::TigerLine::Record::3;

  @records = Geo::TigerLine::Record::3->parse_file($fh);
  @records = Geo::TigerLine::Record::3->parse_file($fh, \&callback);

  $record = Geo::TigerLine::Record::3->new(\%fields);

  $record->rt();
  $record->version();
  $record->tlid();
  $record->state90l();
  $record->state90r();
  $record->coun90l();
  $record->coun90r();
  $record->fmcd90l();
  $record->fmcd90r();
  $record->fpl90l();
  $record->fpl90r();
  $record->ctbna90l();
  $record->ctbna90r();
  $record->air90l();
  $record->air90r();
  $record->trust90l();
  $record->trust90r();
  $record->rs1();
  $record->blk90l();
  $record->blk90r();
  $record->airl();
  $record->airr();
  $record->fanrcl();
  $record->fanrcr();
  $record->census3();
  $record->census4();
  $record->rs2();
  $record->vtd90l();
  $record->vtd90r();


=head1 DESCRIPTION

This is a class representing record type 3 of the TIGER/Line 1998
census geographic database.  Each object is one record.  It also
contains methods to parse TIGER/Line record type 3 files and turn them
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


=item B<tlid>

    $data = $record->tlid();
    $record->tlid($data);

TIGER/Line ID, Permanent Record Number.  

Expects numeric data of no more than 10 characters.  $data cannot be blank 
and should be right justified.


=item B<state90l>

    $data = $record->state90l();
    $record->state90l($data);

FIPS State Code, 1990 Left.  

Expects numeric data of no more than 2 characters.  $data can be blank 
and should be left justified.


=item B<state90r>

    $data = $record->state90r();
    $record->state90r($data);

FIPS State Code, 1990 Right.  

Expects numeric data of no more than 2 characters.  $data can be blank 
and should be left justified.


=item B<coun90l>

    $data = $record->coun90l();
    $record->coun90l($data);

FIPS County Code, 1990 Left.  

Expects numeric data of no more than 3 characters.  $data can be blank 
and should be left justified.


=item B<coun90r>

    $data = $record->coun90r();
    $record->coun90r($data);

FIPS County Code, 1990 Right.  

Expects numeric data of no more than 3 characters.  $data can be blank 
and should be left justified.


=item B<fmcd90l>

    $data = $record->fmcd90l();
    $record->fmcd90l($data);

FIPS 55 Code (MCD/CCD), 1990 Left.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<fmcd90r>

    $data = $record->fmcd90r();
    $record->fmcd90r($data);

FIPS 55 Code (MCD/CCD), 1990 Right.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<fpl90l>

    $data = $record->fpl90l();
    $record->fpl90l($data);

FIPS 55 Code (Place/CDP), 1990 Left.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<fpl90r>

    $data = $record->fpl90r();
    $record->fpl90r($data);

FIPS 55 Code (Place/CDP), 1990 Right.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<ctbna90l>

    $data = $record->ctbna90l();
    $record->ctbna90l($data);

Census Tract/BNA Code, 1990 Left.  

Expects numeric data of no more than 6 characters.  $data can be blank 
and should be left justified.


=item B<ctbna90r>

    $data = $record->ctbna90r();
    $record->ctbna90r($data);

Census Tract/BNA Code, 1990 Right.  

Expects numeric data of no more than 6 characters.  $data can be blank 
and should be left justified.


=item B<air90l>

    $data = $record->air90l();
    $record->air90l($data);

Census American Indian/Alaska Native Area Code 1990, Left.  

Expects numeric data of no more than 4 characters.  $data can be blank 
and should be left justified.


=item B<air90r>

    $data = $record->air90r();
    $record->air90r($data);

Census American Indian/Alaska Native Area Code 1990, Right.  

Expects numeric data of no more than 4 characters.  $data can be blank 
and should be left justified.


=item B<trust90l>

    $data = $record->trust90l();
    $record->trust90l($data);

American Indian Trust Land Flag 1990, Left.  

Expects alphanumeric data of no more than 1 characters.  $data can be blank 
and should be left justified.


=item B<trust90r>

    $data = $record->trust90r();
    $record->trust90r($data);

American Indian Trust Land Flag 1990, Right.  

Expects alphanumeric data of no more than 1 characters.  $data can be blank 
and should be left justified.


=item B<rs1>

    $data = $record->rs1();
    $record->rs1($data);

Reserved Space 1.  

Expects alphanumeric data of no more than 2 characters.  $data can be blank 
and should be left justified.


=item B<blk90l>

    $data = $record->blk90l();
    $record->blk90l($data);

Census Block Number, 1990 Left.  

Expects alphanumeric data of no more than 4 characters.  $data can be blank 
and should be left justified.


=item B<blk90r>

    $data = $record->blk90r();
    $record->blk90r($data);

Census Block Number, 1990 Right.  

Expects alphanumeric data of no more than 4 characters.  $data can be blank 
and should be left justified.


=item B<airl>

    $data = $record->airl();
    $record->airl($data);

Census American Indian/Alaska Native Area Code, Current Left.  

Expects numeric data of no more than 4 characters.  $data can be blank 
and should be left justified.


=item B<airr>

    $data = $record->airr();
    $record->airr($data);

Census American Indian/Alaska Native Area Code, Current Right.  

Expects numeric data of no more than 4 characters.  $data can be blank 
and should be left justified.


=item B<fanrcl>

    $data = $record->fanrcl();
    $record->fanrcl($data);

FIPS 55 Code (ANRC), Current Left.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<fanrcr>

    $data = $record->fanrcr();
    $record->fanrcr($data);

FIPS 55 Code (ANRC), Current Right.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<census3>

    $data = $record->census3();
    $record->census3($data);

Census Use 3.  

Expects numeric data of no more than 3 characters.  $data can be blank 
and should be left justified.


=item B<census4>

    $data = $record->census4();
    $record->census4($data);

Census Use 4.  

Expects numeric data of no more than 3 characters.  $data can be blank 
and should be left justified.


=item B<rs2>

    $data = $record->rs2();
    $record->rs2($data);

Reserved Space 2.  

Expects alphanumeric data of no more than 2 characters.  $data can be blank 
and should be left justified.


=item B<vtd90l>

    $data = $record->vtd90l();
    $record->vtd90l($data);

Voting District Code, 1990 Left.  

Expects alphanumeric data of no more than 4 characters.  $data can be blank 
and should be left justified.


=item B<vtd90r>

    $data = $record->vtd90r();
    $record->vtd90r($data);

Voting District Code, 1990 Right.  

Expects alphanumeric data of no more than 4 characters.  $data can be blank 
and should be left justified.



=back


=head2 Data dictionary

This is the original TIGER/Line 1998 data dictionary from which this
class was generated.

    Record Type 3 - Complete Chain Geographic Entity Codes
    
         Field   BV  Fmt  Type  Beg  End  Len  Description
            RT   No    L     A    1    1    1  Record Type
       VERSION   No    L     N    2    5    4  Version Number
          TLID   No    R     N    6   15   10  TIGER/Line ID, Permanent Record Number
      STATE90L  Yes    L     N   16   17    2  FIPS State Code, 1990 Left
      STATE90R  Yes    L     N   18   19    2  FIPS State Code, 1990 Right
       COUN90L  Yes    L     N   20   22    3  FIPS County Code, 1990 Left
       COUN90R  Yes    L     N   23   25    3  FIPS County Code, 1990 Right
       FMCD90L  Yes    L     N   26   30    5  FIPS 55 Code (MCD/CCD), 1990 Left
       FMCD90R  Yes    L     N   31   35    5  FIPS 55 Code (MCD/CCD), 1990 Right
        FPL90L  Yes    L     N   36   40    5  FIPS 55 Code (Place/CDP), 1990 Left
        FPL90R  Yes    L     N   41   45    5  FIPS 55 Code (Place/CDP), 1990 Right
      CTBNA90L  Yes    L     N   46   51    6  Census Tract/BNA Code, 1990 Left
      CTBNA90R  Yes    L     N   52   57    6  Census Tract/BNA Code, 1990 Right
        AIR90L  Yes    L     N   58   61    4  Census American Indian/Alaska Native Area Code 1990, Left
        AIR90R  Yes    L     N   62   65    4  Census American Indian/Alaska Native Area Code 1990, Right
      TRUST90L  Yes    L     A   66   66    1  American Indian Trust Land Flag 1990, Left
      TRUST90R  Yes    L     A   67   67    1  American Indian Trust Land Flag 1990, Right
           RS1  Yes    L     A   68   69    2  Reserved Space 1
        BLK90L  Yes    L     A   70   73    4  Census Block Number, 1990 Left
        BLK90R  Yes    L     A   74   77    4  Census Block Number, 1990 Right
          AIRL  Yes    L     N   78   81    4  Census American Indian/Alaska Native Area Code, Current Left
          AIRR  Yes    L     N   82   85    4  Census American Indian/Alaska Native Area Code, Current Right
        FANRCL  Yes    L     N   86   90    5  FIPS 55 Code (ANRC), Current Left
        FANRCR  Yes    L     N   91   95    5  FIPS 55 Code (ANRC), Current Right
       CENSUS3  Yes    L     N   96   98    3  Census Use 3
       CENSUS4  Yes    L     N   99  101    3  Census Use 4
           RS2  Yes    L     A  102  103    2  Reserved Space 2
        VTD90L  Yes    L     A  104  107    4  Voting District Code, 1990 Left
        VTD90R  Yes    L     A  108  111    4  Voting District Code, 1990 Right
    
    
    



=head1 AUTHOR

Michael G Schwern <schwern@pobox.com>

=head1 SEE ALSO

L<Geo::TigerLine>, L<mk_parsers>

=cut


return 'Honey flash!';
