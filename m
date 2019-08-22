X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2394" "Thursday" "22" "August" "2019" "12:56:53" "-0700" "Greg KH" "greg@kroah.com" "<20190822195653.GA25735@kroah.com>" "50" "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" "^Date:" nil nil "8" "2019082219:56:53" "[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" (number mark "        greg@kroah.c Aug 22   50/2394  " thread-indent "\"Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2\"\n") "<20190822165914.GA29435@grsecurity.net>" ("<CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>" "<C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>" "<20190822093122.GQ6086@suse.de>" "<ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>" "<CA+fCnZfpGc0qK9MRp-BQJkLPrZhf-Md-UYCOtPi0RhbwJqmAHQ@mail.gmail.com>" "<20190822162000.GA1670@kroah.com>" "<20190822165914.GA29435@grsecurity.net>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32355 invoked by uid 550); 22 Aug 2019 19:57:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32331 invoked from network); 22 Aug 2019 19:57:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm1; bh=qJfPxKdUKaAGSJuzG85WqNTCedH
	c3TvEApKIyPM8H3U=; b=evjt7xaU4u8PqlF5wrmJ3qSmEmApsVit9MB0wUjmX1F
	ZWyUbLtyUvzcxMZ+XqEVZT+9qnQ4UxLySMuRmoblTpb8S02oMdGsKuOasTjZM11c
	6DGsNIFg1W5fK9nUmAMVH7e/A4muEPd2lsLgzYvh2xN0x59HktIuYIr0SvvrLmTo
	nuwgMlQcyGdR8ZxZDiODj4BBn95FwaNWaGYWXBjSVJS3jZnDLeAqT6yfWEwwJxuh
	KkswEYspCgRECrKHafSF/8tshAeIClLmKGpZbnJsKJELfR/IRjETh2RMwzUTOpJj
	VS1dpVt9XFmj4JxJa3uPG6fZPMneA3ISE3BzsP3ZmWg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=qJfPxK
	dUKaAGSJuzG85WqNTCedHc3TvEApKIyPM8H3U=; b=QJf0tX+x5+7Vch+mp+x7Sb
	Jr+zat9MzNNstj78kHeIl5At4SxCT8k8tU+ccdfvy9w7fUitQF6FJzRwxtIssjzO
	FrPQPE0uA6A02UZomQjxnmtBfmItbFsL/L37YCBDmqdiSV5SGj8Swic1KzF+7N16
	oSPv1eYU6Ywfw3L33Txf18mHpvVSI2oamAx3d3tnj3aw2Srrh3TmJ00RzeUP6jY8
	oy9zrOADlwo4joMhfMEt19GnR5kNCweJVIZCkhL1RruUG7uXL2rNZ2QIJWivatUg
	futIlNar0rnSL//UByA0IZrz26O9qb6tXd4FgM/RXjQ84RvrkSWStL/btmGOxF7Q
	==
X-ME-Sender: <xms:h_NeXQ1_KZelvuvh3a86EPzt6w80IcsjZO-nuXdEoO3slNuMUMRXWg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudegiedgleelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucgoufhprghmkfhpqdhouhhtucdlhedttddmnecujf
    gurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomhepifhrvghgucfm
    jfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecuffhomhgrihhnpehsphhinhhitghsrd
    hnvghtpdhophgvnhifrghllhdrtghomhenucfkphepudekgedrudekkedrfeeirddvnecu
    rfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomhenucevlhhush
    htvghrufhiiigvpedt
X-ME-Proxy: <xmx:h_NeXeFmOJDLiH910sdDt08zQ7uXfstIZh1Lg3C4qrM23qI8WW0LNw>
    <xmx:h_NeXeGIq44AjlZCiFPh8wrfmP5XwUaLgsBpvAcymiMsE_JxPqCbSA>
    <xmx:h_NeXegwsffMn2sCvCjykDZGZMiFEG1nB_1IW9A8GNWl8Xsx5CBIZQ>
    <xmx:h_NeXT_NhiXh85gQRM329JTZ1vQ1moqRJ-ALv6biz2VBRdgyjwzkfvoqZnw>
Message-ID: <20190822195653.GA25735@kroah.com>
References: <CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>
 <C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>
 <20190822093122.GQ6086@suse.de>
 <ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>
 <CA+fCnZfpGc0qK9MRp-BQJkLPrZhf-Md-UYCOtPi0RhbwJqmAHQ@mail.gmail.com>
 <20190822162000.GA1670@kroah.com>
 <20190822165914.GA29435@grsecurity.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190822165914.GA29435@grsecurity.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
Date: Thu, 22 Aug 2019 12:56:53 -0700
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB
 subsystem x2
To: oss-security@lists.openwall.com

On Thu, Aug 22, 2019 at 12:59:14PM -0400, Brad Spengler wrote:
> Sorry, a little too much marketing coming out of this camp these days, and
> this one demands a response.
> 
> On Thu, Aug 22, 2019 at 09:20:00AM -0700, Greg KH wrote:
> > On Thu, Aug 22, 2019 at 05:16:03PM +0200, Andrey Konovalov wrote:
> > > On a side note, currently there's an issue with many Linux kernel bugs
> > > being fixed, but not backported to distro kernels. Those bugs might
> > > have security implications, but there's no way to know that, unless
> > > someone specifically spends time to assess them in that regard.
> > > Requesting CVEs for those bugs is a way to get the fixes into distro
> > > kernels (even though that doesn't always work promptly [1] :).
> > > 
> > > [1] https://www.openwall.com/lists/oss-security/2018/10/30/2
> > 
> > Note, I am scraping the logs for anything that says it is fixed due do a
> > syzbot find or report and backporting them to the stable kernel
> > branches.  So those distros that do follow the LTS/stable kernel
> > releases do get these fixes.
> 
> All of the fixes, Greg?

All of the ones that say they are found by the syzbot, yes.  If I have
missed any, please let me know, I am only human.

> You'd also need to explain very easy to find examples like this:
> https://www.spinics.net/lists/stable/msg317698.html
> of random LTS kernels not receiving security fixes.  This particular issue was
> public since April (which is when we backported fixes for it to 4.4/4.14).
> It's now 4 months later and your 4.4 6-year "supported" LTS kernel still
> doesn't contain the fixes.

I don't track CVEs nor care about them at all, and rely on others who
depend on those older kernels to provide complex backports as they can
test them the best.  Nothing new at all, it's always been that way.

If you know of specific fixes that I have missed, I am glad to accept
backports.  Right now we are averaging about 22 patches a day in the
latest stable release, and 19 in the latest LTS release.  That's a tiny
5.5% of the number of patches that are being developed and merged
upstream, which means that we know we are missing stuff and we rely on
people to point out where we have done so.

We take patches from all distros and companies and users where they
notice that we have missed things, I would love to take anything that
you have noticed that I missed.

thanks!

greg k-h
