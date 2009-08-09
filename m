X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/08/09/3
Message-Id: <20090809130155.00f242f2.michael.s.gilbert@gmail.com>
Date: Sun, 9 Aug 2009 13:01:55 -0400
From: "Michael S. Gilbert" <michael.s.gilbert@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: mantis
Content-Type: text/plain; charset=utf-8

Hello,

Debian recently updated mantis.  The description is:

  It was discovered that the Debian Mantis package, a web based bug
  tracking system, installed the database credentials in a file with
  world-readable permissions onto the local filesystem. This allows
  local users to acquire the credentials used to control the Mantis
  database.

  References:
  http://www.debian.org/security/2009/dsa-1856
  http://bugs.debian.org/425010

Can we get a CVE id for this? Thanks!

Mike
