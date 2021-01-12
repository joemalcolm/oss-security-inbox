X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["999" "Tuesday" "12" "January" "2021" "17:09:42" "+0100" "Greg KH" "greg@kroah.com" "<X/3JxrqAuE7mDlpZ@kroah.com>" "26" "Re: [oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic" nil nil nil "1" "2021011216:09:42" "[oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic" (number mark "U       greg@kroah.c Jan 12   26/999   " thread-indent "\"Re: [oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic\"\n") "<93325B6B-DDAD-492B-9954-9CE8A372E086@oracle.com>" ("<CALJHwhR0d-q7dPhC1wXWm63WA9cLh9cQX_GYRJO7Mw0O8kDL4w@mail.gmail.com>" "<X/1YIT59FZ7clijT@kroah.com>" "<93325B6B-DDAD-492B-9954-9CE8A372E086@oracle.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28631 invoked by uid 550); 12 Jan 2021 16:08:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28610 invoked from network); 12 Jan 2021 16:08:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm2; bh=y4a0W+Mn9VHBLvssWPC9RCgGfzI
	nYmx4kTQ1OpeKg8g=; b=BMJYdOjA9fasT38g6EJvwnzGdfa4Tf8TZDlL/9bkRCZ
	SUZNjgJb4C3YJYMUyAVeIzgcsBIGr2YcOwrmcp+MG8/PfeGlo2vfTwidM+Tmn862
	EPgJuFFDu2lX2llpgodqdV6LHC5VIXuTmjPMqdw3lSd2M0XA4MVLMix9tImSjAKJ
	Q8L1X2t08uiFsgEPRsri+Ziu8FXrY2D3x+Un1Zhq6QFgmN5537Hh50T5Nd4gfSA2
	aIA9lzCacicadwLIHekxwihbIPUfXJoYZqS+ubDoTH//vPxcgNg38rPsM78LhTnE
	2TSFVM7zsxK9Kgt88U1wt9FcxAwkjVr6RPexQIL14wg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=y4a0W+
	Mn9VHBLvssWPC9RCgGfzInYmx4kTQ1OpeKg8g=; b=Z4G+XBUhW+xPVEGxVBVNmi
	LU6snWl07BctgTNpA5rmbjzt14nXl/1GkAEDiVURhBX0BycoBQLJyB9h+H6pCyd0
	+Ks8A9mIiWksW9y1Rv2dgO3UQk/Ez7N/V0pOtcxaT4Bfwzn/j1jyhyGQpsQQBmpr
	FgkXf/z7rQ9AR7DxK23xIJY1HjBksk6Lh1NasnRoJq0UmnsbaitrRW0Ri+Uhnet4
	yeSf1gbIVkbEAvT578LHOVVE4xt8WmNgxf1Y+DQclhRVxFFK15vjkkdjpvDurIv+
	EG/yWMEqGEWXbUU4mqlwgySPa4Cgig2dmJH8s9sbJT1BDDuwxsteiVeYZr3txASg
	==
X-ME-Sender: <xms:gcn9X9tTcCtVsc_TlhvagSG0pInChZ3uwHAtjINZ6oXwY5QhbUgjrQ>
    <xme:gcn9X2eSBOpSXNyqZTlK1xhcxVpUXZtJ8MZYZbZ0Rtm_dTdbwhi-0aNJPkbenUSmb
    5xak3Fv9XtEMA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedukedrtddtgdehfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttdertd
    dttddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeen
    ucggtffrrghtthgvrhhnpeevueehjefgfffgiedvudekvdektdelleelgefhleejieeuge
    egveeuuddukedvteenucfkphepkeefrdekiedrjeegrdeigeenucevlhhushhtvghrufhi
    iigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:gcn9Xww4z_-Tmnxa-l4y1zeE554reNjKfUnweB0RR5Uyl43MNDSJZA>
    <xmx:gcn9X0MRiW8mp1fR3GUggFAZPRuY3A9Dq5Ts97jbnowyIms2jrjq-A>
    <xmx:gcn9X99P5uICopxr8wE5Owt_B-ZNa80_TpfHBRsO3rLp9N6scaSZYQ>
    <xmx:gcn9XwI_hw2Xxna8SinZE0pSAbBX9meuUwyDFR9AbIrtmtnG8qmapA>
Date: Tue, 12 Jan 2021 17:09:42 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <X/3JxrqAuE7mDlpZ@kroah.com>
References: <CALJHwhR0d-q7dPhC1wXWm63WA9cLh9cQX_GYRJO7Mw0O8kDL4w@mail.gmail.com>
 <X/1YIT59FZ7clijT@kroah.com>
 <93325B6B-DDAD-492B-9954-9CE8A372E086@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <93325B6B-DDAD-492B-9954-9CE8A372E086@oracle.com>
Subject: Re: [oss-security] CVE-2021-20177 kernel: iptables string match rule
 could result in kernel panic

On Tue, Jan 12, 2021 at 03:23:16PM +0000, John Haxby wrote:
> 
> 
> > On 12 Jan 2021, at 08:04, Greg KH <greg@kroah.com> wrote:
> > 
> > I still do not understand why you report issues that are fixed over a
> > year ago (October 2019) and assign them a CVE like this.  Who does this
> > help out?  And what about the thousands of other issues that are fixed
> > in the kernel and not assigned a CVE like this, are they somehow not as
> > important to your group?
> > 
> > What determines what you want to give a CVE to and what you do not?
> 
> 
> I think I can answer that.   There's nothing technical going on here,
> it's down to the behaviour of the end users of enterprise systems.

Ok, I can understand that crazyness, and somehow believe it, so I have
not complained when announcements like this come out for issues that
affect RHEL releases as RH is known for abusing^using the CVE system in
this manner.  But that was not the case here at all, which is why I
asked this.

thanks,

greg k-h
