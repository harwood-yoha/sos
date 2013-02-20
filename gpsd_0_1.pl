#!/usr/bin/perl
use Net::GPSD3;
use Data::Dumper qw{Dumper};
my $gpsd=Net::GPSD3->new;

#dd
# because I found that the GPSD3 module hangs on POLL I founf that adding   
#need to add $self->socket->send(qq(?WATCH={"enable":true};\n)); # NEW COMMAND

#/usr/local/share/perl/5.14.2/Net/GPSD3.pm

#sub poll {
#  my $self=shift;
#$self->socket->send(qq(?WATCH={"enable":true};\n)); # NEW COMMAND
#  $self->socket->send(qq(?DEVICES;\n)) unless $self->cache->DEVICES;
#  $self->socket->send(qq(?POLL;\n));
#
#my $object;
#  do { #Reads and caches VERSION and DEVICES
#    local $/="\r\n";
#    my $line=$self->socket->getline;
#    chomp $line;
##print "$line\n";
#    $object=$self->constructor($self->decode($line), string=>$line);
##print $object;
#    $self->cache->add($object) unless $object->class eq "POLL";
#  } until $object->class eq "POLL"; #this needs more logic
#  return $object;
##return $line;
#}


#$gpsd->watch;
my $poll=$gpsd->poll;
  print $poll;
  print Dumper($poll);



