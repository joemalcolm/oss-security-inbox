X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/07/26/9
Message-ID: <1588099194.1604029.1311708902599.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Tue, 26 Jul 2011 15:35:02 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE request - dhcp clients
Content-Type: text/plain; charset=utf-8



----- Original Message -----
> Hi!
> 
> Earlier this year, CVE-2011-0997 was assigned to ICS's dhclient and
> CVE-2011-0996 dhcpcd for an insufficient DHCP option checking.
> 
> Similar issue affects busybox's udhcpc.
> 
> dhcpv6's dhcp6c was previously mentioned and it seems also fixed in
> SUSE, but did not get its own CVE.
> 
> The impact for DHCPv6 clients seems significantly lower, as there's no
> support for hostname option, only domain search option. I'm not sure
> if anyone identified any good target that handles search option
> insecurely, I've only found shtool's sh.echo that may use it in sed
> script, resulting in sed script injection with file overwrite or code
> execution impact.
> 
> Given that dhclient and dhcpcd got separate CVEs, udhcpc and dhcp6c
> should probably get separate ids too.
> 

Use CVE-2011-2716 for udhcpc
CVE-2011-2717 for udhcp6c.

Thanks.

-- 
    JB
