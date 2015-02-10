X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/10/4
Message-ID: <54D9E7EE.3090607@redhat.com>
Date: Tue, 10 Feb 2015 12:13:50 +0100
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com, Assign a CVE Identifier <cve-assign@...re.org>
Subject: Re: libmnl: incorrect validation of netlink message origin allows attackers to spoof netlink messages
Content-Type: text/plain; charset=utf-8

On 02/07/2015 12:40 AM, Kurt Seifried wrote:
> https://bugzilla.redhat.com/show_bug.cgi?id=848949
> 
> this may warrant a cve

It was blamed on the kernel and fixed there:

  <http://marc.info/?l=linux-netdev&m=134582981424588>


-- 
Florian Weimer / Red Hat Product Security
