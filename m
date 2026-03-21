Received: (qmail 3656 invoked by uid 550); 21 Mar 2026 20:20:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14016 invoked from network); 21 Mar 2026 20:16:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=risingedge.co.za; s=xneelo; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:reply-to:sender:bcc
	:content-type; bh=WK5+9O6qiTAcA0DGjHi56HfKyN9xcK8pfMwTRLUTWh4=; b=Xtm3oIdFeEm
	pDU0XIGtMnQkc8NFTuWrxLWm2x6sIw2pVq9jrKvZQ8KRZ0TMZo4rA8GipO07Iayz9E06AwQLiCbLW
	sfjBDnQoAb8x2aQAb+YTmPpYcSifdTqDemElFrJIgugC8hGQfKg5MDl1b+6iAWwug+Fa0QvCFvxpL
	Kh45/jqUYwpnlHkMFE+ge+dPcVgAL4pQGiO+eJ5TyZai7tB+OqHG+9hx0AZ52TY86rUo/Rj0SC48Q
	Qw1G8DS4TuyKYY8zE2rCvzpyKJp+Js5OuY6lNpK3yWwB2HSQE+o5VnbfPB8nVMSQoRwv0oVhAxYc3
	Y3ZQuUuvdemFzDapRs9sXOw==;
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: oss-security@lists.openwall.com
Cc: justin.swartz@risingedge.co.za
Date: Sat, 21 Mar 2026 22:16:52 +0200
Message-Id: <20260321201652.9287-1-justin.swartz@risingedge.co.za>
In-Reply-To: <20260321180013.GA20708@openwall.com>
References: <EEDF7B9C-89E2-4544-A33D-DBF2B0FED6E0.1@smtp-inbound1.duck.com> <20260321180013.GA20708@openwall.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net; auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.10)
X-Recommended-Action: accept
X-Filter-ID: 9kzQTOBWQUFZTohSKvQbgI7ZDo5ubYELi59AwcWUnuVqs0WOpGULDjzCSFuzrIJMDCjBckhsoymc
 2GXaiPadxCu2SmbhJN1U9FKs8X3+Nt0Io1idSgCc/506nnISAkPANvJkKIxakGlbxi+ggiqZlxxH
 xN7wu8yGEPLNcyeaFTgKBQeFdTHzWpESYbmCLMe1BMmyNbDn7R5kilAhwr3KtFb3AgNUGvQRnUF+
 Lycvfx+SVUSshQka8VpEeqGYZUq9E9d2wzwQxbXkmlRlwduBj4hSnw9YyoGHx/ukuag1WKBLWDaO
 GAC1PCRtpOZuVuRfKVFCXTS2zVmMeFsPQMyMp5ya4EnB7foI3WDAWEIqQR42kI22V3+6/8VpCe4k
 l4rBro7NG5FMnAx+YiDY2J/czJYIiHqfCgG4wrA3w4/kQTaLfhXaMgiD0j3v6Ie9X8yyJClZqIWe
 ElTlhke8IyK52DdtyTpRDuDZactSZQHS5CIA4kv6jpHeL4itl5GdKHos6cTrAfIBtLJVe62uoyOA
 UhmSvC6qJad8oDRDO7zv2HyvHObXCPPKSd2xpqdSbP9LdDgGQETciExfV//6y6W7Dk3621qUIfzc
 FXeghALwUxUR37FaFlv3F2PbvabG99OCbPN7v9MApiZJ0jIuv2upMAEiRQv+PVjjwa+Z5RFCOMQ+
 rkssTV42UJ+1K8svYHitXuUtdBRw0CzMOyehQ6vQGMvdVfFE4BvNT4payuSV1mxZzPImFuDj9wtn
 CHpNAoiDqeFMEyid5arI9OX88Mez1seXwD4BM2jQz1LojaPvzWFG78u4Z9swKs6X6s50biZUTMJ7
 bHbjQcSj2k6ROS/HeG5K61yXY75ytT3/xJ9H/2sMZidzpIMUsjKlj5Ezu+Gfw6YEC+Wo4SDETiTT
 GiY2n/4bw2RxeVx5WfYBV5Z0ipKtF1VPccloD2rUVRwpPdcTfqb5R4VemuUI6bcEARsm0MIEL6H2
 5DNnVReRKfCEH3VMuaKkhDGeWUGKiyBKYF6y5eh+QfFP7pcU8NRnbcMqdtqW+IuA05DGXjIjSPSU
 iMlahI4i4TNLKKi5WRMONPLcJy48BaQZ9dlwiO6d4xuBNw==
X-Report-Abuse-To: spam@antispamquarantine.host-h.net
X-Complaints-To: abuse@antispammaster.host-h.net
Subject: [oss-security] Re: Buffer overflow in /bin/su from UNIX v4

Sat, 21 Mar 2026 19:00:13 +0100, Solar Designer wrote: 
> On Sat, Mar 21, 2026 at 01:13:47PM -0400, kf503bla@...k.com wrote:
> > why assign cve to something irrelvent?
> 
> I guess because (ir)relevance isn't among criteria for (not) assigning a
> CVE, and because there may be value in having a non-ambiguous way to
> refer to historical vulnerabilities for illustration of how the current
> ones fit in historical context.

Beyond the historical context, there is an argument to be made
for being aware of known defects in legacy codebases which have
been resurrected for use on modern resource-constrained hardware.

For example, the RetroBSD [1] project provides a port of 2.11BSD
intended for PIC32 (MIPS) targets. There's also an actively
maintained RetroBSD fork, called DiscoBSD [2], which adds support
for STM32F4 (ARM Cortex-M4) targets and had its last release [3]
last month.

And then there's Serge Vakulenko's LiteBSD [4], a 4.4BSD port to
PIC32.

And who knows where Robert Nordier's port of UNIX V7, v7/x86 [5],
may be running?

While these projects might modernize parts of the kernel and/or
userland, there's always the possibility of bug-ridden code (and
bug-ridden assumptions) being inherited from their respective BSD
and/or Research UNIX lineage - as we've all seen with BSD derived
telnet server and client implementations recently.

Regards,
Justin


--- Links ---

[1] https://retrobsd.org
[2] http://discobsd.org
[3] https://github.com/chettrick/discobsd/releases/tag/DISCOBSD_2_6
[4] https://github.com/sergev/LiteBSD
[5] https://www.nordier.com/#v7x86
