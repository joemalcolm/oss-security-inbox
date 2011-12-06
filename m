X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/12/06/2
Message-ID: <20111206203949.GA10436@pisco.westfalen.local>
Date: Tue, 6 Dec 2011 21:39:49 +0100
From: Moritz Muehlenhoff <jmm@...ian.org>
To: oss-security@...ts.openwall.com
Subject: CVE request: acpid
Content-Type: text/plain; charset=utf-8

Hi,
Please assign a CVE ID for this issue fixed in acpid 2.0.11:

http://www.tedfelix.com/linux/acpid-netlink.html 
(The ChangeLog can only be grabbed through the tarballs):

------
* Sat Jul 30 2011  Ted Felix <http://www.tedfelix.com>
  - 2.0.11 release
  - Set umask to 0077 for scripts run by acpid.  (event.c)  (Ted Felix)
------

Discovered by Helmut Grohne and Michael Biebl.

Cheers,
        Moritz
