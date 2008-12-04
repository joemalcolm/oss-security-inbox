X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/12/04/3
Message-Id: <CD78D38B-81DF-496B-B0F7-617B917785AE@apple.com>
Date: Thu, 4 Dec 2008 13:43:46 -0800
From: David Remahl <dremahl@...le.com>
To: oss-security@...ts.openwall.com, "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE for SE-2008-06 in PHP 5.2.7 (ZipArchive)
Content-Type: text/plain; charset=utf-8

http://www.sektioneins.de/advisories/SE-2008-06.txt

PHP 5.2.7 addresses several CVEs that are listed in the NEWS file.  
Apparently, it also addresses the above bug, but no CVE has been  
assigned:

- Fixed extraction of zip files or directories when the entry name is a
   relative path. (Pierre)

The advisory from Stefan also does not contain a CVE.

Steve, please assign

/ Regards, David

