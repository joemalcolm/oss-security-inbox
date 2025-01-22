Received: (qmail 26281 invoked by uid 550); 22 Jan 2025 11:50:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26251 invoked from network); 22 Jan 2025 11:50:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm3; t=1737546625; x=1737633025; bh=3XGJ56rxS5
	6Ql5mNJxKhnQtT+1NONHN2Q5hB7sV5jGg=; b=EBfVTCNIF2rUtj4U4z/ts1zPPk
	vOmqAQd3IPt+Ao950Z0FFON+3d9QLG7MOFM7iBwKzWgm1JzgK0Vs/bA25e7K6uWe
	nuyQ8U1ejaL5vlomDrPPTFjlKqSFo2GHhfCToc+kzkiDlp3hjz8Nr59kPpIuBMD5
	gsOUtsPVF8/AyV/z50TVXmSy0o1uW7nHJUjSWkHdLJwPjZfoQ7X1VupLGfBvDcpT
	OwQbgYUzNQLBEpT1/eKYDpUBitpqmuF+a0V/nOrV4uCfuEaoqXu7qSYmAvKBrSls
	4rVNSUNLm6C5hs1Ew6lPxjqCXRAHF3OE19L87Ge4PfayqEAlrn2vnyj44MAA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1737546625; x=1737633025; bh=3XGJ56rxS56Ql5mNJxKhnQtT+1NONHN2Q5h
	B7sV5jGg=; b=as1oqEdUHNB/O4lB9aHzao1t2gm1AfhSgTRz+q57Lnj2uXPj4u3
	yg3fYEVpjz5qwIRszHiIQngdrgfGFKbNDpkPGgcKZf3AYIUu2vRfJlNCHeAWGrd5
	KgVr0c4nuibIoOt+Lvk/8fQvE013o5maxEH/BotzN3z1Z2ydHeFOK/+jiqbehlgl
	LTJxB5m67Optq/Kz0AOYiSkxADOWRl7LzxS8eThjCAIhfaQ3w6MEsyfr3h9i+PpV
	zySBvQKlNymHYWoeG36/MkIwZd4Sf+/p0VN62iD4rUnhsA4QpvN+0QLRBX5gfcRd
	b2aXazdvoZIsD+Rd1tWwKtlOnREyM8q92+w==
X-ME-Sender: <xms:gNuQZ26MqzpmhEcVX0-IcrI6iY9LzALiEM7fOPM8SY91N_6KX89p9w>
    <xme:gNuQZ_66kzxS_VEk0YYW5OEKZdslZVBDKXJ1EeaSAcxWJen4sXizUuQqj0sm7dIbU
    aDipE5yX1shPg>
X-ME-Received: <xmr:gNuQZ1cqbyJdtpQl1OdCvAqH0wwCOLR_vy3xbfTkZEZU9EkIIwcXzeYdj87FC9xIWaXOcCpL_FLC46Nip_PRlFQtV_wd_uZhumbeCg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrudejfedgudehkecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvf
    fukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghg
    sehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpeevueehjefgfffgiedvudekvd
    ektdelleelgefhleejieeugeegveeuuddukedvteenucevlhhushhtvghrufhiiigvpedt
    necurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomhdpnhgspg
    hrtghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepohhsshdqshgv
    tghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
X-ME-Proxy: <xmx:gNuQZzKddkgAUq-LsMX0b4k6IrMthkXbwUTFeIeBRC-d5zYGxFPerA>
    <xmx:gNuQZ6KeF-7bYHF5eLjvkcFOzn1mMx4Fq8KgJbNSeHwrIjk8fVYYfQ>
    <xmx:gNuQZ0yz0tKkgg_KnGKggpMx_fMsLAK1Zq7mjunUhx-uR6Pia-KFrw>
    <xmx:gNuQZ-IwerWSslwQdwHuojutrK9O5iUzuRAN9td47I6RXKPFlq5-mg>
    <xmx:gduQZxUex6TBU6djxTd-7hxvTp027JotW5bU_MAhnRELUzT53fU-esJ4>
Feedback-ID: i787e41f1:Fastmail
Date: Wed, 22 Jan 2025 12:50:21 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <2025012206-remember-glare-da7d@gregkh>
References: <Z5DF00lM-3Q36mhh@kasco.suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z5DF00lM-3Q36mhh@kasco.suse.de>
Subject: Re: [oss-security] issue with stuck Mitre CVE requests

On Wed, Jan 22, 2025 at 11:17:54AM +0100, Matthias Gerstner wrote:
> Hello list,
> 
> I am currently experiencing for the second time that a CVE request
> submitted via the Mitre web form [1] is not receiving a response. A
> similar topic was already shortly discussed in the past [2].
> 
> I requested two CVEs on Jan 13. One got assigned within 24 hours, for
> the other one I still didn't receive a reply. The same happened to me in
> April 2024. Back then, after not receiving a reply for over two weeks,
> the CVE has been assigned by Red Hat instead, since Red Hat developers
> have been involved in the affected project.
> 
> In this instance upstream is not a CNA and it is also not closely
> involved with Red Hat. Replying to the automatic CVE request mail from
> Mitre does not seem to reach any human being. I don't know of any other
> way to get attention from Mitre for this request.
> 
> I wonder what is the best way to recover from such a situation without
> risking duplicate CVE assignments, or not assigning a CVE at all.
> 
> I have a hunch that the issue might have to do with filling out the "PGP
> Key" field in the CVE request form, which I did for the one request that
> has not been answered, but not for the other, which got assigned right
> away.

I can't answer the "what magic do I do to make the web form work" as I
never got that thing to work so we had to end up being our own CNA just
to handle issues :)

But this topic has come up recently in talking with other open source
CNA groups.  The "real" solution for it is to talk to a different root
CNA (i.e. anyone other than MITRE).  For open source projects, that
_should_ be Red Hat, but I don't know if they yet have a simple way to
ask for stuff like this, other than the back-channel you probably used
last time.  I think RH is working to codify this somehow, but I can't
speak for them.

Or, better yet, as SUSE is a CNA, why not just assign CVE ids yourself,
as part of the "open source projects affected in a SUSE product that are
not covered by any other CNA" rules.  Doesn't your CNA charter allow you
to do this now?

Anyway, I just recommend avoiding the MITRE web form as much as
possible, as it's a total black box and no one knows what is on the
backend or where the information there goes to :(

thanks,

greg k-h
