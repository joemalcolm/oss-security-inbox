Received: (qmail 9505 invoked by uid 550); 30 Jun 2022 20:13:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9481 invoked from network); 30 Jun 2022 20:13:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1656619966;
	bh=1l2ZIr3SJX0fW1edpBdT3Ca8xcdpN+JtjGuJnZQuisw=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
	b=QejUZW5/92euzEOwCl0zKN+6soBP9m/JrRXd/xQi9Oql2xtPb+jJWK0jX7SYNy3Yo
	 yZAzKx6Q8gUPWpdRgFEasjbDXyUbprv3oPeo4YX1OciDr0MY+kMDn3q0s7k3H8NaFD
	 T0s/rYqPiTGdASdHXBMHFUed0XmUJUjnqggUKGE8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
MIME-Version: 1.0
Message-ID: <trinity-899166b1-0752-4850-abb1-9b7f19201378-1656619966440@3c-app-gmx-bs04>
From: Norbert Slusarek <nslusarek@gmx.net>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com, peterz@infradead.org,
 vegard.nossum@oracle.com
Content-Type: text/plain; charset=UTF-8
Date: Thu, 30 Jun 2022 22:12:46 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220630091210.GA3060@openwall.com>
References: <trinity-5f3c0fdf-d83f-422e-9a05-c4ead66e42e1-1653077676864@3c-app-gmx-bap52>
 <20220521154759.GA15268@openwall.com>
 <trinity-4c518dcc-751b-4893-82dc-b2f80734eb9d-1653430844824@3c-app-gmx-bap13>
 <20220524232155.GA2264@openwall.com>
 <trinity-3f5f7066-5ba5-45cb-b229-a2207e9fe209-1653583477988@3c-app-gmx-bap49>
 <20220526173546.GA8848@openwall.com> <20220630091210.GA3060@openwall.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:Eh79En951gc4D1YQMadI7XjsoKew3zJQDnTbeVen8lsSAw02yByC2LS4LCm5MZzzLQ0NH
 ZvbCfaIo6zMEpNW0+x17ZLuQ7l5kgq65HEmMCnUr0h2Ng6wxWH6ByMjS+OtbtncSGi8cbV5qTQsG
 yHLdfO0fjot/eBz3KgOMcKBDFJa8eMJm8q3j7XQKuhtlr9NvvEmkioaNNOQMQyCTT2+MsoWx3UmY
 vyZP+9ShWZgrL93yN5bk+kUNNE5GGvKe0Kz1nnRBGiG6gfGw1D3lwagAr23uAYSEj06baQ0qvl6d
 tQ=
X-UI-Out-Filterresults: notjunk:1;V03:K0:JKge0TiEyVk=:3KX4ae7XZarPPg+O5uGxxx
 fC0jOB+ofPIA5qSsNUTyavnAgAIP7Y+de1b4BZHtSDF2StpzqA+qVsYzFz31qlFP/09j8yrCc
 bNpThsV0P42k0bUnHRtE6c7ltWCqZDLaWt+YfN5Cgeo0MJOoYp/T3SGdddRLvMbuehBDsDBh4
 H3Zsl5y2A+IAKb/nX6SOdbj1BcxHyaZh0ljoCUtPSySNj4h46Ix6qc343LZpNiFQn+flfHUUr
 UTEW9mqS1ulyP/SqfO7RS5B5A7dcigni52KfeqjTTMkZHPacGgK8LfH39PxXEl8no2XJ9bGRJ
 Sf83xvIFDz4pcUj20dkSkQDSQ7bsoDvC2kAkwQQYwXKagdJYlryk4zhcG28k9E9ZLxgz6mVXR
 CPq9edStEBbJP/kmn3wTFlBIOdJvEPwvl6/bsa0T9iDn2XMp56Mmm7rEfA6giaB/lkIgUE3+4
 sKPBbyQe26hPjS177NJn/XD/DgjL7KNg1p2d6BTeYOf6m3m6y/2iBmIgECZ8dxtbmv0R3zUPp
 EFT4jyE4UI8+jg4OzoaWPEk5Gwrd0rHrWxqNUhxKFPUc06hj7JaWyK+eDPPP1i509r/CYnXGL
 JXHQTBULwqXP4gGokz2Sl7ZNbrL3rutA4B6ETwcao+hvz9PT5veyIpfOb+tcl79i94XWpt82E
 Q+a9MNo3bvLZo1WbQKAojasa8L4CeG90+yngP+41RkEL3oPIZq4EGOa1bz40feSsfJcYyLgxf
 8eJtjwLf6Kp5skmeYZdR1QpN+1m/UUV3CZpQyyFuErLbL7FHpIm9jMdRUd89dwEz/aBWR8fX3
 zlt/IvS
Subject: Re: [oss-security] CVE-2022-1729: race condition in Linux perf
 subsystem leads to local privilege escalation

>I'm attaching Norbert's exploit (lpe.c) that was attached to his May 12
>notification to linux-distros. We're now one month past the due date
>for Norbert's expected posting of this (should have been May 27, which
>is 7 days after public disclosure of the vulnerability on oss-security).
>
>Norbert, I would still appreciate a reply to the message below. I'm
>quoting it in full for context since it's been a month.
>
>Thanks,
>
>Alexander
>
>"If you shared exploit(s) that are not an essential part of the issue
>description, then at your option you may slightly delay posting them to
>oss-security but you must post the exploits to oss-security within at
>most 7 days of making the mandatory posting above. If you exercise this
>option, you have two mandatory postings to make: first with a
>sufficiently detailed issue description (as requested above) and with an
>announcement of your intent to post the exploits separately (please
>mention exactly when), and second with the exploits - or indeed you
>could have included the exploits right away, in your first and only
>mandatory posting."
>
>Did you read this before posting? If not, anything we should have done
>to ensure you'd have read it?

I missed it when I read the policy.
I think having all of the requirements structured in one place is a good
idea. Vegard's new page regarding reporting bugs in the Linux kernel
makes it clear which essential rules to follow for the Linux security
list as well as linux-distros and oss-security.

Norbert
