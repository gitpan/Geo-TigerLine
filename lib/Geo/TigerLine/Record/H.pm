package Geo::TigerLine::Record::H;

use strict;

use Carp::Assert;
use base qw(Geo::TigerLine::Record::Parser Geo::TigerLine::Record::Accessor
            Geo::TigerLine::Record Class::Data::Inheritable);

use vars qw($VERSION);
$VERSION = '0.01';


# Auto-generated data dictionary.
my %Data_Dict = (
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
               'tlidto1' => {
                              'beg' => '43',
                              'bv' => 'Yes',
                              'description' => 'TIGER/Line ID, Became Number 1',
                              'fieldnum' => '10',
                              'len' => '10',
                              'end' => '52',
                              'fmt' => 'R',
                              'field' => 'tlidto1',
                              'type' => 'N'
                            },
               'hist' => {
                           'beg' => '21',
                           'bv' => 'Yes',
                           'description' => 'History or Last Source Code to Update',
                           'fieldnum' => '6',
                           'len' => '1',
                           'end' => '21',
                           'fmt' => 'L',
                           'field' => 'hist',
                           'type' => 'A'
                         },
               'tlidto2' => {
                              'beg' => '53',
                              'bv' => 'Yes',
                              'description' => 'TIGER/Line ID, Became Number 2',
                              'fieldnum' => '11',
                              'len' => '10',
                              'end' => '62',
                              'fmt' => 'R',
                              'field' => 'tlidto2',
                              'type' => 'N'
                            },
               'source' => {
                             'beg' => '22',
                             'bv' => 'No',
                             'description' => 'Source or First Source Code to Update',
                             'fieldnum' => '7',
                             'len' => '1',
                             'end' => '22',
                             'fmt' => 'L',
                             'field' => 'source',
                             'type' => 'A'
                           },
               'tlid' => {
                           'beg' => '11',
                           'bv' => 'No',
                           'description' => 'TIGER/Line ID, Permanent Record Number',
                           'fieldnum' => '5',
                           'len' => '10',
                           'end' => '20',
                           'fmt' => 'R',
                           'field' => 'tlid',
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
               'tlidfr1' => {
                              'beg' => '23',
                              'bv' => 'Yes',
                              'description' => 'TIGER/Line ID, Created From Number 1',
                              'fieldnum' => '8',
                              'len' => '10',
                              'end' => '32',
                              'fmt' => 'R',
                              'field' => 'tlidfr1',
                              'type' => 'N'
                            },
               'tlidfr2' => {
                              'beg' => '33',
                              'bv' => 'Yes',
                              'description' => 'TIGER/Line ID, Created From Number 2',
                              'fieldnum' => '9',
                              'len' => '10',
                              'end' => '42',
                              'fmt' => 'R',
                              'field' => 'tlidfr2',
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
                 'tlid',
                 'hist',
                 'source',
                 'tlidfr1',
                 'tlidfr2',
                 'tlidto1',
                 'tlidto2'
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

Geo::TigerLine::Record::H - TIGER/Line 1998 TIGER/Line ID History

=head1 SYNOPSIS

  use Geo::TigerLine::Record::H;

  @records = Geo::TigerLine::Record::H->parse_file($fh);
  @records = Geo::TigerLine::Record::H->parse_file($fh, \&callback);

  $record = Geo::TigerLine::Record::H->new(\%fields);

  $record->rt();
  $record->version();
  $record->state();
  $record->county();
  $record->tlid();
  $record->hist();
  $record->source();
  $record->tlidfr1();
  $record->tlidfr2();
  $record->tlidto1();
  $record->tlidto2();


=head1 DESCRIPTION

This is a class representing record type H of the TIGER/Line 1998
census geographic database.  Each object is one record.  It also
contains methods to parse TIGER/Line record type H files and turn them
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


=item B<tlid>

    $data = $record->tlid();
    $record->tlid($data);

TIGER/Line ID, Permanent Record Number.  

Expects numeric data of no more than 10 characters.  $data cannot be blank 
and should be right justified.


=item B<hist>

    $data = $record->hist();
    $record->hist($data);

History or Last Source Code to Update.  

Expects alphanumeric data of no more than 1 characters.  $data can be blank 
and should be left justified.


=item B<source>

    $data = $record->source();
    $record->source($data);

Source or First Source Code to Update.  

Expects alphanumeric data of no more than 1 characters.  $data cannot be blank 
and should be left justified.


=item B<tlidfr1>

    $data = $record->tlidfr1();
    $record->tlidfr1($data);

TIGER/Line ID, Created From Number 1.  

Expects numeric data of no more than 10 characters.  $data can be blank 
and should be right justified.


=item B<tlidfr2>

    $data = $record->tlidfr2();
    $record->tlidfr2($data);

TIGER/Line ID, Created From Number 2.  

Expects numeric data of no more than 10 characters.  $data can be blank 
and should be right justified.


=item B<tlidto1>

    $data = $record->tlidto1();
    $record->tlidto1($data);

TIGER/Line ID, Became Number 1.  

Expects numeric data of no more than 10 characters.  $data can be blank 
and should be right justified.


=item B<tlidto2>

    $data = $record->tlidto2();
    $record->tlidto2($data);

TIGER/Line ID, Became Number 2.  

Expects numeric data of no more than 10 characters.  $data can be blank 
and should be right justified.



=back


=head2 Data dictionary

This is the original TIGER/Line 1998 data dictionary from which this
class was generated.

    Record Type H - TIGER/Line ID History
    
         Field   BV  Fmt  Type  Beg  End  Len  Description
            RT   No    L     A    1    1    1  Record Type
       VERSION   No    L     N    2    5    4  Version Number
         STATE   No    L     N    6    7    2  FIPS State Code for File
        COUNTY   No    L     N    8   10    3  FIPS County Code for File
          TLID   No    R     N   11   20   10  TIGER/Line ID, Permanent Record Number
          HIST  Yes    L     A   21   21    1  History or Last Source Code to Update
        SOURCE   No    L     A   22   22    1  Source or First Source Code to Update
       TLIDFR1  Yes    R     N   23   32   10  TIGER/Line ID, Created From Number 1
       TLIDFR2  Yes    R     N   33   42   10  TIGER/Line ID, Created From Number 2
       TLIDTO1  Yes    R     N   43   52   10  TIGER/Line ID, Became Number 1
       TLIDTO2  Yes    R     N   53   62   10  TIGER/Line ID, Became Number 2
    
    
    



=head1 AUTHOR

Michael G Schwern <schwern@pobox.com>

=head1 SEE ALSO

L<Geo::TigerLine>, L<mk_parsers>

=cut


return 'Honey flash!';
