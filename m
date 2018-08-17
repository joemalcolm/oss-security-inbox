X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2373" "Friday" "17" "August" "2018" "14:52:44" "+0200" "Marcus Meissner" "meissner@suse.de" "<20180817125244.illsqe3lckimtnms@suse.de>" "53" "Re: [oss-security] Rule for releasing fixes for embargoed bugs" "^Date:" nil nil "8" "2018081712:52:44" "[oss-security] Rule for releasing fixes for embargoed bugs" (number mark "        meissner@sus Aug 17   53/2373  " thread-indent "\"Re: [oss-security] Rule for releasing fixes for embargoed bugs\"\n") "<20180817114516.GA27667@nautica>" ("<20180817114516.GA27667@nautica>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32485 invoked by uid 550); 17 Aug 2018 12:52:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32466 invoked from network); 17 Aug 2018 12:52:56 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20180817125244.illsqe3lckimtnms@suse.de>
References: <20180817114516.GA27667@nautica>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180817114516.GA27667@nautica>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: NeoMutt/20170421 (1.8.2)
Date: Fri, 17 Aug 2018 14:52:44 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Rule for releasing fixes for embargoed bugs
To: oss-security@lists.openwall.com

Hi,

On Fri, Aug 17, 2018 at 01:45:16PM +0200, Dominique Martinet wrote:
> Hi,
> 
> I tried asking this question in private and was told there is no clear
> rule (and opinions vary) on the subject of releasing fixes for bugs
> still under embargo; and to ask the list, so here we go:
> 
>  When should vendors publish fixes for bugs that are under embargo ?
> 
> 
> My opinion is that the point of security embargoes, and linux-distro in
> particular, is to give vendors time to prepare a fix so that fixes can
> be released almost immediately after the issue is made public.
> 
> Releasing a fix early pretty much leaks the issue to people monitoring
> distro updates, especially if there is a clear changelog that states
> there have been security fixes with a neat summary and sources are
> available.
> 
> 
> I'm asking because this happened today and some vendor released a kernel
> with patches for CVE-2018-3690 (yet another speculation/side-channel
> vulnerability), but their fix for it broke another component in the
> kernel (RDMA networking) and people trying to fix that bug are now
> wasting their's and everyone's/my time saying they cannot make the RDMA
> issue public because it has been caused by a security fix still under
> embargo.
> At this point, I'm not sure what this is supposed to protect: I have a
> pretty good idea of what the fixes are about and I'm not a security
> researcher, so if I could figure this much I'm sure smarter people can
> use it, and folks who are waiting for the embargo to end before actually
> posting fixes (including upstream!) are now leaving their users in
> trouble.
> 
> 
> I don't really care about speculation/side channel attacks frankly but
> there's no reason other bugs won't have the same issue, so I think
> "waiting for the issue to be made public before releasing fixes" should
> be made a rule if at all possible.

There seems to be some miscommunation here, which should be directly
clarified with the security team of the affected distribution(s).

Rule of thumb is: when a vendor publishes updates for an issue, the issue
is public and can be referenced publically. I do not understand why you
would get push back unless there are communication problems.

Also FWIW CVE-2018-3690 is an older reference to "Bounds Check Bypass Store",
which is now tracked as CVE-2018-3693 and is public.

Ciao, Marcus
