#!/usr/bin/perl -p

use Socket;

if (/\b(\d+\.\d+\.\d+\.\d+)\b/) {
      $addr = pack('C4', split(/\./, $1));
      $name = gethostbyaddr($addr, AF_INET);
      if($name) {s/$1/$name/;}
}
