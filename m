X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1636" "Tuesday" "17" "November" "2020" "11:24:24" "+0100" "Marcus Meissner" "meissner@suse.de" "<20201117102424.GE28237@suse.de>" "39" "Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" nil nil nil "11" "2020111710:24:24" "[oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" (number mark "U       meissner@sus Nov 17   39/1636  " thread-indent "\"Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros\"\n") "<87eekt9l5k.fsf@gnu.org>" ("<20201113133331.48185f9f@computer>" "<20201114115850.GB5193@suse.de>" "<E25813A6-081D-4B42-AD7E-8D38F5320D7E@dwheeler.com>" "<87eekt9l5k.fsf@gnu.org>") nil nil nil nil nil nil nil "Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31931 invoked by uid 550); 17 Nov 2020 10:24:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31910 invoked from network); 17 Nov 2020 10:24:34 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Tue, 17 Nov 2020 11:24:24 +0100
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Cc: "David A. Wheeler" <dwheeler@dwheeler.com>
Message-ID: <20201117102424.GE28237@suse.de>
References: <20201113133331.48185f9f@computer>
 <20201114115850.GB5193@suse.de>
 <E25813A6-081D-4B42-AD7E-8D38F5320D7E@dwheeler.com>
 <87eekt9l5k.fsf@gnu.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87eekt9l5k.fsf@gnu.org>
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Maxfeldstr=2E_5=2C_90409_Nuernberg=2C_Germany?=
 =?iso-8859-1?Q?=2C_GF=3A_Felix_Imend=F6rffer=2C_HRB_36809=2C_AG_N=FCrnber?=
 =?iso-8859-1?Q?g?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux
 distros

On Mon, Nov 16, 2020 at 08:06:15PM +0100, Marius Bakke wrote:
> "David A. Wheeler" <dwheeler@dwheeler.com> writes:
> 
> > If you think that CVE assignment is still of “fluctuating reliability” I’d like to hear that argument
> > and get it fixed. It’s normally better to fix the standard process for doing something than
> > to create yet another process that runs in parallel. I’ve seen no recent evidence of this reliability issue.
> 
> Speaking as a co-maintainer of an understaffed GNU/Linux distribution
> who fixed this back in 2017[0], I preferred the "old days" when free
> software security problems were almost always discussed on this list.
> 
> While there's no questioning the utility of CVEs in general (Guix can
> check the CVE list for any given package with 'guix lint -c cve PKG'),
> there are still unresolved CPE mappings, and I don't know how to get
> informed of new problems without checking specific (or all) packages.
> 
> I tried following the CVE assignment RSS feed initially, but it was not
> suitable for human consumption.
> 
> How do other distros keep up with new CVE assignments?

SUSE has an internal ticket system like tool that fetches from various
sources:

- NVD
- SUSE Bugzilla
- Oracle CPU CVRF feeds
- Redhat, Canonical trackers

And presents this as ticketstyle input.

We have assigned engineers going through all incoming ones, reviewing,
associating packages, codestreams and products, and CVSS v3.1 ratings in this
tool and opening Bugreports in our Bugzilla for our packagers.

Without some ticketing system like tooling you will not be able to keep up
these days.

Ciao, Marcus
