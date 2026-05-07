Received: (qmail 1203 invoked by uid 550); 7 May 2026 04:32:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1162 invoked from network); 7 May 2026 04:32:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1778128356;
	 x=1778214756; bh=DGb8CdNKm8rqR4Cb/1uVkN7PXAfkHhuuNvze9OgtGRk=; b=
	oVUtX58yJEXr0W845AhlrcyRf2Vjh1ipIDMvKBRXjTgJ1Pe8iW6aJxa4fPQVNd8N
	siCp6pQamtktR5meIqGaoZh3ARIrO+UvjRrLIkhkQTXT82oRz9mGUm65Q9+CQtiY
	3wOSUxFEzUdAf6u6W+Dw8C60OsH7TOAZk+42mLmkHO1w6K62wgGISOob6RA6EkmG
	qcxeYmn5QyNeJPTxQAlQS270dlAAgiYNnTJhBA+H1pK1KhEGlsrgd0bLdiPQ6yAI
	T2Z/qlc9xLsFuzX161PiKToZ/LTX7N8yvdpD5GFLSJLM3pQD1oOwecaLT6M7RpGU
	rYP0Pd0wAlZE44gy5uflRQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1778128356; x=
	1778214756; bh=DGb8CdNKm8rqR4Cb/1uVkN7PXAfkHhuuNvze9OgtGRk=; b=H
	Pblwa28WlNWUE6Ogz2OVcaGYFyOdX52g5brpshKtFmRutMD29bE3WSTcE38zURZ4
	4r4EV+K6Q6HT/5cLeL1/hncQBMlj2ymunxedhWnWWzyQycNoRsd7QjSrEsr/AU6G
	5k0BtI/YEUGiHCiJT3FphMb3rZmEku+If3WwrI3CLKLc/5FA9imIEt7CBu9XSfaf
	xqRvShDfy/lksxQqgL2VCUj7huf7yJulKreQF9gn0PfNSDCJ1CqtquJZYKu5tWKA
	6fV2pU0WWvTXvTJaLFdkDuDz4G/hkVrxMZufxJQ9RJOdU8nVKP4fQJ5dz4Pa5vAB
	XKw9UofIxUdiFidRL2bHQ==
X-ME-Sender: <xms:4xX8aWHDB4REO7AUyxLqJjuNqM1qZe6KcTvWttHECPtuHJ97QF9JvQ>
    <xme:4xX8aaZXuJyi7z2J7z9slkxsM3ju2DCdXx6XFF6RQw3OBfX4kNDucupDCtJCjuOhQ
    qm7kMykP84RpKah4MN-UytePmoQhLmZFQrHBQhsaYq654IOKA>
X-ME-Received: <xmr:4xX8aaxNYnazCQ49vOYwBqHzKF5ZE64ofSCPLOCDf6AdUYB_wtCJctR_vsFf4oi_rltKv02axOL3TGyyixJjJHbmjQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgddutdeihedvucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevuffkfhggtggugfgjsehtkeertddttdejnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpefgkeffie
    efieevkeelteejvdetvddtledugfdvhfetjeejieduledtfefffedvieenucevlhhushht
    vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhh
    drtghomhdpnhgspghrtghpthhtohepuddtpdhmohguvgepshhmthhpohhuthdprhgtphht
    thhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhmpd
    hrtghpthhtohepshgrmhesghgvnhhtohhordhorhhgpdhrtghpthhtoheptdifnhesthhh
    vghorhhirdhiohdprhgtphhtthhopehsphgvnhguvghrsehgrhhsvggtuhhrihhthidrnh
    gvthdprhgtphhtthhopehsohhlrghrsehophgvnhifrghllhdrtghomh
X-ME-Proxy: <xmx:4xX8acQRNlUG1gQVT76jnjRVfEeD4Qj0OjXq6yXTTVUgoHPSEsu8vQ>
    <xmx:4xX8aXIRbMjRbKoVnGt0C0GNk-MYUdEcQm9FcIDq9-nxPpK3qqlBsA>
    <xmx:4xX8aTXqOSH-s0RTjUupkQWPkiRh1Rd6urWzBiPpLDq5kWdvSBWqRQ>
    <xmx:4xX8abQYa5bFYP9N8XBl6r4V-IE3SiEvpt7IseWFQBk4ebr_2l0THQ>
    <xmx:5BX8afIKbSn00IUC3KwLeVeyDpVtbPkh-byzlgsyIHyww_ACecHbipuA>
Feedback-ID: i787e41f1:Fastmail
Date: Thu, 7 May 2026 06:32:33 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Cc: Sam James <sam@gentoo.org>, Taeyang Lee <0wn@theori.io>,
	Brad Spengler <spender@grsecurity.net>,
	Solar Designer <solar@openwall.com>
Message-ID: <2026050727-outtakes-plus-c2de@gregkh>
References: <afJorKIje4O6dXbH@netmeister.org>
 <87v7d4b7a3.fsf@gentoo.org>
 <87jytkb2gv.fsf@gentoo.org>
 <878qa0b1o9.fsf@gentoo.org>
 <2026050453-gamma-stuffing-8606@gregkh>
 <CACHV8XoX5vtjH3d1KKhQJ5_fr8qBRG7pnWFsLxw5UzngeoeA=Q@mail.gmail.com>
 <2026050435-c08cb4e9297e204898fa6911@gregkh>
 <DIA5K5Z7Z1L3.LBWL4N5QTAFI@redcoat.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DIA5K5Z7Z1L3.LBWL4N5QTAFI@redcoat.dev>
Subject: Re: [oss-security] Precise disclosure contents for copyfail (Re:
 [oss-security] CVE-2026-31431: CopyFail: linux local privilege scalation)

On Mon, May 04, 2026 at 08:51:27PM +0100, Emily Shepherd wrote:
> On Mon May 4, 2026 at 6:38 PM BST, Greg KH wrote:
> > Once it lands in Linus's tree, our role is over.
> 
> I would - respectfully - disagree. To clarify, I am aware that that is 
> the process as defined currently, but I am not sure that is the best 
> that process could be. You asked in a previous message what could have 
> been done better, so assuming that was meant sincerely, I'll provide 
> some thoughts.
> 
> The first hurdle a reporter must jump through is figuring out who to 
> actually report to - the process as defined [1] suggests it should be 
> the maintainer first, with the security team CC'd. There is also a handy 
> script provided to figure out the correct maintainer, and an example 
> given.
> 
> However, the example shows the script being called with a whole load of 
> flags (`--no-l`, `--no-r`, etc) without description. These flags are not 
> explained, or at the very least the importance of `--no-l` is not 
> stressed. As this flag excludes mailing lists from the addresses the 
> script will give back it is, presumably, essential to use when 
> determining who to report security issues to.

The flags are all documented in the script itself, I don't know exactly
what you would want us to do differently here.  You don't have to use
the tool, we just offered a simple way to do so if you don't want to dig
through the MAINTAINERS file yourself.

> I would also disagree with the rather casual assertion of the 
> documentation that:
> 
> > In the Linux kernel, all official maintainers are trusted, so 
> > the consequences of accidentally including the wrong maintainer are 
> > essentially a bit more noise for that person, i.e. nothing dramatic.
> 
> Most other organisations treat security reports as strictly and 
> absolutely need-to-know, even among trusted members of a team. Compare, 
> for example, this stance with that of the "linux-distros" mailing list 
> [2], which is far stronger:

Sure, linux-distros can do what they want for their policy, but you
trust these kernel maintainers today for the work they do, why would you
not also trust them to handle security bugs?  That's the only way we can
get the proper fixes done in a timely manner.  You want the people who
know and are responsible for the code itself to do the work, not anyone
else.

So yes, the kernel security team trusts its maintainers, this is a good
thing and one that any sane group should also do.

> The conclusion I must reach, therefore, is it would be more secure if 
> the process were simplified to *all* requests going to the security team 
> address only, who then take responsibility for triaging and engaging the 
> appropriate people.

What do you mean by "secure"?  Are things leaking here in the current
process?

If you want things to move slower, then don't involved the maintainers,
and force a tiny group of people to do all the work on their own.  That
does not scale and ends up with worse security overall.  We aren't going
to do that.

> The submission process also places an extra-ordinarily high burden on 
> the reporter, rather than the security team itself, to coordinate an 
> appropriate response to bugs. As the process makes clear, the choice of 
> when - or indeed if - to even inform linux-distros of an issue is left 
> entirely up to the reporter, with a recommendation that they not be told 
> at all until a fix is ready. It is, presumably, also the reporter's 
> responsibility to monitor for a fix becoming ready.

A reporter has to coordinate nothing if they don't want to, we can't
force them.  We don't coordinate anything except getting bugs fixed.
It's up to the submitter after that what they wish to do with anything.
The huge majority just are happy the bug is fixed, so all is good.

> The process also states:
> 
> > DO NOT contact the "linux-distros" mailing list UNTIL... you have read 
> > the distros wiki page above and you fully understand the requirements 
> > that contacting “linux-distros” will impose on you and the kernel 
> > community.
> 
> Which is about as ominous and off-putting a statement that it would turn 
> many organisations away from meaningfully engaging in the process at 
> all.

Great, that's the intention!  I don't want anyone to contact
linux-distros as it only causes more problems than it is worth.  This
has been hashed out many times over the years on the list if you want
the details.

> The process also suggests that a CVE won't even be assigned for an issue 
> unless the reporter - once again - takes the initiative for requesting 
> one:
> 
> > If a reporter wishes to have a CVE identifier assigned for a confirmed 
> > issue, they can contact the kernel CVE assignment team to obtain one.

Yes.

> None of this is normal - why the Linux security team and CNA team even 
> talking amongst themselves internally?

They do not, they are different groups of volunteers, doing all of this
work on their own time as individuals.

> Why is it an external party's job to coordinate that?

No one has to coordinate anything.  A CVE will usually be assigned a
month or so after it lands in a public release.  If someone wants one
sooner, just email and ask, we give them out on a daily basis.

> The reality is the team best suited to knowing how, and being subtly
> trustworthy, to co-ordinate security responses is almost always the
> team within the project itself, not the good Samaritan who did the
> reporting.

Again, we don't coordinate anything.  The kernel security team's job is
to fix bugs and get them into public releases.  That's it.  The kernel
CVE's team is to assign CVEs to fixes that are in releases that meet the
requirements of what cve.org has put on them.  That's it.  No
coordination between the two is needed.

> Finally the CVEs themselves; their descriptions are - frankly - 
> appalling. The CVE description in this case was:
> 
> > In the Linux kernel, the following vulnerability has been resolved:
> >
> > crypto: algif_aead - Revert to operating out-of-place
> >
> > This mostly reverts commit 72548b093ee3 except for the copying of
> > the associated data.
> >
> > There is no benefit in operating in-place in algif_aead since the
> > source and destination come from different mappings. Get rid of
> > all the complexity added for in-place operation and just copy the
> > AD directly. 

We take the changelog text directly for the CVE.  Yes, sometimes it is
horrid.  Sometimes it is not.  At our scale this is the only way we can
do it to start with for the initial report.  After that, if people wish
to change the text, we gladly take patches and modifications of the
text, the ids, or almost anything else that is in the CVE entry.  Just
send us a patch, the whole repo is in git and we have documentation in
the repo for how to do this.

> Ultimately, none of these points are theoretical. While I am frustrated 
> with the reporters for not following the process as defined in this 
> case, which has led to a pretty disastrous disclosure all round, the 
> result is a prime example of what was always going to happen sooner or 
> later with a disclosure process so opaque and seemingly hostile.

Hostile to whom?  Distros that do not follow the stable kernel releases?

thanks,

greg k-h
