X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/05/31/15
Message-ID: <2091474162.398401.1306873130217.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Tue, 31 May 2011 16:18:50 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE Request -- syslog-ng -- Possible DoS
Content-Type: text/plain; charset=utf-8

----- Original Message -----
> Hi All,
> 
> In syslog-ng if a recent enough libpcre is installed (ie. 8.12 or newer)
> there is a possible Denial of Service.
> 
> In our (BalaBit) opinion tis is not a big security issue, because if you
> use the vulnerable setting you will run into the DoS for sure without any
> malicious attack.
> 
> The attack vector is that the attacker send a message which the regexp
> not match.
> 
> But because of this bug get this amount of attention, it' may worth the
> CVE id.
> 
> References:
> http://git.balabit.hu/?p=bazsi/syslog-ng-3.2.git;a=commit;h=09710c0b105e579d35c7b5f6c66d1ea5e3a3d3ff
> http://www.securityfocus.com/bid/47800/
> 

Please use CVE-2011-1951.

Thanks.

-- 
    JB
