X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/09/25/1
Message-ID: <4C9D4BA5.5030605@redhat.com>
Date: Sat, 25 Sep 2010 09:08:53 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: dann frazier <dannf@...ian.org>, Thomas Dreibholz <dreibh@....uni-due.de>, Vlad Yasevich <vladislav.yasevich@...com>, Ben Hutchings <ben@...adent.org.uk>
Subject: Re: CVE Request -- Linux/SCTP DoS in sctp_packet_config()
Content-Type: text/plain; charset=utf-8

On 09/25/2010 12:27 AM, dann frazier wrote:
> Please assign a CVE for the remote DoS issue described here:
>    http://marc.info/?l=linux-netdev&m=128453869227715&w=3
>
> Upstream fix:
>    http://git.kernel.org/4bdab43323b459900578b200a4b8cf9713ac8fab

Please use CVE-2010-3432.

Thanks, Eugene
-- 
main(i) { putchar(182623909 >> (i-1) * 5&31|!!(i<7)<<6) && main(++i); }
