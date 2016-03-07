X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/03/07/9
Message-ID: <CAJpd-bGtYj8mL9crn8LoO0cB05EVQpsjQQnB-OENr2cMu3CxOA@mail.gmail.com>
Date: Mon, 7 Mar 2016 13:04:50 +0100
From: Salva Peiró <speirofr@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request: The minissdpd (v 1.2.20130907-3) is affected by an improper validation of array index weakness
Content-Type: text/plain; charset=utf-8

Hi everyone,

A vulnerability in the minissdpd daemon has been found that affects
minissdpd version 1.2.20130907-3 available in Debian and Ubuntu.
The vulnerability can be exploited by a local unprivileged user
with write access to /var/run/minissdpd.sock to crash the minissdpd
daemon that runs with superuser privileges.

More details at:
https://speirofr.appspot.com/files/advisory/SPADV-2016-02.md
https://bugs.debian.org/cgi-bin/pkgreport.cgi?pkg=minissdpd;dist=unstable.

Is there a CVE for this? If not, could one be assigned, please?

Regards,
Salva Peiró

--
Salva Peiró @ https://speirofr.appspot.com
CS Researcher & Software Engineer
Universitat Politècnica de València, Spain.

