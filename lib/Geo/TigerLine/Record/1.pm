package Geo::TigerLine::Record::1;

use strict;

use Carp::Assert;
use base qw(Geo::TigerLine::Record::Parser Geo::TigerLine::Record::Accessor
            Geo::TigerLine::Record Class::Data::Inheritable);

use vars qw($VERSION);
$VERSION = '0.01';


# Auto-generated data dictionary.
my %Data_Dict = (
               'blkr' => {
                           'beg' => '187',
                           'bv' => 'Yes',
                           'description' => 'Census Block Number, 1990 Right',
                           'fieldnum' => '40',
                           'len' => '4',
                           'end' => '190',
                           'fmt' => 'L',
                           'field' => 'blkr',
                           'type' => 'A'
                         },
               'countyl' => {
                              'beg' => '135',
                              'bv' => 'Yes',
                              'description' => 'FIPS County Code, Current Left',
                              'fieldnum' => '29',
                              'len' => '3',
                              'end' => '137',
                              'fmt' => 'L',
                              'field' => 'countyl',
                              'type' => 'N'
                            },
               'fairr' => {
                            'beg' => '122',
                            'bv' => 'Yes',
                            'description' => 'FIPS 55 Code (American Indian/Alaska Native Area), Current Right',
                            'fieldnum' => '22',
                            'len' => '5',
                            'end' => '126',
                            'fmt' => 'L',
                            'field' => 'fairr',
                            'type' => 'N'
                          },
               'friaddr' => {
                              'beg' => '105',
                              'bv' => 'Yes',
                              'description' => 'Start Imputed Address Flag, Right',
                              'fieldnum' => '17',
                              'len' => '1',
                              'end' => '105',
                              'fmt' => 'L',
                              'field' => 'friaddr',
                              'type' => 'A'
                            },
               'fmcdr' => {
                            'beg' => '146',
                            'bv' => 'Yes',
                            'description' => 'FIPS 55 Code (MCD/CCD) Right, Current',
                            'fieldnum' => '32',
                            'len' => '5',
                            'end' => '150',
                            'fmt' => 'L',
                            'field' => 'fmcdr',
                            'type' => 'N'
                          },
               'source' => {
                             'beg' => '17',
                             'bv' => 'Yes',
                             'description' => 'Linear Segment Source Code',
                             'fieldnum' => '5',
                             'len' => '1',
                             'end' => '17',
                             'fmt' => 'L',
                             'field' => 'source',
                             'type' => 'A'
                           },
               'countyr' => {
                              'beg' => '138',
                              'bv' => 'Yes',
                              'description' => 'FIPS County Code, Current Right',
                              'fieldnum' => '30',
                              'len' => '3',
                              'end' => '140',
                              'fmt' => 'L',
                              'field' => 'countyr',
                              'type' => 'N'
                            },
               'fename' => {
                             'beg' => '20',
                             'bv' => 'Yes',
                             'description' => 'Feature Name',
                             'fieldnum' => '7',
                             'len' => '30',
                             'end' => '49',
                             'fmt' => 'L',
                             'field' => 'fename',
                             'type' => 'A'
                           },
               'census1' => {
                              'beg' => '129',
                              'bv' => 'Yes',
                              'description' => 'Census Use 1',
                              'fieldnum' => '25',
                              'len' => '1',
                              'end' => '129',
                              'fmt' => 'L',
                              'field' => 'census1',
                              'type' => 'A'
                            },
               'fetype' => {
                             'beg' => '50',
                             'bv' => 'Yes',
                             'description' => 'Feature Type',
                             'fieldnum' => '8',
                             'len' => '4',
                             'end' => '53',
                             'fmt' => 'L',
                             'field' => 'fetype',
                             'type' => 'A'
                           },
               'frlong' => {
                             'beg' => '191',
                             'bv' => 'No',
                             'description' => 'Start Longitude',
                             'fieldnum' => '41',
                             'len' => '10',
                             'end' => '200',
                             'fmt' => 'R',
                             'field' => 'frlong',
                             'type' => 'N'
                           },
               'census2' => {
                              'beg' => '130',
                              'bv' => 'Yes',
                              'description' => 'Census Use 2',
                              'fieldnum' => '26',
                              'len' => '1',
                              'end' => '130',
                              'fmt' => 'L',
                              'field' => 'census2',
                              'type' => 'A'
                            },
               'cfcc' => {
                           'beg' => '56',
                           'bv' => 'Yes',
                           'description' => 'Census Feature Class Code',
                           'fieldnum' => '10',
                           'len' => '3',
                           'end' => '58',
                           'fmt' => 'L',
                           'field' => 'cfcc',
                           'type' => 'A'
                         },
               'fraddl' => {
                             'beg' => '59',
                             'bv' => 'Yes',
                             'description' => 'Start Address, Left',
                             'fieldnum' => '11',
                             'len' => '11',
                             'end' => '69',
                             'fmt' => 'R',
                             'field' => 'fraddl',
                             'type' => 'A'
                           },
               'tolong' => {
                             'beg' => '210',
                             'bv' => 'No',
                             'description' => 'End Longitude',
                             'fieldnum' => '43',
                             'len' => '10',
                             'end' => '219',
                             'fmt' => 'R',
                             'field' => 'tolong',
                             'type' => 'N'
                           },
               'toaddl' => {
                             'beg' => '70',
                             'bv' => 'Yes',
                             'description' => 'End Address, Left',
                             'fieldnum' => '12',
                             'len' => '11',
                             'end' => '80',
                             'fmt' => 'R',
                             'field' => 'toaddl',
                             'type' => 'A'
                           },
               'fraddr' => {
                             'beg' => '81',
                             'bv' => 'Yes',
                             'description' => 'Start Address, Right',
                             'fieldnum' => '13',
                             'len' => '11',
                             'end' => '91',
                             'fmt' => 'R',
                             'field' => 'fraddr',
                             'type' => 'A'
                           },
               'zipl' => {
                           'beg' => '107',
                           'bv' => 'Yes',
                           'description' => 'ZIP Code, Left',
                           'fieldnum' => '19',
                           'len' => '5',
                           'end' => '111',
                           'fmt' => 'L',
                           'field' => 'zipl',
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
                       },
               'toaddr' => {
                             'beg' => '92',
                             'bv' => 'Yes',
                             'description' => 'End Address, Right',
                             'fieldnum' => '14',
                             'len' => '11',
                             'end' => '102',
                             'fmt' => 'R',
                             'field' => 'toaddr',
                             'type' => 'A'
                           },
               'statel' => {
                             'beg' => '131',
                             'bv' => 'Yes',
                             'description' => 'FIPS State Code, Current Left',
                             'fieldnum' => '27',
                             'len' => '2',
                             'end' => '132',
                             'fmt' => 'L',
                             'field' => 'statel',
                             'type' => 'N'
                           },
               'zipr' => {
                           'beg' => '112',
                           'bv' => 'Yes',
                           'description' => 'ZIP Code, Right',
                           'fieldnum' => '20',
                           'len' => '5',
                           'end' => '116',
                           'fmt' => 'L',
                           'field' => 'zipr',
                           'type' => 'N'
                         },
               'stater' => {
                             'beg' => '133',
                             'bv' => 'Yes',
                             'description' => 'FIPS State Code, Current Right',
                             'fieldnum' => '28',
                             'len' => '2',
                             'end' => '134',
                             'fmt' => 'L',
                             'field' => 'stater',
                             'type' => 'N'
                           },
               'ctl' => {
                          'beg' => '171',
                          'bv' => 'Yes',
                          'description' => 'Census Tract Code, 1990 Left',
                          'fieldnum' => '37',
                          'len' => '6',
                          'end' => '176',
                          'fmt' => 'L',
                          'field' => 'ctl',
                          'type' => 'N'
                        },
               'fsmcdl' => {
                             'beg' => '151',
                             'bv' => 'Yes',
                             'description' => 'FIPS 55 Code (Sub-MCD), Current Left',
                             'fieldnum' => '33',
                             'len' => '5',
                             'end' => '155',
                             'fmt' => 'L',
                             'field' => 'fsmcdl',
                             'type' => 'N'
                           },
               'trustl' => {
                             'beg' => '127',
                             'bv' => 'Yes',
                             'description' => 'American Indian Trust Land Flag, Current Left',
                             'fieldnum' => '23',
                             'len' => '1',
                             'end' => '127',
                             'fmt' => 'L',
                             'field' => 'trustl',
                             'type' => 'A'
                           },
               'tolat' => {
                            'beg' => '220',
                            'bv' => 'No',
                            'description' => 'End Latitude',
                            'fieldnum' => '44',
                            'len' => '9',
                            'end' => '228',
                            'fmt' => 'R',
                            'field' => 'tolat',
                            'type' => 'N'
                          },
               'ctr' => {
                          'beg' => '177',
                          'bv' => 'Yes',
                          'description' => 'Census Tract Code, 1990 Right',
                          'fieldnum' => '38',
                          'len' => '6',
                          'end' => '182',
                          'fmt' => 'L',
                          'field' => 'ctr',
                          'type' => 'N'
                        },
               'fsmcdr' => {
                             'beg' => '156',
                             'bv' => 'Yes',
                             'description' => 'FIPS 55 Code (Sub-MCD), Current Right',
                             'fieldnum' => '34',
                             'len' => '5',
                             'end' => '160',
                             'fmt' => 'L',
                             'field' => 'fsmcdr',
                             'type' => 'N'
                           },
               'toiaddl' => {
                              'beg' => '104',
                              'bv' => 'Yes',
                              'description' => 'End Imputed Address Flag, Left',
                              'fieldnum' => '16',
                              'len' => '1',
                              'end' => '104',
                              'fmt' => 'L',
                              'field' => 'toiaddl',
                              'type' => 'A'
                            },
               'trustr' => {
                             'beg' => '128',
                             'bv' => 'Yes',
                             'description' => 'American Indian Trust Land Flag, Current Right',
                             'fieldnum' => '24',
                             'len' => '1',
                             'end' => '128',
                             'fmt' => 'L',
                             'field' => 'trustr',
                             'type' => 'A'
                           },
               'fedirp' => {
                             'beg' => '18',
                             'bv' => 'Yes',
                             'description' => 'Feature Direction, Prefix',
                             'fieldnum' => '6',
                             'len' => '2',
                             'end' => '19',
                             'fmt' => 'L',
                             'field' => 'fedirp',
                             'type' => 'A'
                           },
               'frlat' => {
                            'beg' => '201',
                            'bv' => 'No',
                            'description' => 'Start Latitude',
                            'fieldnum' => '42',
                            'len' => '9',
                            'end' => '209',
                            'fmt' => 'R',
                            'field' => 'frlat',
                            'type' => 'N'
                          },
               'fedirs' => {
                             'beg' => '54',
                             'bv' => 'Yes',
                             'description' => 'Feature Direction, Suffix',
                             'fieldnum' => '9',
                             'len' => '2',
                             'end' => '55',
                             'fmt' => 'L',
                             'field' => 'fedirs',
                             'type' => 'A'
                           },
               'toiaddr' => {
                              'beg' => '106',
                              'bv' => 'Yes',
                              'description' => 'End Imputed Address Flag, Right',
                              'fieldnum' => '18',
                              'len' => '1',
                              'end' => '106',
                              'fmt' => 'L',
                              'field' => 'toiaddr',
                              'type' => 'A'
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
               'side1' => {
                            'beg' => '16',
                            'bv' => 'Yes',
                            'description' => 'Single-Side Complete Chain Code',
                            'fieldnum' => '4',
                            'len' => '1',
                            'end' => '16',
                            'fmt' => 'R',
                            'field' => 'side1',
                            'type' => 'N'
                          },
               'fpll' => {
                           'beg' => '161',
                           'bv' => 'Yes',
                           'description' => 'FIPS 55 Code (Incorporated Place), Current Left',
                           'fieldnum' => '35',
                           'len' => '5',
                           'end' => '165',
                           'fmt' => 'L',
                           'field' => 'fpll',
                           'type' => 'N'
                         },
               'blkl' => {
                           'beg' => '183',
                           'bv' => 'Yes',
                           'description' => 'Census Block Number, 1990 Left',
                           'fieldnum' => '39',
                           'len' => '4',
                           'end' => '186',
                           'fmt' => 'L',
                           'field' => 'blkl',
                           'type' => 'A'
                         },
               'friaddl' => {
                              'beg' => '103',
                              'bv' => 'Yes',
                              'description' => 'Start Imputed Address Flag, Left',
                              'fieldnum' => '15',
                              'len' => '1',
                              'end' => '103',
                              'fmt' => 'L',
                              'field' => 'friaddl',
                              'type' => 'A'
                            },
               'fairl' => {
                            'beg' => '117',
                            'bv' => 'Yes',
                            'description' => 'FIPS 55 Code (American Indian/Alaska Native Area), Current Left',
                            'fieldnum' => '21',
                            'len' => '5',
                            'end' => '121',
                            'fmt' => 'L',
                            'field' => 'fairl',
                            'type' => 'N'
                          },
               'fplr' => {
                           'beg' => '166',
                           'bv' => 'Yes',
                           'description' => 'FIPS 55 Code (Incorporated Place), Current Right',
                           'fieldnum' => '36',
                           'len' => '5',
                           'end' => '170',
                           'fmt' => 'L',
                           'field' => 'fplr',
                           'type' => 'N'
                         },
               'fmcdl' => {
                            'beg' => '141',
                            'bv' => 'Yes',
                            'description' => 'FIPS 55 Code (MCD/CCD) Left, Current',
                            'fieldnum' => '31',
                            'len' => '5',
                            'end' => '145',
                            'fmt' => 'L',
                            'field' => 'fmcdl',
                            'type' => 'N'
                          }
             );


my @Data_Fields = (
                 'rt',
                 'version',
                 'tlid',
                 'side1',
                 'source',
                 'fedirp',
                 'fename',
                 'fetype',
                 'fedirs',
                 'cfcc',
                 'fraddl',
                 'toaddl',
                 'fraddr',
                 'toaddr',
                 'friaddl',
                 'toiaddl',
                 'friaddr',
                 'toiaddr',
                 'zipl',
                 'zipr',
                 'fairl',
                 'fairr',
                 'trustl',
                 'trustr',
                 'census1',
                 'census2',
                 'statel',
                 'stater',
                 'countyl',
                 'countyr',
                 'fmcdl',
                 'fmcdr',
                 'fsmcdl',
                 'fsmcdr',
                 'fpll',
                 'fplr',
                 'ctl',
                 'ctr',
                 'blkl',
                 'blkr',
                 'frlong',
                 'frlat',
                 'tolong',
                 'tolat'
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

Geo::TigerLine::Record::1 - TIGER/Line 1998 Complete Chain Basic Data Record

=head1 SYNOPSIS

  use Geo::TigerLine::Record::1;

  @records = Geo::TigerLine::Record::1->parse_file($fh);
  @records = Geo::TigerLine::Record::1->parse_file($fh, \&callback);

  $record = Geo::TigerLine::Record::1->new(\%fields);

  $record->rt();
  $record->version();
  $record->tlid();
  $record->side1();
  $record->source();
  $record->fedirp();
  $record->fename();
  $record->fetype();
  $record->fedirs();
  $record->cfcc();
  $record->fraddl();
  $record->toaddl();
  $record->fraddr();
  $record->toaddr();
  $record->friaddl();
  $record->toiaddl();
  $record->friaddr();
  $record->toiaddr();
  $record->zipl();
  $record->zipr();
  $record->fairl();
  $record->fairr();
  $record->trustl();
  $record->trustr();
  $record->census1();
  $record->census2();
  $record->statel();
  $record->stater();
  $record->countyl();
  $record->countyr();
  $record->fmcdl();
  $record->fmcdr();
  $record->fsmcdl();
  $record->fsmcdr();
  $record->fpll();
  $record->fplr();
  $record->ctl();
  $record->ctr();
  $record->blkl();
  $record->blkr();
  $record->frlong();
  $record->frlat();
  $record->tolong();
  $record->tolat();


=head1 DESCRIPTION

This is a class representing record type 1 of the TIGER/Line 1998
census geographic database.  Each object is one record.  It also
contains methods to parse TIGER/Line record type 1 files and turn them
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


=item B<side1>

    $data = $record->side1();
    $record->side1($data);

Single-Side Complete Chain Code.  

Expects numeric data of no more than 1 characters.  $data can be blank 
and should be right justified.


=item B<source>

    $data = $record->source();
    $record->source($data);

Linear Segment Source Code.  

Expects alphanumeric data of no more than 1 characters.  $data can be blank 
and should be left justified.


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


=item B<cfcc>

    $data = $record->cfcc();
    $record->cfcc($data);

Census Feature Class Code.  

Expects alphanumeric data of no more than 3 characters.  $data can be blank 
and should be left justified.


=item B<fraddl>

    $data = $record->fraddl();
    $record->fraddl($data);

Start Address, Left.  

Expects alphanumeric data of no more than 11 characters.  $data can be blank 
and should be right justified.


=item B<toaddl>

    $data = $record->toaddl();
    $record->toaddl($data);

End Address, Left.  

Expects alphanumeric data of no more than 11 characters.  $data can be blank 
and should be right justified.


=item B<fraddr>

    $data = $record->fraddr();
    $record->fraddr($data);

Start Address, Right.  

Expects alphanumeric data of no more than 11 characters.  $data can be blank 
and should be right justified.


=item B<toaddr>

    $data = $record->toaddr();
    $record->toaddr($data);

End Address, Right.  

Expects alphanumeric data of no more than 11 characters.  $data can be blank 
and should be right justified.


=item B<friaddl>

    $data = $record->friaddl();
    $record->friaddl($data);

Start Imputed Address Flag, Left.  

Expects alphanumeric data of no more than 1 characters.  $data can be blank 
and should be left justified.


=item B<toiaddl>

    $data = $record->toiaddl();
    $record->toiaddl($data);

End Imputed Address Flag, Left.  

Expects alphanumeric data of no more than 1 characters.  $data can be blank 
and should be left justified.


=item B<friaddr>

    $data = $record->friaddr();
    $record->friaddr($data);

Start Imputed Address Flag, Right.  

Expects alphanumeric data of no more than 1 characters.  $data can be blank 
and should be left justified.


=item B<toiaddr>

    $data = $record->toiaddr();
    $record->toiaddr($data);

End Imputed Address Flag, Right.  

Expects alphanumeric data of no more than 1 characters.  $data can be blank 
and should be left justified.


=item B<zipl>

    $data = $record->zipl();
    $record->zipl($data);

ZIP Code, Left.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<zipr>

    $data = $record->zipr();
    $record->zipr($data);

ZIP Code, Right.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<fairl>

    $data = $record->fairl();
    $record->fairl($data);

FIPS 55 Code (American Indian/Alaska Native Area), Current Left.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<fairr>

    $data = $record->fairr();
    $record->fairr($data);

FIPS 55 Code (American Indian/Alaska Native Area), Current Right.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<trustl>

    $data = $record->trustl();
    $record->trustl($data);

American Indian Trust Land Flag, Current Left.  

Expects alphanumeric data of no more than 1 characters.  $data can be blank 
and should be left justified.


=item B<trustr>

    $data = $record->trustr();
    $record->trustr($data);

American Indian Trust Land Flag, Current Right.  

Expects alphanumeric data of no more than 1 characters.  $data can be blank 
and should be left justified.


=item B<census1>

    $data = $record->census1();
    $record->census1($data);

Census Use 1.  

Expects alphanumeric data of no more than 1 characters.  $data can be blank 
and should be left justified.


=item B<census2>

    $data = $record->census2();
    $record->census2($data);

Census Use 2.  

Expects alphanumeric data of no more than 1 characters.  $data can be blank 
and should be left justified.


=item B<statel>

    $data = $record->statel();
    $record->statel($data);

FIPS State Code, Current Left.  

Expects numeric data of no more than 2 characters.  $data can be blank 
and should be left justified.


=item B<stater>

    $data = $record->stater();
    $record->stater($data);

FIPS State Code, Current Right.  

Expects numeric data of no more than 2 characters.  $data can be blank 
and should be left justified.


=item B<countyl>

    $data = $record->countyl();
    $record->countyl($data);

FIPS County Code, Current Left.  

Expects numeric data of no more than 3 characters.  $data can be blank 
and should be left justified.


=item B<countyr>

    $data = $record->countyr();
    $record->countyr($data);

FIPS County Code, Current Right.  

Expects numeric data of no more than 3 characters.  $data can be blank 
and should be left justified.


=item B<fmcdl>

    $data = $record->fmcdl();
    $record->fmcdl($data);

FIPS 55 Code (MCD/CCD) Left, Current.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<fmcdr>

    $data = $record->fmcdr();
    $record->fmcdr($data);

FIPS 55 Code (MCD/CCD) Right, Current.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<fsmcdl>

    $data = $record->fsmcdl();
    $record->fsmcdl($data);

FIPS 55 Code (Sub-MCD), Current Left.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<fsmcdr>

    $data = $record->fsmcdr();
    $record->fsmcdr($data);

FIPS 55 Code (Sub-MCD), Current Right.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<fpll>

    $data = $record->fpll();
    $record->fpll($data);

FIPS 55 Code (Incorporated Place), Current Left.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<fplr>

    $data = $record->fplr();
    $record->fplr($data);

FIPS 55 Code (Incorporated Place), Current Right.  

Expects numeric data of no more than 5 characters.  $data can be blank 
and should be left justified.


=item B<ctl>

    $data = $record->ctl();
    $record->ctl($data);

Census Tract Code, 1990 Left.  

Expects numeric data of no more than 6 characters.  $data can be blank 
and should be left justified.


=item B<ctr>

    $data = $record->ctr();
    $record->ctr($data);

Census Tract Code, 1990 Right.  

Expects numeric data of no more than 6 characters.  $data can be blank 
and should be left justified.


=item B<blkl>

    $data = $record->blkl();
    $record->blkl($data);

Census Block Number, 1990 Left.  

Expects alphanumeric data of no more than 4 characters.  $data can be blank 
and should be left justified.


=item B<blkr>

    $data = $record->blkr();
    $record->blkr($data);

Census Block Number, 1990 Right.  

Expects alphanumeric data of no more than 4 characters.  $data can be blank 
and should be left justified.


=item B<frlong>

    $data = $record->frlong();
    $record->frlong($data);

Start Longitude.  

Expects numeric data of no more than 10 characters.  $data cannot be blank 
and should be right justified.


=item B<frlat>

    $data = $record->frlat();
    $record->frlat($data);

Start Latitude.  

Expects numeric data of no more than 9 characters.  $data cannot be blank 
and should be right justified.


=item B<tolong>

    $data = $record->tolong();
    $record->tolong($data);

End Longitude.  

Expects numeric data of no more than 10 characters.  $data cannot be blank 
and should be right justified.


=item B<tolat>

    $data = $record->tolat();
    $record->tolat($data);

End Latitude.  

Expects numeric data of no more than 9 characters.  $data cannot be blank 
and should be right justified.



=back


=head2 Data dictionary

This is the original TIGER/Line 1998 data dictionary from which this
class was generated.

    Record Type 1 - Complete Chain Basic Data Record
    
         Field   BV  Fmt  Type  Beg  End  Len  Description
            RT   No    L     A    1    1    1  Record Type
       VERSION   No    L     N    2    5    4  Version Number
          TLID   No    R     N    6   15   10  TIGER/Line ID, Permanent Record Number
         SIDE1  Yes    R     N   16   16    1  Single-Side Complete Chain Code
        SOURCE  Yes    L     A   17   17    1  Linear Segment Source Code
        FEDIRP  Yes    L     A   18   19    2  Feature Direction, Prefix
        FENAME  Yes    L     A   20   49   30  Feature Name
        FETYPE  Yes    L     A   50   53    4  Feature Type
        FEDIRS  Yes    L     A   54   55    2  Feature Direction, Suffix
          CFCC  Yes    L     A   56   58    3  Census Feature Class Code
        FRADDL  Yes    R     A   59   69   11  Start Address, Left
        TOADDL  Yes    R     A   70   80   11  End Address, Left
        FRADDR  Yes    R     A   81   91   11  Start Address, Right
        TOADDR  Yes    R     A   92  102   11  End Address, Right
       FRIADDL  Yes    L     A  103  103    1  Start Imputed Address Flag, Left
       TOIADDL  Yes    L     A  104  104    1  End Imputed Address Flag, Left
       FRIADDR  Yes    L     A  105  105    1  Start Imputed Address Flag, Right
       TOIADDR  Yes    L     A  106  106    1  End Imputed Address Flag, Right
          ZIPL  Yes    L     N  107  111    5  ZIP Code, Left
          ZIPR  Yes    L     N  112  116    5  ZIP Code, Right
         FAIRL  Yes    L     N  117  121    5  FIPS 55 Code (American Indian/Alaska Native Area), Current Left
         FAIRR  Yes    L     N  122  126    5  FIPS 55 Code (American Indian/Alaska Native Area), Current Right
        TRUSTL  Yes    L     A  127  127    1  American Indian Trust Land Flag, Current Left
        TRUSTR  Yes    L     A  128  128    1  American Indian Trust Land Flag, Current Right
       CENSUS1  Yes    L     A  129  129    1  Census Use 1
       CENSUS2  Yes    L     A  130  130    1  Census Use 2
        STATEL  Yes    L     N  131  132    2  FIPS State Code, Current Left
        STATER  Yes    L     N  133  134    2  FIPS State Code, Current Right
       COUNTYL  Yes    L     N  135  137    3  FIPS County Code, Current Left
       COUNTYR  Yes    L     N  138  140    3  FIPS County Code, Current Right
         FMCDL  Yes    L     N  141  145    5  FIPS 55 Code (MCD/CCD) Left, Current
         FMCDR  Yes    L     N  146  150    5  FIPS 55 Code (MCD/CCD) Right, Current
        FSMCDL  Yes    L     N  151  155    5  FIPS 55 Code (Sub-MCD), Current Left
        FSMCDR  Yes    L     N  156  160    5  FIPS 55 Code (Sub-MCD), Current Right
          FPLL  Yes    L     N  161  165    5  FIPS 55 Code (Incorporated Place), Current Left
          FPLR  Yes    L     N  166  170    5  FIPS 55 Code (Incorporated Place), Current Right
           CTL  Yes    L     N  171  176    6  Census Tract Code, 1990 Left
           CTR  Yes    L     N  177  182    6  Census Tract Code, 1990 Right
          BLKL  Yes    L     A  183  186    4  Census Block Number, 1990 Left
          BLKR  Yes    L     A  187  190    4  Census Block Number, 1990 Right
        FRLONG   No    R     N  191  200   10  Start Longitude
         FRLAT   No    R     N  201  209    9  Start Latitude
        TOLONG   No    R     N  210  219   10  End Longitude
         TOLAT   No    R     N  220  228    9  End Latitude
    
    
    



=head1 AUTHOR

Michael G Schwern <schwern@pobox.com>

=head1 SEE ALSO

L<Geo::TigerLine>, L<mk_parsers>

=cut


return 'Honey flash!';
