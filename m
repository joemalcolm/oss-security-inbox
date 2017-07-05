X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1588" "Wednesday" "5" "July" "2017" "23:28:06" "+0100" "Simon McVittie" "smcv@debian.org" "<20170705222806.u44tcrhruczgpkb7@perpetual.pseudorandom.co.uk>" "30" "Re: [oss-security] systemd fails to parse user that should run service" "^Date:" nil nil "7" "2017070522:28:06" "[oss-security] systemd fails to parse user that should run service" (number mark "        smcv@debian. Jul  5   30/1588  " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<9a2c8b5b-aeee-7e39-099e-3ee706de7b73@gentoo.org>" ("<20170705215814.4wyzvq2deid4ln7q@perpetual.pseudorandom.co.uk>" "<9a2c8b5b-aeee-7e39-099e-3ee706de7b73@gentoo.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5797 invoked by uid 550); 5 Jul 2017 22:28:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5779 invoked from network); 5 Jul 2017 22:28:39 -0000
Message-ID: <20170705222806.u44tcrhruczgpkb7@perpetual.pseudorandom.co.uk>
References: <20170705215814.4wyzvq2deid4ln7q@perpetual.pseudorandom.co.uk>
 <9a2c8b5b-aeee-7e39-099e-3ee706de7b73@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9a2c8b5b-aeee-7e39-099e-3ee706de7b73@gentoo.org>
User-Agent: NeoMutt/20170609 (1.8.3)
Date: Wed, 5 Jul 2017 23:28:06 +0100
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
To: oss-security@lists.openwall.com

On Thu, 06 Jul 2017 at 00:02:58 +0200, Kristian Fiskerstrand wrote:
> On 07/05/2017 11:58 PM, Simon McVittie wrote:
> > systemd does have a (public, and publically-archived) mailing list, which
> > has a current thread on the subject of this issue.
> > 
> > In particular the mail in that thread from Felipe Sateler, and some of
> > the discussion on the upstream bug, touches on reasons why neither
> > "if anything is not as expected, reject the whole unit" nor the current
> > behaviour is right. I suspect the resolution is likely to be something
> > in between.
> 
> It would be useful with a reference to the thread in question so this
> can be further looked into.

The systemd mailing list is indexed by major search engines. I
deliberately didn't provide a link, in the hope that a small barrier to
entry will lead to fewer responses reiterating what has already been said,
and a correspondingly greater chance of a response not getting lost in
the noise from someone who has read the context and will propose a
patch that achieves the desired result without breaking intended
functionality (in particular "graceful degradation" when units released
in upstream projects are interpreted by an older systemd, so that
upstreams can opt-in to new security hardening flags without making their
software inoperable in currently-deployed systemd versions).

Of course, if I was an exemplary open source developer I would have been
spending my free time on writing that patch instead of getting drawn into
conversations on oss-security, so perhaps this is partially my fault now.

    S
