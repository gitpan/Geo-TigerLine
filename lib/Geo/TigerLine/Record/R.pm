package Geo::TigerLine::Record::R;

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
               'maxid' => {
                            'beg' => '16',
                            'bv' => 'No',
                            'description' => 'TIGER/Line ID, Maximum Permanent ID for Census File',
                            'fieldnum' => '6',
                            'len' => '10',
                            'end' => '25',
                            'fmt' => 'R',
                            'field' => 'maxid',
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
               'filler' => {
                             'beg' => '46',
                             'bv' => 'Yes',
                             'description' => 'Filler (to make even character count)',
                             'fieldnum' => '9',
                             'len' => '1',
                             'end' => '46',
                             'fmt' => 'L',
                             'field' => 'filler',
                             'type' => 'A'
                           },
               'minid' => {
                            'beg' => '26',
                            'bv' => 'No',
                            'description' => 'TIGER/Line ID, Minimum Permanent ID for Census File',
                            'fieldnum' => '7',
                            'len' => '10',
                            'end' => '35',
                            'fmt' => 'R',
                            'field' => 'minid',
                            'type' => 'N'
                          },
               'highid' => {
                             'beg' => '36',
                             'bv' => 'No',
                             'description' => 'TIGER/Line ID, Current High ID for Census File',
                             'fieldnum' => '8',
                             'len' => '10',
                             'end' => '45',
                             'fmt' => 'R',
                             'field' => 'highid',
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
                 'maxid',
                 'minid',
                 'highid',
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

Geo::TigerLine::Record::R - TIGER/Line 1998 TIGER/Line ID Record Number Range

=head1 SYNOPSIS

  use Geo::TigerLine::Record::R;

  @records = Geo::TigerLine::Record::R->parse_file($fh);
  @records = Geo::TigerLine::Record::R->parse_file($fh, \&callback);

  $record = Geo::TigerLine::Record::R->new(\%fields);

  $record->rt();
  $record->version();
  $record->state();
  $record->county();
  $record->cenid();
  $record->maxid();
  $record->minid();
  $record->highid();
  $record->filler();


=head1 DESCRIPTION

This is a class representing record type R of the TIGER/Line 1998
census geographic database.  Each object is one record.  It also
contains methods to parse TIGER/Line record type R files and turn them
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


=item B<maxid>

    $data = $record->maxid();
    $record->maxid($data);

TIGER/Line ID, Maximum Permanent ID for Census File.  

Expects numeric data of no more than 10 characters.  $data cannot be blank 
and should be right justified.


=item B<minid>

    $data = $record->minid();
    $record->minid($data);

TIGER/Line ID, Minimum Permanent ID for Census File.  

Expects numeric data of no more than 10 characters.  $data cannot be blank 
and should be right justified.


=item B<highid>

    $data = $record->highid();
    $record->highid($data);

TIGER/Line ID, Current High ID for Census File.  

Expects numeric data of no more than 10 characters.  $data cannot be blank 
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

    Record Type R - TIGER/Line ID Record Number Range
    
         Field   BV  Fmt  Type  Beg  End  Len  Description
            RT   No    L     A    1    1    1  Record Type
       VERSION   No    L     N    2    5    4  Version Number
         STATE   No    L     N    6    7    2  FIPS State Code for File
        COUNTY   No    L     N    8   10    3  FIPS County Code for File
         CENID   No    L     A   11   15    5  Census File Identification Code
         MAXID   No    R     N   16   25   10  TIGER/Line ID, Maximum Permanent ID for Census File
         MINID   No    R     N   26   35   10  TIGER/Line ID, Minimum Permanent ID for Census File
        HIGHID   No    R     N   36   45   10  TIGER/Line ID, Current High ID for Census File
        FILLER  Yes    L     A   46   46    1  Filler (to make even character count)
    
    
    



=head1 AUTHOR

Michael G Schwern <schwern@pobox.com>

=head1 SEE ALSO

L<Geo::TigerLine>, L<mk_parsers>

=cut


return 'Honey flash!';
