package Geo::TigerLine::Record::4;

use strict;

use Carp::Assert;
use base qw(Geo::TigerLine::Record::Parser Geo::TigerLine::Record::Accessor
            Geo::TigerLine::Record Class::Data::Inheritable);

use vars qw($VERSION);
$VERSION = '0.01';


# Auto-generated data dictionary.
my %Data_Dict = (
               'feat5' => {
                            'beg' => '51',
                            'bv' => 'Yes',
                            'description' => 'Line Additional Name Identification Number, Fifth',
                            'fieldnum' => '9',
                            'len' => '8',
                            'end' => '58',
                            'fmt' => 'R',
                            'field' => 'feat5',
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
               'rtsq' => {
                           'beg' => '16',
                           'bv' => 'No',
                           'description' => 'Record Sequence Number',
                           'fieldnum' => '4',
                           'len' => '3',
                           'end' => '18',
                           'fmt' => 'R',
                           'field' => 'rtsq',
                           'type' => 'N'
                         },
               'feat1' => {
                            'beg' => '19',
                            'bv' => 'No',
                            'description' => 'Line Additional Name Identification Number, First',
                            'fieldnum' => '5',
                            'len' => '8',
                            'end' => '26',
                            'fmt' => 'R',
                            'field' => 'feat1',
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
               'feat2' => {
                            'beg' => '27',
                            'bv' => 'Yes',
                            'description' => 'Line Additional Name Identification Number, Second',
                            'fieldnum' => '6',
                            'len' => '8',
                            'end' => '34',
                            'fmt' => 'R',
                            'field' => 'feat2',
                            'type' => 'N'
                          },
               'feat3' => {
                            'beg' => '35',
                            'bv' => 'Yes',
                            'description' => 'Line Additional Name Identification Number, Third',
                            'fieldnum' => '7',
                            'len' => '8',
                            'end' => '42',
                            'fmt' => 'R',
                            'field' => 'feat3',
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
               'feat4' => {
                            'beg' => '43',
                            'bv' => 'Yes',
                            'description' => 'Line Additional Name Identification Number, Fourth',
                            'fieldnum' => '8',
                            'len' => '8',
                            'end' => '50',
                            'fmt' => 'R',
                            'field' => 'feat4',
                            'type' => 'N'
                          }
             );


my @Data_Fields = (
                 'rt',
                 'version',
                 'tlid',
                 'rtsq',
                 'feat1',
                 'feat2',
                 'feat3',
                 'feat4',
                 'feat5'
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

Geo::TigerLine::Record::4 - TIGER/Line 1998 Index to Alternative Feature Identifiers

=head1 SYNOPSIS

  use Geo::TigerLine::Record::4;

  @records = Geo::TigerLine::Record::4->parse_file($fh);
  @records = Geo::TigerLine::Record::4->parse_file($fh, \&callback);

  $record = Geo::TigerLine::Record::4->new(\%fields);

  $record->rt();
  $record->version();
  $record->tlid();
  $record->rtsq();
  $record->feat1();
  $record->feat2();
  $record->feat3();
  $record->feat4();
  $record->feat5();


=head1 DESCRIPTION

This is a class representing record type 4 of the TIGER/Line 1998
census geographic database.  Each object is one record.  It also
contains methods to parse TIGER/Line record type 4 files and turn them
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


=item B<rtsq>

    $data = $record->rtsq();
    $record->rtsq($data);

Record Sequence Number.  

Expects numeric data of no more than 3 characters.  $data cannot be blank 
and should be right justified.


=item B<feat1>

    $data = $record->feat1();
    $record->feat1($data);

Line Additional Name Identification Number, First.  

Expects numeric data of no more than 8 characters.  $data cannot be blank 
and should be right justified.


=item B<feat2>

    $data = $record->feat2();
    $record->feat2($data);

Line Additional Name Identification Number, Second.  

Expects numeric data of no more than 8 characters.  $data can be blank 
and should be right justified.


=item B<feat3>

    $data = $record->feat3();
    $record->feat3($data);

Line Additional Name Identification Number, Third.  

Expects numeric data of no more than 8 characters.  $data can be blank 
and should be right justified.


=item B<feat4>

    $data = $record->feat4();
    $record->feat4($data);

Line Additional Name Identification Number, Fourth.  

Expects numeric data of no more than 8 characters.  $data can be blank 
and should be right justified.


=item B<feat5>

    $data = $record->feat5();
    $record->feat5($data);

Line Additional Name Identification Number, Fifth.  

Expects numeric data of no more than 8 characters.  $data can be blank 
and should be right justified.



=back


=head2 Data dictionary

This is the original TIGER/Line 1998 data dictionary from which this
class was generated.

    Record Type 4 - Index to Alternative Feature Identifiers
    
         Field   BV  Fmt  Type  Beg  End  Len  Description
            RT   No    L     A    1    1    1  Record Type
       VERSION   No    L     N    2    5    4  Version Number
          TLID   No    R     N    6   15   10  TIGER/Line ID, Permanent Record Number
          RTSQ   No    R     N   16   18    3  Record Sequence Number
         FEAT1   No    R     N   19   26    8  Line Additional Name Identification Number, First
         FEAT2  Yes    R     N   27   34    8  Line Additional Name Identification Number, Second
         FEAT3  Yes    R     N   35   42    8  Line Additional Name Identification Number, Third
         FEAT4  Yes    R     N   43   50    8  Line Additional Name Identification Number, Fourth
         FEAT5  Yes    R     N   51   58    8  Line Additional Name Identification Number, Fifth
    
    
    



=head1 AUTHOR

Michael G Schwern <schwern@pobox.com>

=head1 SEE ALSO

L<Geo::TigerLine>, L<mk_parsers>

=cut


return 'Honey flash!';
