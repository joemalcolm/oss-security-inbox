Received: (qmail 7271 invoked by uid 550); 2 May 2026 18:58:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23564 invoked from network); 2 May 2026 18:55:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=risingedge.co.za; s=xneelo; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:To:From:reply-to:sender:cc:bcc
	:content-type; bh=tDaRvZiGd8kidkeiLzJqzdRPxVHqpxpn8z03MNJ80hE=; b=DaKp87URHA4
	3XNhMmT19RXAG9+L2ncNtwn5LGz8+qccoYkQi3atUD6z9hn/uFrZqM4t8VEZCrU+D1iBv2t8kmi2t
	n85M8adL/QEy9/cIeppF2tC1yG2bqmkPiVp8UDIP1YRdolPfW3SoqXAkf+JVdgqpReiMH5mCLlhG5
	JeoD1hutxEl1+O2q+Z3/OHRH1m1YtOZfiAwF9jjuWkDtQp+bzGY8KoHi+VkD9WQ8IGMEEweK4La+A
	aDMdfy3a8fsBenNYIBWLxpEp2xLpb1+kfLpxZNGQkQ2VvqBwgBRu2xdsqbmkCUBAKg9Hy/J/4Cqac
	JdKRZWqCW5Qv2FyXFlLaizw==;
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: oss-security@lists.openwall.com
Date: Sat,  2 May 2026 20:56:08 +0200
Message-Id: <20260502185608.24115-1-justin.swartz@risingedge.co.za>
In-Reply-To: <56cd1494d297ad327a8c2a4cc77308559fbee7f8.camel@thirddimension.net>
References: <afJorKIje4O6dXbH@netmeister.org> <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net> <87se8dgicq.fsf@gentoo.org> <afL-QhLfEKqHZqka@eldamar.lan> <2026043026-treat-devotion-23d7@gregkh> <CAPmip_zqswCZ6PfnW_DPEoSuY6Jewfw1eyeP_azYH4JFgRipNA@mail.gmail.com> <12a8c210-2f79-4fa2-a9c6-bbd203325f42@oracle.com> <315f9a67337d8e930cfb95a4b644946bf2f69687.camel@thirddimension.net> <20260501165221.27420-1-justin.swartz@risingedge.co.za> <56cd1494d297ad327a8c2a4cc77308559fbee7f8.camel@thirddimension.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net; auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.08)
X-Recommended-Action: accept
X-Filter-ID: 9kzQTOBWQUFZTohSKvQbgI7ZDo5ubYELi59AwcWUnuVf8kqL7ZU4xrEUExQhvzsNcqvuGvU6G7Gj
 XLGbKeeQeyu2SmbhJN1U9FKs8X3+Nt0Io1idSgCc/506nnISAkPANvJkKIxakGlbxi+ggiqZlxxH
 xN7wu8yGEPLNcyeaFThLvla4vwyLkYvNkUmDgOHOBMmyNbDn7R5kilAhwr3KtFb3AgNUGvQRnUF+
 Lycvfx+SVUSshQka8VpEeqGYZUq9x6uBPuq+Gm7dtLrcVMrJoohSnw9YyoGHx/ukuag1WKBLWDaO
 GAC1PCRtpOZuVuRfKVFCXTS2zVmMeFsPQMyMp5ya4EnB7foI3WDAWEIqQR42kI22V3+6/8VpCe4k
 l4rBro7NG5FMnAx+YiDY2J/czJYIiHqfCgG4wrA3w4/kQTaLfhXaMgiD0j3v6Ie9X8yyJClZqIWe
 ElTlhke8IyK52DdtyTpRDuDZactSZQHS5CIA4kv6jpHeL4itl5GdKHos6cTrAfIBtLJVe62uoyOA
 UhmSvC6qJad8oDRDO7zv2HyvHObXCPPKSd2xpqdSbP9LdDgGQETciExfV//6y6W7Dk3621qUIfzc
 FXeghALwUxUR37FaFlv3F2PbvabG99OCbPN7v9MApiZJ0jIuv2upMAEiRQv+PVjjwa+Z5RFCOMQ+
 rkssTV42UJ+1K8svYHitXuUtdBRw0CzMOyehQ6vQGMEw1nKRbOfg7Yg50ULhGptZzPImFuDj9wtn
 CHpNAoiDqeFMEyid5arI9OX88Mez1seXwD4BM2jQz1LojaPvzWFG78u4Z9swKs6X6s50biZUTMJ7
 bHbjQcSj2k6ROS/HeG5K61yXY75ytT3/xJ9H/2sPTCNmVz3wSPPM6ODIG3M8tIY8RXNFwCHTivEv
 QLPd1P4bw2RxeVx5WfYBV5Z0ipKtF1VPccloD2rUVRwpPdcTfqb5R4VemuUI6bcEARsm0MIEL6H2
 5DNnVReRKfCEH3VMuaKkhDGeWUGKiyBKYF6y5eh+QfFP7pcU8NRnbcMqdtqW+IuA05DGXjIjSPSU
 iMlahI4i4TNLKKi5WRMONPLcJy48BaQZ9dlwiO6d4xuBNw==
X-Report-Abuse-To: spam@antispamquarantine.host-h.net
X-Complaints-To: abuse@antispammaster.host-h.net
Subject: [oss-security] Re: Re: CVE-2026-31431: CopyFail: linux local privilege scalation

On Fri, May 1, 2026 at 20:25:17 -0400, Reid Sutherland wrote:
> Why is userspace allowed to load modules in any capacity?

It's potentially useful for autoloading driver modules when PnP
devices are connected, which could be considered deadweight if
they were loaded, or baked into the kernel itself, when the
respective devices aren't present.


> Why do we need kernel modules for math?

To interact with cryptographic acceleration hardware, if present or
desired, and to provide support for kernel subsystems that rely on
encryption, like IPSec or WireGuard.


> I'm assuming any thoroughly qualified platform engineer compiles
> the host kernel without module support.  At least, that needs to
> make a comeback, bring back applying grsec patches and make
> menuconfig..

I'm thoroughly unqualified, so take my opinion with a bag of salt:

If you have a use case that allows you to avoid loadable kernel
modules indefinitely in a completely monolithic kernel then, by
all means, roll your kernel as such and you'll be slightly safer
than those who don't.

Kernel configuration minification doesn't seem to be spoken of
much anymore except by those who have fairly resource constrained
embedded systems that run Linux on some application processor.

If you're prepared to go that far, why not roll your own distro?

LFS is a potentially good starting point, but you can get by with
even less. For example: Linux, musl, busybox, just the applications
(and mandatory dependencies) you need, and some init scripts to tie
it all together.
