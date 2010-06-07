X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/06/07/1
Message-ID: <4C0C4304.1080400@redhat.com>
Date: Mon, 07 Jun 2010 08:53:24 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request - kernel: ext4: Make sure the MOVE_EXT ioctl can't overwrite append-only files
Content-Type: text/plain; charset=utf-8

Using the EXT4_IOC_MOVE_EXT ioctl, it is possible to overwrite the 
contents of an append-only donor file.

http://git.kernel.org/linus/1f5a81e41f8b1a782c68d3843e9ec1bfaadf7d72
https://bugzilla.redhat.com/show_bug.cgi?id=601006

Thanks, Eugene
--
main(i) { putchar(182623909 >> (i-1) * 5&31|!!(i<7)<<6) && main(++i); }
