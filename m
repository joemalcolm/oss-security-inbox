Received: (qmail 28473 invoked by uid 550); 7 Mar 2026 14:41:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16128 invoked from network); 6 Mar 2026 23:37:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description;
	bh=VNtEA8fyG84PyMaJDdYJAEi8bOUZNExHU5QSxx2kuLc=; b=B2R1extt0nVYd374Bk4FUUn45e
	L2JJITMH5He0bkohTCfOEClal3kyETh525p2ZCtBhHZTEBESKNFtdEDS8auB9C7WwpDqDMAd+CUqB
	A8S8aVCxT4O4swlm1x6yAo8MwLYeRWJ/AdzsGRTxhRgQOHncoRvtCSBvs0icMWRdM4En6q6tH+0Y8
	uQ4KKpsf032H5laWZUP5mbHKUBLZnq0rqJY+oLC51wtlw6YUrUZkXaiRnhwm9uZTQX/oGtYFJTDzB
	i7+GFW0tWUMZjbjawIV9E9Tf/WagUa77f121gRexFKP7DHt8NYYPpgOCkH9BxKC5how2fq01dl+1O
	TEhALAJA==;
Date: Sat, 7 Mar 2026 00:37:40 +0100
From: Guillem Jover <guillem@debian.org>
To: Salvatore Bonaccorso <carnil@debian.org>
Cc: Solar Designer <solar@openwall.com>,
	Ron Ben Yizhak <ron.benyizhak@safebreach.com>,
	Justin Swartz <justin.swartz@risingedge.co.za>,
	bug-inetutils@gnu.org, oss-security@lists.openwall.com,
	simon@josefsson.org, auerswal@unix-ag.uni-kl.de
Message-ID: <aatlROBDmUY8v4Gv@thunder.hadrons.org>
Mail-Followup-To: Guillem Jover <guillem@debian.org>,
	Salvatore Bonaccorso <carnil@debian.org>,
	Solar Designer <solar@openwall.com>,
	Ron Ben Yizhak <ron.benyizhak@safebreach.com>,
	Justin Swartz <justin.swartz@risingedge.co.za>,
	bug-inetutils@gnu.org, oss-security@lists.openwall.com,
	simon@josefsson.org, auerswal@unix-ag.uni-kl.de
References: <CAB1hGqQwnSzEqtrefwqAxD+rWGu_EXVDmu-btMrNYqMzkzc9Kw@mail.gmail.com>
 <20260206172730.GA12303@unix-ag.uni-kl.de>
 <877bso8mhf.fsf@josefsson.org>
 <20260224011702.27987-1-justin.swartz@risingedge.co.za>
 <CAB1hGqSJPOQwc8h7g4u4WXjtDSupwkA8HjzEyU2gzbL5uavneg@mail.gmail.com>
 <aaGJlbbLS7cp0H-i@thunder.hadrons.org>
 <20260306151649.GB16746@openwall.com>
 <aar1K4kcGXpw_UGc@thunder.hadrons.org>
 <aatgo8pqaI-4IOMo@eldamar.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aatgo8pqaI-4IOMo@eldamar.lan>
Subject: Re: [oss-security] CVE-2026-28372: Telnetd Vulnerability Report

Hi!

On Sat, 2026-03-07 at 00:17:55 +0100, Salvatore Bonaccorso wrote:
> On Fri, Mar 06, 2026 at 04:39:23PM +0100, Guillem Jover wrote:
> > I'm not part of the Debian Security Team (I just maintain the inetutils
> > package in Debian), but I think they assigned a CVE because there didn't
> > seem to be one coming from upstream. I guess the expectation would be
> > that if there's a new CVE to be assigned that would be handled by
> > upstream, but if it's needed and it's not forthcoming they might assign
> > another one? (Although the easier way forward would be to reuse the
> > existing one, and issue an update for the DSA.)
> 
> I just need to clarify one thing here: The CVE was not assigned by the
> Debian CNA, but as there was no CVE assigned by the issue reported by
> Ron, I requested one from MITRE. There was none assigned in time when
> we released the DSA, and at that point TTBOMK the more general
> issue/root cause indication by Justin Swartz was not known. So the CVE
> request to MITRE was done specifically as for the issue found by Ron.

Right, sorry, as it seems like I forgot about this (where I was even
CCed in later emails mentioning this)!

Thanks,
Guillem
