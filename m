X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1046" "Tuesday" "7" "November" "2017" "12:22:07" "-0500" "Charlie Brady" "charlieb-oss-security@budge.apana.org.au" "<Pine.LNX.4.64.1711071219160.10376@e-smith.charliebrady.org>" "33" "Re: [oss-security] Net::Ping::External command injections" "^Date:" nil nil "11" "2017110717:22:07" "[oss-security] Net::Ping::External command injections" (number mark "        charlieb-oss Nov  7   33/1046  " thread-indent "\"Re: [oss-security] Net::Ping::External command injections\"\n") "<20171107165127.GA1693@weckbecker.name>" ("<20171107165127.GA1693@weckbecker.name>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15976 invoked by uid 550); 7 Nov 2017 17:26:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5397 invoked from network); 7 Nov 2017 17:22:20 -0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2EmBgDu6gFa/wzcpUVdHAEBAQQBAQoBA?=
 =?us-ascii?q?YM0RCBuJ48QjjKBezQBl30oLYFegzoChHZEFAEBAQEBAQEBAQNoKFcBghJHLAE?=
 =?us-ascii?q?BAQEBAQEBASIBAQEBAQEBIwINKA8nAQQBJxMcKAsLRjkeijQIEKsZOohHglABM?=
 =?us-ascii?q?YMwhXiCdoFJAYF4gh+FLAWRYIETjyOHZpALiHSHUIxnhUmDYIFJNiKBcTQhIYN?=
 =?us-ascii?q?GCYJTDBCCBSM2AYgehDsBAQE?=
X-IPAS-Result: =?us-ascii?q?A2EmBgDu6gFa/wzcpUVdHAEBAQQBAQoBAYM0RCBuJ48QjjK?=
 =?us-ascii?q?BezQBl30oLYFegzoChHZEFAEBAQEBAQEBAQNoKFcBghJHLAEBAQEBAQEBASIBA?=
 =?us-ascii?q?QEBAQEBIwINKA8nAQQBJxMcKAsLRjkeijQIEKsZOohHglABMYMwhXiCdoFJAYF?=
 =?us-ascii?q?4gh+FLAWRYIETjyOHZpALiHSHUIxnhUmDYIFJNiKBcTQhIYNGCYJTDBCCBSM2A?=
 =?us-ascii?q?YgehDsBAQE?=
X-IronPort-AV: E=Sophos;i="5.44,359,1505793600"; 
   d="scan'208";a="8761692"
X-X-Sender: charlieb@e-smith.charliebrady.org
In-Reply-To: <20171107165127.GA1693@weckbecker.name>
Message-ID: <Pine.LNX.4.64.1711071219160.10376@e-smith.charliebrady.org>
References: <20171107165127.GA1693@weckbecker.name>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Date: Tue, 7 Nov 2017 12:22:07 -0500 (EST)
From: Charlie Brady <charlieb-oss-security@budge.apana.org.au>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Net::Ping::External command injections
To: oss-security@lists.openwall.com


Is the primary fault in Net::Ping::External, or in whatever software takes 
untrusted input and uses it to construct args used in 
Net::Ping::External->ping()?

On Tue, 7 Nov 2017, Matthias Weckbecker wrote:

> Hi,
> 
> Net::Ping::External [0] is prone to command injection vulnerabilities.
> 
> The issues are roughly 10 (!) years old [1], but the code is still being
> shipped these days (e.g. in ubuntu artful and debian stretch [2]).
> 
> I had contacted the author of the code a few days ago, but obviously did
> not get any reaction.
> 
> A patch is available here:
> 
>   http://matthias.sdfeu.org/devel/net-ping-external-cmd-injection.patch
> 
> Maybe time to just patch it downstream? Or drop this pkg. altogether?
> 
> Thanks,
> Matthias
> 
> --
> [0] https://metacpan.org/pod/Net::Ping::External
> [1] https://rt.cpan.org/Public/Dist/Display.html?Name=Net-Ping-External
>     (id #33230)
> [2] https://packages.debian.org/stable/perl/libnet-ping-external-perl \
>     https://launchpad.net/ubuntu/+source/libnet-ping-external-perl
> 
