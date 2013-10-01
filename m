X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/10/01/7
Message-ID: <CAEDdjHcVFxP7zQvMfy8Zmsir4irMggyr+4QOJecWpAzrnZfjYQ@mail.gmail.com>
Date: Tue, 1 Oct 2013 16:20:10 +0100
From: Pedro Ribeiro <pedrib@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request - VLC 2.0.0 to 2.0.8
Content-Type: text/plain; charset=utf-8

Hi,

I have discovered a denial of service / possible code execution in VLC via
a crafted ASF file. This has been reported to VLC and was apparently fixed
unintentionally in 2.0.8 with the entry "Improve handling of corrupt ASF
files". Version 2.1.0 is not affected.

The file contains a crafted ASF packet that causes VLC to crash on a read
operation, with control of EDI and EAX. In the file attached you will find
at starting offset 0x157AD the hex values 17 DE B4 71 in little endian,
which attempts to use for a read operation. Control of other variables in
the Demux function in asf.c is also possible by changing packet values
before and after the offset as per the ASF specification.

The file is located here:
https://github.com/pedrib/PoC/blob/master/vlc-crash.asf

I have not been able to obtain any program control so far, so at the moment
this only crashes VLC. However someone more skilled might be able to
control it.

Can you please provide a CVE for this?

Regards
Pedro

