package Geo::TigerLine::Record::6;

use strict;

use Carp::Assert;
use base qw(Geo::TigerLine::Record::Parser Geo::TigerLine::Record::Accessor
            Geo::TigerLine::Record Class::Data::Inheritable);

use vars qw($VERSION);
$VERSION = '0.01';


# Auto-generated data dictionary.
my %Data_Dict = (
               'toaddr' => {
                             'beg' => '52',
                             'bv' => 'Yes',
                             'description' => 'End Address, Right',
                             'fieldnum' => '8',
                             'len' => '11',
                             'end' => '62',
                             'fmt' => 'R',
                             'field' => 'toaddr',
                             'type' => 'A'
                           },
               'zipr' => {
                           'beg' => '72',
                           'bv' => 'Yes',
                           'description' => 'ZIP Code, Right',
                           'fieldnum' => '14',
                           'len' => '5',
                           'end' => '76',
                           'fmt' => 'L',
                           'field' => 'zipr',
                           'type' => 'N'
                         },
               'friaddr' => {
                              'beg' => '65',
                              'bv' => 'Yes',
                              'description' => 'Start Imputed Address Flag, Right',
                              'fieldnum' => '11',
                              'len' => '1',
                              'end' => '65',
                              'fmt' => 'L',
                              'field' => 'friaddr',
                              'type' => 'A'
                            },
               'toiaddr' => {
                              'beg' => '66',
                              'bv' => 'Yes',
                              'description' => 'End Imputed Address Flag, Right',
                              'fieldnum' => '12',
                              'len' => '1',
                              'end' => '66',
                              'fmt' => 'L',
                              'field' => 'toiaddr',
                              'type' => 'A'
                            },
               'fraddl' => {
                             'beg' => '19',
                             'bv' => 'Yes',
                             'description' => 'Start Address, Left',
                             'fieldnum' => '5',
                             'len' => '11',
                             'end' => '29',
                             'fmt' => 'R',
                             'field' => 'fraddl',
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
               'toaddl' => {
                             'beg' => '30',
                             'bv' => 'Yes',
                             'description' => 'End Address, Left',
                             'fieldnum' => '6',
                             'len' => '11',
                             'end' => '40',
                             'fmt' => 'R',
                             'field' => 'toaddl',
                             'type' => 'A'
                           },
               'fraddr' => {
                             'beg' => '41',
                             'bv' => 'Yes',
                             'description' => 'Start Address, Right',
                             'fieldnum' => '7',
                             'len' => '11',
                             'end' => '51',
                             'fmt' => 'R',
                             'field' => 'fraddr',
                             'type' => 'A'
                           },
               'zipl' => {
                           'beg' => '67',
                           'bv' => 'Yes',
                           'description' => 'ZIP Code, Left',
                           'fieldnum' => '13',
                           'len' => '5',
                           'end' => '71',
                           'fmt' => 'L',
                           'field' => 'zipl',
                           'type' => 'N'
                         },
               'friaddl' => {
                              'beg' => '63',
                              'bv' => 'Yes',
                              'description' => 'Start Imputed Address Flag, Left',
                              'fieldnum' => '9',
                              'len' => '1',
                              'end' => '63',
                              'fmt' => 'L',
                              'field' => 'friaddl',
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
               'toiaddl' => {
                              'beg' => '64',
                              'bv' => 'Yes',
                              'description' => 'End Imputed Address Flag, Left',
                              'fieldnum' => '10',
                              'len' => '1',
                              'end' => '64',
                              'fmt' => 'L',
                              'field' => 'toiaddl',
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
                 'version',
                 'tlid',
                 'rtsq',
                 'fraddl',
                 'toaddl',
                 'fraddr',
                 'toaddr',
                 'friaddl',
                 'toiaddl',
                 'friaddr',
                 'toiaddr',
                 'zipl',
                 'zipr'
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

Geo::TigerLine::Record::6 - TIGER/Line 1998 Additional Address Range and ZIP Code Data

=head1 SYNOPSIS

  use Geo::TigerLine::Record::6;

  @records = Geo::TigerLine::Record::6->parse_file($fh);
  @records = Geo::TigerLine::Record::6->parse_file($fh, \&callback);

  $record = Geo::TigerLine::Record::6->new(\%fields);

  $record->rt();
  $record->version();
  $record->tlid();
  $record->rtsq();
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


=head1 DESCRIPTION

This is a class representing record type 6 of the TIGER/Line 1998
census geographic database.  Each object is one record.  It also
contains methods to parse TIGER/Line record type 6 files and turn them
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



=back


=head2 Data dictionary

This is the original TIGER/Line 1998 data dictionary from which this
class was generated.

    Record Type 6 - Additional Address Range and ZIP Code Data
    
         Field   BV  Fmt  Type  Beg  End  Len  Description
            RT   No    L     A    1    1    1  Record Type
       VERSION   No    L     N    2    5    4  Version Number
          TLID   No    R     N    6   15   10  TIGER/Line ID, Permanent Record Number
          RTSQ   No    R     N   16   18    3  Record Sequence Number
        FRADDL  Yes    R     A   19   29   11  Start Address, Left
        TOADDL  Yes    R     A   30   40   11  End Address, Left
        FRADDR  Yes    R     A   41   51   11  Start Address, Right
        TOADDR  Yes    R     A   52   62   11  End Address, Right
       FRIADDL  Yes    L     A   63   63    1  Start Imputed Address Flag, Left
       TOIADDL  Yes    L     A   64   64    1  End Imputed Address Flag, Left
       FRIADDR  Yes    L     A   65   65    1  Start Imputed Address Flag, Right
       TOIADDR  Yes    L     A   66   66    1  End Imputed Address Flag, Right
          ZIPL  Yes    L     N   67   71    5  ZIP Code, Left
          ZIPR  Yes    L     N   72   76    5  ZIP Code, Right
    
    
    



=head1 AUTHOR

Michael G Schwern <schwern@pobox.com>

=head1 SEE ALSO

L<Geo::TigerLine>, L<mk_parsers>

=cut


return 'Honey flash!';
