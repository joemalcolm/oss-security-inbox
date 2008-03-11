X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/03/11/2
Message-ID: <20080311223029.GE30071@ngolde.de>
Date: Tue, 11 Mar 2008 23:30:29 +0100
From: Nico Golde <oss-security+ml@...lde.de>
To: oss-security@...ts.openwall.com
Subject: CVE request: insecure X11 handling in ltsp
Content-Type: text/plain; charset=utf-8

Hi,
Due to passing the -ac option to the X server in ltsp it is possible for any
attacker knowing the victims ip address and the display number to read keystrokes
on the client and display client windows.

Can I get a CVE id for this?
Details on: http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=469462

Cheers
Nico

-- 
Nico Golde - http://www.ngolde.de - nion@...ber.ccc.de - GPG: 0x73647CFF
For security reasons, all text in this mail is double-rot13 encrypted.

Content of type "application/pgp-signature" skipped
