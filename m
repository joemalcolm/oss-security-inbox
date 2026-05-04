Received: (qmail 31937 invoked by uid 550); 4 May 2026 17:38:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31897 invoked from network); 4 May 2026 17:38:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm3; t=1777916303; x=1778002703; bh=ek391hru+2
	6f2cyu8OjoGcC/Uc4Lx2GWCig2mYumNDQ=; b=gps7/9kFq6kcST54x5jh6Fst5U
	D7TWCwcyQ9VUNnZTKSUSsVh2mrHVVkJEeHU+pHOx7mQ8By+CIAgBblt9KR/KfxMt
	8XUNuPVZ63tj/oJUOyliGr0gfDHJUCpVU/vyWidAeX6WLVPhZ+uMjg2b0OHclX22
	TD65sLYItpb40eqO3OeP+UvBShxIUYoK8t9+P3n4SOUcX1KrAqXvk/56xWM7Mm/U
	NpDJK5s+M1uRfjHZRCx2AyGb8Nmc9YaDRwteH5EH9lJWrvpx0XJ6DGXwHLMKc1mi
	CeIuMvtdi2xQ7usHvsU5au3Zt+tSg7r9bPzJLJOssaMYJ9wmNRmZ3DIuh4gw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1777916303; x=1778002703; bh=ek391hru+26f2cyu8OjoGcC/Uc4Lx2GWCig
	2mYumNDQ=; b=M8FwdAfccxlfAI0o4+SS4/ubnoSg8Z76wi1im//RtOkCdVC/t/e
	R/t3Q2oFoIeTvFPN1HbxIyUoJvIUWoyADOdpEbcrr0i2oni7QGtw3k205Q9HLeY/
	AYL5O3TDUdUEDuMpBlofh6v1hxQxMQ1nxZMTgGRsZvv1yw6Az249ss4g/hjZ8tCy
	x2XmyXqsVMn9IoOb9Zm+XuFlsM5NaU7Hah17TNye24IdibDEcTozCqMBXjpvFmYd
	ENAtsVrZfwtqvriAwQ7Vz08Ifxu+H7Qre0e0lkXwomI2dCqBeAPkQYfmLSzwrZUP
	WcM9A8zZLw5RKvHUaJ50DTiVtUgxcFvKDHQ==
X-ME-Sender: <xms:jtn4aahZeCRS2bMgi3wNbLKeE0oqudRdGGZP1OX-t8sGUAkdSPNWqw>
    <xme:jtn4aeEdIC9_dNev4HXmQuqdMOfIwWZIdIfKh3v56YRZrme1HoOLRs4WdUuAwtHHs
    wq876czzngKu1s2Ezl_sJbCadECUAk6oVNDSiqI7s1lWFqlMA>
X-ME-Received: <xmr:jtn4acu2DvGQneXcHkFDhk2gi9qnYLfhsDr0R10Kh13WxtTuhsOZh4Uq4E9m3KUnih2QqaJJFRAaaLWuknNu9AYfcw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdelleegiecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcumffj
    uceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpeehgedvvedvle
    ejuefgtdduudfhkeeltdeihfevjeekjeeuhfdtueefhffgheekteenucevlhhushhtvghr
    ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtg
    homhdpnhgspghrtghpthhtohepuddtpdhmohguvgepshhmthhpohhuthdprhgtphhtthho
    pehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhmpdhrtg
    hpthhtohepshgrmhesghgvnhhtohhordhorhhgpdhrtghpthhtoheptdifnhesthhhvgho
    rhhirdhiohdprhgtphhtthhopehsphgvnhguvghrsehgrhhsvggtuhhrihhthidrnhgvth
    dprhgtphhtthhopehsohhlrghrsehophgvnhifrghllhdrtghomh
X-ME-Proxy: <xmx:jtn4afetpEEd3iAAaIFR5dj_O0I-A3xPUwZ_tR6wPYuqe2C1Ev7V9g>
    <xmx:jtn4aSll3gyvEzJJCSaOcKKtyEN5Ebc2PoEFKv_Ix5bwnphTknCQPQ>
    <xmx:jtn4aSD50dtYCMbN1QDLp2o7MrYcOxolzT2XFFqiU-tbBDj-cD_yVg>
    <xmx:jtn4acOUNDF4b2RztwuD_Vwsj7Fr8BEAgICFTz3uU-QRPLPpo5lZKw>
    <xmx:j9n4aeKLPgLVR50eH6jow_HPQk1YAQRFttmjb_VW79CNLvqytvx6jNju>
Feedback-ID: i787e41f1:Fastmail
Date: Mon, 4 May 2026 19:38:22 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Cc: Sam James <sam@gentoo.org>, Taeyang Lee <0wn@theori.io>,
	Brad Spengler <spender@grsecurity.net>,
	Solar Designer <solar@openwall.com>
Message-ID: <2026050435-c08cb4e9297e204898fa6911@gregkh>
References: <afJorKIje4O6dXbH@netmeister.org>
 <87v7d4b7a3.fsf@gentoo.org>
 <87jytkb2gv.fsf@gentoo.org>
 <878qa0b1o9.fsf@gentoo.org>
 <2026050453-gamma-stuffing-8606@gregkh>
 <CACHV8XoX5vtjH3d1KKhQJ5_fr8qBRG7pnWFsLxw5UzngeoeA=Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACHV8XoX5vtjH3d1KKhQJ5_fr8qBRG7pnWFsLxw5UzngeoeA=Q@mail.gmail.com>
Subject: Re: [oss-security] Precise disclosure contents for copyfail (Re:
 [oss-security] CVE-2026-31431: CopyFail: linux local privilege scalation)

On Mon, May 04, 2026 at 05:44:52PM +0100, Emily Shepherd wrote:
> > Why this specific one is somehow
> > more "special" than others was not obvious except after the fact because
> > the submitter decided to provide their exploit code to the world to show
> > off their tool
> 
> Was the PoC of the exploit / some description of its severity not
> made available by the reporter to the security team / maintainer when
> they reported it?

I honestly do not remember, that was months and hundreds, if not
thousands, of reports ago.

The job of the kernel security team is to triage a bug report, drag in
the relevant maintainer/developer, get the issue fixed and merged into
Linus's tree as soon as possible.  Once it lands in Linus's tree, our
role is over.

We do not do "announcements" of anything to anyone, so even if this was
a "look how bad you can abuse the system" type of thing, we would not be
telling anyone anything.

This is not a new process, we've worked this way for a very very long
time (almost since our start in 2005, with some exceptions when we
attempted to interact with the distros list for a while, but that was
many many years ago.)

I've also documented this in detail in many talks and even recently in a
set of blog posts about how the kernel security team works.  That should
be easy to find online if people want more detail.

thanks,

greg k-h
