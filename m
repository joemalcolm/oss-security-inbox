X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/11/28/11
Message-ID: <5297736A.3000205@debian.org>
Date: Thu, 28 Nov 2013 17:46:34 +0100
From: Wouter Verhelst <wouter@...ian.org>
To: oss-security@...ts.openwall.com
Subject: CVE request: incorrect parsing of access control file in nbd-server
Content-Type: text/plain; charset=utf-8

Hi,

nbd-server has the ability to deny connection requests to clients unless
their IP addresses are listed in a tcpwrappers-style configuration file.
Due to incorrect use of strncmp() in the parser for this file, however,
it would allow clients to connect so long as their IP address in ASCII
representation would start with something in the ACL file; e.g.,
198.51.100.12 would be allowed if 198.51.100.1 was listed.

I'd like a CVE id for this.

Thanks,

-- 
This end should point toward the ground if you want to go to space.

If it starts pointing toward space you are having a bad problem and you
will not go to space today.

  -- http://xkcd.com/1133/
