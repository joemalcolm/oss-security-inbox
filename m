X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6224" "Thursday" "13" "December" "2018" "14:59:43" "+0100" "Greg KH" "greg@kroah.com" "<20181213135943.GA23987@kroah.com>" "130" "Re: [oss-security] Linux kernel: userfaultfd bypasses tmpfs file permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)" "^Cc:" nil nil "12" "2018121313:59:43" "[oss-security] Linux kernel: userfaultfd bypasses tmpfs file permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)" (number mark "U       greg@kroah.c Dec 13  130/6224  " thread-indent "\"Re: [oss-security] Linux kernel: userfaultfd bypasses tmpfs file permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)\"\n") "<20181212142415.GA11037@openwall.com>" ("<CAG48ez37UKxsRzpkxa8HbrWGAXWQ7H9OYjGzkaZgEmzY+QOF2Q@mail.gmail.com>" "<20181212142415.GA11037@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16270 invoked by uid 550); 13 Dec 2018 13:59:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16243 invoked from network); 13 Dec 2018 13:59:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm2; bh=HbKiFkLuh8UKDLYpGIwjQYKGDOo
	s0fApEeRfHtZuOUU=; b=qfsOoehQHp6UwW0QMD+8kGXjj3EBj5pkw6Vg9hiY0DZ
	0WGiLAy7MX0JZxThCD2uXlVffso0IfkIb5IIf4v42zumey8TI67aG9zSFY1kdbRW
	FtkTPRX0kLsMMGeyaA0FaEas6n0NgC/yvH+eL48vmrE6SAHHdprcEybpgYX2/6hc
	xi8riyIVE3Gv2ywNb/ICCiBFgEf/+4s80g7GcfdI3LVyX/iwSKuALUgp31skkCnW
	p2AENiOYbbdKEdEXgZ8sacUs4LVeoP9HiJV+RQQId+mXur4coV0KcpRW336hRuTJ
	jcqQOAUbCrSyC9nEjJQEb85jXR/m8PvscEVmlohJI+g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=HbKiFk
	Luh8UKDLYpGIwjQYKGDOos0fApEeRfHtZuOUU=; b=sbWaZlqgVRcaFl6KkcXdsv
	4+dbNE5jW11vzcqkM538ha+XYwd4RmQZSYZ+7giKu4+YytbkCgXNcjGJyBchhrhL
	KHFsbWD2D0zP8fTKvJF9jvNNb0lW6XRTM9ei5s2gEVnwhTXXGiKdji6+8KtDbMHa
	5ZxhnQyEZ9tVRNshO5mCOYlY2w8Daws7y9BiLmuYRn8S8sIibbYH+mwNNAaDxp8I
	rS0Nt9fMVrnAE6qPmNmc2GUc3MoNsJxSWygjuCzBG8LB/9m0CMP/iQqTbRXpalgn
	OYkKkrnavAXFzc+Eq0NtTR5e+yGvYee6HH9/h77sZltzz7fG+Yokz4idg3rjJgUw
	==
X-ME-Sender: <xms:0WUSXN2eI76A2w5v7Np5GXN8i47u45Sf72qP39vXtCxEBcVrAP46CA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedtkedrudehvddgheeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfquhhtnecuuegrihhlohhuthemucef
    tddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfh
    ggtggujggfsehttdertddtredvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehk
    rhhorghhrdgtohhmqeenucffohhmrghinhepkhhrohgrhhdrtghomhenucfkphepkeefrd
    ekiedrkeelrddutdejnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgr
    hhdrtghomhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:0WUSXClcNp2_OB3mwAFdqPqrortu4SnrK-qKvFeeMoDZSmRzjCcI2w>
    <xmx:0WUSXIs6Lk56Rgh0naKBgXcBOq-0EZbyPfBZy3lJhXNe6EfEzDiLJA>
    <xmx:0WUSXBBb4jkvghw4J-NvtVXmdwbncFLPtPwn3AXFm1jqnCoPIw3JNQ>
    <xmx:0WUSXPWS3vExe89tvbxxL4vh97Y2-qJiKCEejN-mQQula0BVIiDvag>
Message-ID: <20181213135943.GA23987@kroah.com>
References: <CAG48ez37UKxsRzpkxa8HbrWGAXWQ7H9OYjGzkaZgEmzY+QOF2Q@mail.gmail.com>
 <20181212142415.GA11037@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181212142415.GA11037@openwall.com>
User-Agent: Mutt/1.11.1 (2018-12-01)
Cc: Jann Horn <jannh@google.com>
Date: Thu, 13 Dec 2018 14:59:43 +0100
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: userfaultfd bypasses tmpfs file
 permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)
To: oss-security@lists.openwall.com

On Wed, Dec 12, 2018 at 03:24:15PM +0100, Solar Designer wrote:
> On Wed, Dec 12, 2018 at 01:27:13AM +0100, Jann Horn wrote:
> > NOTE: I have requested a CVE identifier, and I'm sending this message,
> > to make tracking of the fix easier; however, to avoid missing security
> > fixes without CVE identifiers, you should *NOT* be cherry-picking a
> > specific patch in response to a notification about a kernel security
> > bug.
> 
> (I resisted the urge to comment on this piece in previous postings.)
> 
> What should distros/users do, then?  Use latest mainline or upstream
> stable kernels?  That would expose them to the many recent bugs like
> this one, but which haven't yet been found (or not yet made public,
> which is worse).

Which is better, to be running a system with unkown or known bugs? :)

I'd pick unknown, as you are a _bit_ safer that way.

> As far as I can tell, by far most Linux kernel vulnerabilities (that are
> eventually found and made public) are in relatively recent (as of that
> time) kernel versions.  So a user or a distro would avoid most
> vulnerabilities (that are eventually found and made public) by staying
> sufficiently behind current versions, and relying on backports, even if
> at risk of missing untracked vulnerabilities.

Who are you relying on for those backports?

And what about all of the backports that do not get made?  Just look a
the spectre patches for loads of examples of that.

> Currently this can be
> achieved e.g. by using RHEL7'ish kernels forked by Red Hat off 3.10, but
> probably not anything newer than that yet.  (And when RHEL7 was just
> released, its kernels were not quite ready for such use.  It takes
> even RHEL kernels a few years and a few hundred revisions to mature and
> become a lower security risk.  Fortunately, there's a previous RHEL at a
> few years and a few hundred revisions old yet still maintained during
> that time.)

If you want to rely on RHEL, that's wonderful, but you are tying
yourself to some unknown developers doing some unknown work (figuring
out what they have, and have not applied, is non-trivial.)  Those
developers do great work, and I strongly recommend people use enterprise
distros if you can afford them, but it will cost you both time and
money to do so.

If you don't have the time or money, then I strongly recommend using the
latest stable updates, as they are faster and free :)

> A question to ask may be: out of Linux kernel vulnerabilities being
> patched, are there more high and critical overall severity (e.g., as
> risk impact times risk probability) vulnerabilities found in "too
> recent" kernels than there are high and critical severity untracked
> vulnerabilities (also or instead) affecting "sufficiently old" kernels?

How do we really ever know this?  No one is looking at the "old" kernels
in the same way, and lots of things get fixed accidentally or just
dropped entirely due to newer kernels rewriting that code.

But you can look at the work that the syzbot people are doing for
concrete evidence that they are finding, and fixing bugs in newer
kernels that do not get fixed in older kernels, and are still present in
those older kernels.  I think they are averaging about 10k bugs found a
year so far.

> My gut feeling is there are many more such vulnerabilities in "too
> recent" kernels than there are those untracked vulnerabilities in
> "sufficiently old" kernels.

Guts are hard to measure :)

> (BTW, a vulnerability being untracked likely correlates with it being
> a lower risk probability at least for non-targeted attacks.)  Hence
> optimal strategy for a distro and their users is to stay with
> "sufficiently old" base versions and backport whatever is known to be
> worthy of a backport.
> 
> There are no maintained upstream stable branches started long enough ago
> for them to be as mature as e.g. RHEL7 kernels are now.  Besides,
> upstream stable branches also suffer from lack of backports of fixes for
> untracked vulnerabilities.

I try to backport everything we can find, but yes, not everything does
get backported to older stable kernels, we know that.  That's why I
never recommend using older LTS kernels unless you are forced to (i.e.
your SoC sucks rocks and is forcing you to do so.)

And don't think of software as "mature", this isn't wine.  Code gets
worse with age as the environment changes from when it was written.
Older code is worse as it is harder to maintain and takes more effort
over time.  Again, if you have the time and money to do so, wonderful,
but you might want to reconsider your use of that time and money, given
that many other large groups consider using the latest kernel a better
use of their time.

Also note that older kernels do not work well on newer hardware for the
obvious reason.  And newer kernels usually run _faster_ on older
hardware, we have the benchmarks to prove that.  So you can do more
work, with older hardware, just by updating your kernel, saving you
money and time :)

> The recommendation to use latest mainline or upstream stable kernels is
> safe to give (and in a way even the most responsible one to give), but
> not necessarily the best to follow.

It all depends on your environment and situation.

As you say, it is the safest to give, but everyone is different and
needs to do things differently.  I wrote a whole long essay on this
thing a while ago if people are interested that tries to provide some
nuance depending on your situation:
	http://kroah.com/log/blog/2018/08/24/what-stable-kernel-should-i-use/

> I do not have a suggestion on what to do about that as it relates to
> recommendations/disclaimers on postings such as Jann's.  Ideally, we
> wouldn't have so many new security vulnerabilities being introduced to
> new Linux kernels all the time, but that seems unrealistic given the
> pace of Linux kernel development and growth.

We also wouldn't have as many old security vulnerabilities being found
in kernels, except that people are actively working to find and fix
them, which is a good thing!  I would say we fix more old bugs than
newer ones by far, and the syzbot numbers back that up.

But again, measuring this type of thing is hard, as we all know.

thanks,

greg k-h
