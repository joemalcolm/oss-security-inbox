Received: (qmail 24216 invoked by uid 550); 7 Jun 2025 08:17:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24171 invoked from network); 7 Jun 2025 08:17:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm1; t=1749284230;
	 x=1749370630; bh=E6ZKWn5biXCKcK/syHkXnpbsN6qsW6U8gnf1YWW0Arg=; b=
	F9AAqUXqNzkWXmMZn7k+xIRdRP5/8vUp2IGXwoton2Dnou03dFG36OXnq+lMIGpD
	9qNZZvTPcyRa0T0XLTp1hjFZ30/Q/kob6kESQn/0vl+utonZcVkQue+DP8h6g41z
	jNZ2/ASIDhOnyEIwENI7zsFs8QKKYKCgAZtujpx6n6nlDhOXhHhHz/sLLbU7IZ1J
	hfu726kqJsqkge4a1x27kB/wE4nxxeu0G6TeyzVT6JJWuWRYXAlbIP9HY2pw2ehp
	JyO5QVukiE0r1w5BFZ4Lf486xQQNaoZA0t6hF0z7KWSt6DZmkD1PhiK+drLOUHzq
	AT+40fJxvGOWeyFSnROEoA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1749284230; x=
	1749370630; bh=E6ZKWn5biXCKcK/syHkXnpbsN6qsW6U8gnf1YWW0Arg=; b=I
	WhMvbNpIi+g2aUVedhEqtANI+EudGAPJspC23pV/ZUJ0OgzHa3kyRJqR+zWlq0po
	2pc8Ulxh0Q+eN1FJUxLA0a+gA4hXx/oTxEJPABogbAjtu5riL3zZsK+BPtUpLpKS
	irTfmfuSDdd6ExmNS+Kkup3liC/OiTabQIoM+/tBkcs2L1vnx66wISRLbftZN+VL
	ry29+MsH+9IdjIwW6GPy9B6vhLjAJWPWJ5k/oAOaZoeWObY0e8RcnVdBTwzLAKqU
	Ry/Uh8ZUvxUSI22Eov5u020QHBM/LGitqRYv+YAXbdsA49veQOpI5vS2KUqJQ4G0
	WVNCbMR9b3zEatVm4LhWw==
X-ME-Sender: <xms:hfVDaMTfRG8dTmBDwqPZktxFZi-QjePhcrV_p5UChYdGld0Dw9N3Tg>
    <xme:hfVDaJx6A8qSHdrEc4pW4OpYA4VFTIsCXfAIYQ8zHWXn1F6MOjrrYY0W0ihKr57t_
    8aLIIY_achepQ>
X-ME-Received: <xmr:hfVDaJ2002oreBAcx3vuotw0hP7HwYV5e7-_gVGzp0yh9WrRZQmyFm2CpBghiAQosffF8q1dPjO4MPILttOsu2ECmGrHm0w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugdeivdekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvve
    fukfhfgggtugfgjgesthekredttddtjeenucfhrhhomhepifhrvghgucfmjfcuoehgrhgv
    gheskhhrohgrhhdrtghomheqnecuggftrfgrthhtvghrnhepleekheejjeeiheejvdethe
    ejveekudegueeigfefudefgfffhfefteeuieekudefnecuffhomhgrihhnpehkvghrnhgv
    lhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpehgrhgvgheskhhrohgrhhdrtghomhdpnhgspghrtghpthhtohepgedpmhhouggvpehs
    mhhtphhouhhtpdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhoph
    gvnhifrghllhdrtghomhdprhgtphhtthhopegvshgthhifrghrthiisehgvghnthhoohdr
    ohhrgh
X-ME-Proxy: <xmx:hfVDaABhCJzFVMqDbFxyKaJ1DiiHt5AZd6W3o1OhbIc8meDtzA-XnA>
    <xmx:hfVDaFgR-56BAJxL4VcFkxmGRT1ZzIqKRUbhx0D9WP7otMMq4KAvjg>
    <xmx:hfVDaMoOghAUhQ3avOlJR7o8EhhzLhSRaFKTzhC68xeA_fnvm1Xhew>
    <xmx:hfVDaIhZfyG63hZlEBSGnpPdYTAPOFzS_J_2cjeCDBfH2AmNU_tIdg>
    <xmx:hvVDaETw3HgMgV7tFaGNeblL7TwGCSlB4GFvYsVqtuMSMllAhtJYOxk->
Feedback-ID: i787e41f1:Fastmail
Date: Sat, 7 Jun 2025 10:17:08 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Cc: eschwartz@gentoo.org
Message-ID: <2025060713-aloe-decency-a74c@gregkh>
References: <07bdaddb-1414-492b-a178-93b38f8ac3a0@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <07bdaddb-1414-492b-a178-93b38f8ac3a0@gmail.com>
Subject: Re: [oss-security] Re: Re: Linux kernel: HFS+ filesystem
 implementation, issues, exposure in distros

On Fri, Jun 06, 2025 at 06:00:09PM +0200, Attila Szasz wrote:
> I don't see how Canonical Product Security is a bad actor here for caring
> about the actual security of downstream users and acting in a timely
> manner about an issue that they considered to impact Ubuntu Linux,
> correctly.
> 
> Canonical has a scope of
> "All Canonical issues (including Ubuntu Linux) only."
> 
> kernel.rg has a scope of
> "Any vulnerabilities in the Linux kernel as listed on kernel.org, excluding
> end-of-life (EOL) versions."
> 
> Both of them were contacted.

For the record, the CNA for kernel.org was NOT contacted here at all for
this issue.  You sent a message to security@kernel.org, NOT
cve@kernel.org.  security@k.o has nothing to do with CVE assignments and
is NOT responsible for the kernel.org CNA.  Our documentation should
state this very clearly, if not, we will be glad to update it where
needed, just let us know.

> 4.2.2.1 CNAs SHOULD assign a CVE ID if:
> 
>     the CNA has reasonable evidence to determine the existence of a
>     Vulnerability (4.1), and
>     the Vulnerability has been or is expected to be Publicly Disclosed, and
>     the CNA has appropriate scope (3.1).
> 
> On 3rd Nov, 2024, Kees Cook writes:
> "The hfsplus filesystem currently has no maintainer, and since we don't
> view filesystem corruption flaws to be particularly sensitive, probably
> the best thing to do would be to send the patch like normal to the public
> linux-fsdevel@vger.kernel.org (please keep me and other others in this
> email's CC now on the CC for your patch).
> 
> Let's see if the VFS maintainers have any other thoughts on this?
> (I am forwarding them a copy of the original email now.)"
> 
> This is pretty much the last update—no patch is introduced, nor is a CVE
> issued. The issue is not viewed as sensitive.

Again, no one asked for a CVE to be assigned, nor did anyone notify the
kernel.org CNA about this issue.

> My understanding is that 4.1 was not satisfied according to them.

Nope, we never were even notified.  That being said, we defer to the
filesystem maintainers here, and they have stated many times before that
hand-crafted filesystems are not a vulnerability according to their
rules.  That is why we rejected the CVE eventually.

> CVE-2025-0927 was reserved by Canonical on 31st January, 2025, around the
> time they fixed the issue internally.
> 
> At this point, Canonical, as per 4.2.2.1, assigned a CVE for Canonical
> Ubuntu Linux for the issue they deemed a vulnerability in Ubuntu Linux.
> 
> The kernel neither assigned nor fixed anything regarding the email that was
> sent to them.
> 
> After Canonical’s fix went live, the public advisory was published on
> 18 March, 2025.
> 
> Now, according to:
> 
> 4.2.1.2 For Publicly Disclosed Vulnerabilities, if the CNA with the most
> appropriate scope:
> 
>     preemptively documents that it will not assign, or
>     responds within 72 hours that it will not assign, or
>     does not respond within 72 hours,
> 
> then an appropriate Root MUST make a Vulnerability determination.
> 
> So the kernel.org CNA team would have had 72 hours to respond to the public
> disclosure if they thought that the issue was in their scope—but they
> didn’t.

Again, you never notified the kernel.org CNA about this, nor do we even
attempt to watch all CVEs that are being created in the system as we
just assume that all CNAs are "good actors" and don't do foolish things
like this :)

> So what the hell happens to consumers of the Ubuntu Linux product
> that don't want their boxes rooted by non-sudoers according to the CNA?
> 
> How could Canonical be the bad cowboy here? Someone please enlighten me.

They created a CVE against the upstream kernel.org codebase without EVER
contacting the kernel.org CNA.  That is against the CNA rules, which is
why cve.org reassigned the CVE to kernel.org when notified of this.

> In fact, I'm not even sure upstream would have ever fixed this unless
> Salvatore
> reached out from Debian basically asking what had happened:
> 
> https://lore.kernel.org/lkml/Z9xsx-w4YCBuYjx5@eldamar.lan/
> 
> Note that the initial report was received by security@ early November, 2024.
> Salvatore's message is dated 20th March.

Again, security@k.o has nothing to do with CVEs.

> After that, Canonical helps Debian by sharing the fix they used in the
> Ubuntu kernel.
> 
> Then, on 24th March, 2024, the Linux CNA finally expresses interest in
> owning the CVE—that is, 6 days after the disclosure and 72 hours past the
> deadline defined in 4.2.1.2.

Again, no one ever notified cve@kernel.org about this, so that is why we
did not react until we actually were notified, and then we did act then
to get the CVE assigned back to kernel.org

Hope this helps explain things as to why the kernel.org CNA didn't do
anything here, because again, they were never notified.

Anyway, we know communication mistakes can happen, not a big deal, we
got the CVE reassigned properly, which again, happens every few months
with other companies accidentally assigning CVEs against kernel.org
stuff, and we move on.  Given we are running at a rate of 13+ CVEs a
day, stuff like this is bound to happen.  All we can do is properly deal
with it when we are notified, like we did.

thanks,

greg k-h
