X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/02/01/3
Message-ID: <4B66B2ED.4000701@redhat.com>
Date: Mon, 01 Feb 2010 11:54:37 +0100
From: Jan Lieskovsky <jlieskov@...hat.com>
To: oss-security <oss-security@...ts.openwall.com>
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE Request -- Squid -- SQUID-2010_1.txt
Content-Type: text/plain; charset=utf-8

Hi Josh, Steve, vendors,

   Squid upstream has released updated versions fixing DoS
when processing specially crafted DNS packets [1].

 From the upstream advisory:

"This problem allows any trusted client or external server who can
  determine the squid receiving port to perform a short-term denial
  of service attack on the Squid service."

Could you allocate a CVE id for this? (can't find one in SQUID-2010_1.txt).

Thanks && Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team

[1] http://www.squid-cache.org/Advisories/SQUID-2010_1.txt
