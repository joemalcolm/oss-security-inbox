X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/04/10/7
Message-Id: <200804110144.53058.rbu@gentoo.org>
Date: Fri, 11 Apr 2008 01:44:52 +0200
From: Robert Buchholz <rbu@...too.org>
To: oss-security@...ts.openwall.com
Subject: CVE request: openfire <3.5.0 Denial of Service
Content-Type: text/plain; charset=utf-8

Please assign a CVE identifier:

Openfire (formerly wildfire) before 3.5.0 is prone to a Denial of 
Service vulnerability. It cannot handle clients that fail to read 
messages, and has no limit on their session's send buffer.

Secunia:
  http://secunia.com/advisories/29751/
Upstream bug:
  http://www.igniterealtime.org/issues/browse/JM-1289
Commit:
  http://www.igniterealtime.org/fisheye/changelog/svn-org?cs=10031


Download attachment "signature.asc " of type "application/pgp-signature" (190 bytes)
