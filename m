X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2507" "Tuesday" "7" "April" "2015" "07:20:40" "+0200" "Marcus Meissner" "meissner@suse.de" "<20150407052040.GF5345@suse.de>" "72" "Re: [oss-security] Re: CVE Request : IPv6 Hop limit lowering via RA messages" nil nil nil "4" "2015040705:20:40" "[oss-security] Re: CVE Request : IPv6 Hop limit lowering via RA messages" (number mark "        meissner@sus Apr  7   72/2507  " thread-indent "\"Re: [oss-security] Re: CVE Request : IPv6 Hop limit lowering via RA messages\"\n") "<20150404072749.B0AF66C0033@smtpvmsrv1.mitre.org>" ("<CAO0vwOXOPSGb8xWiutn+r+rXhSQc3SwC8-S2bkpRZuRAvDOyHw@mail.gmail.com>" "<20150404072749.B0AF66C0033@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7282 invoked by uid 550); 7 Apr 2015 05:20:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7261 invoked from network); 7 Apr 2015 05:20:53 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20150407052040.GF5345@suse.de>
References: <CAO0vwOXOPSGb8xWiutn+r+rXhSQc3SwC8-S2bkpRZuRAvDOyHw@mail.gmail.com>
 <20150404072749.B0AF66C0033@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150404072749.B0AF66C0033@smtpvmsrv1.mitre.org>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Jennifer_Guild=2C_Dilip_?=
 =?iso-8859-1?Q?Upmanyu=2C_Graham_Norton=2C_HRB_21284_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: ljungmark@modio.se, cve-assign@mitre.org
Date: Tue, 7 Apr 2015 07:20:40 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request : IPv6 Hop limit lowering via RA
 messages
To: oss-security@lists.openwall.com

Hi,

This is CERT VU#711516.

(The IPv6 gurus might disagree on CVE worthyness .. Rogue L2 nodes
 in a IPv6 network can do more damage even.)

Ciao, Marcus
On Sat, Apr 04, 2015 at 03:27:49AM -0400, cve-assign@mitre.org wrote:
> > An unprivileged user on a local network can use IPv6 Neighbour
> > Discovery ICMP to broadcast a non-route with a low hop limit, this
> > causing machines to lower the hop limit on existing IPv6 routes.
> 
> > Projects impacted:  Linux kernel,  NetworkManager, FreeBSD Kernel
> 
> > https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=6fd99094de2b83d1d4c8457f2c83483b2828e75a
> 
> Use CVE-2015-2922 for the Linux kernel vulnerability.
> 
> 
> > https://lists.freebsd.org/pipermail/freebsd-net/2015-April/041934.html
> 
> Use CVE-2015-2923 for the FreeBSD vulnerability.
> 
> 
> > ,  NetworkManager
> 
> This might refer to
> http://cgit.freedesktop.org/NetworkManager/NetworkManager/tree/src/rdisc/nm-lndp-rdisc.c
> 
>   hop_limit = ndp_msgra_curhoplimit (msgra);
>   if (rdisc->hop_limit != hop_limit) {
>           rdisc->hop_limit = hop_limit;
>           changed |= NM_RDISC_CONFIG_HOP_LIMIT;
> 
> however, the MITRE CVE team is not directly familiar with this part of
> the NetworkManager code and has not researched any changes to the
> "rdisc->hop_limit != hop_limit" test. There is apparently no commit
> available yet at:
> 
>   http://cgit.freedesktop.org/NetworkManager/NetworkManager/log/src/rdisc/nm-lndp-rdisc.c
> 
> but, again, we don't know whether changes would need to occur there.
> 
> Use CVE-2015-2924 for the NetworkManager vulnerability.
> 
> 
> Also, note that
> 
>   http://patchwork.ozlabs.org/patch/453995/
> 
> refers to affected closed-source products. (CVE IDs for closed-source
> products would be announced elsewhere.) It also refers to Android. We
> don't know whether Android was listed only because of a
> shared-codebase issue, e.g.,
> 
>   https://android.googlesource.com/kernel/common/+/android-3.18/net/ipv6/ndisc.c
> 
> (there is no commit at
> https://android.googlesource.com/kernel/common/+log/android-3.18/net/ipv6/ndisc.c
> currently)
> 
> or whether Android is affected in other ways. Unless there is
> incorrect hop_limit processing in code that is specific to Android,
> Android would not have a unique CVE ID.
> 
> -- 
> CVE assignment team, MITRE CVE Numbering Authority
> M/S M300
> 202 Burlington Road, Bedford, MA 01730 USA
> [ PGP key available through http://cve.mitre.org/cve/request_id.html ]
> 
