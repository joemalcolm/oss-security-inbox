X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/08/29/4
Message-ID: <20140829163929.GA28244@eldamar.local>
Date: Fri, 29 Aug 2014 18:39:29 +0200
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Cc: CVE Assignments MITRE <cve-assign@...re.org>, Ryan King <rking@...optic.com>
Subject: CVE Request: Clipboard Perl module: clipedit: insecure use of temporary files
Content-Type: text/plain; charset=utf-8

Hi

The Clipboard Perl module distribution [1] ships a small script
'clipedit' which insecurely uses temporary files by using the pid of
the process in the used filename in /tmp[2]. The affected code looks
like:

 [...]
  7 my $tmpfilename = "/tmp/clipedit$$";  
  8 open my $tmpfile, ">$tmpfilename" or die "Failure to open $tmpfilename: $!";  
  9 print $tmpfile $orig;  
 10 close $tmpfile;
 [...]
 13 system($ed, $tmpfilename);  
 14   
 15 open $tmpfile, $tmpfilename or die "Failure to open $tmpfilename: $!";
 16 my $edited = join '', <$tmpfile>;
 [...]
 49 unlink($tmpfilename) or die "Couldn't remove $tmpfilename: $!";

Could you assing a CVE for this issue?

 [1] https://metacpan.org/release/Clipboard
 [2] https://rt.cpan.org/Ticket/Display.html?id=98435

Regards,
Salvatore
