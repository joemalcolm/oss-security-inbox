Received: (qmail 32692 invoked by uid 550); 21 Jul 2023 07:42:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32671 invoked from network); 21 Jul 2023 07:42:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1689925330; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BBBkH4F0BL7JaWKoKoX2n2LETpfx2l3i7MbBQHwpZNM=;
	b=jr7oQIfizSmZs7qi+uWgW/udWKo148KXEw4r8nvqWTG0+iXUli5BCitFu4im7OgfS8ZYTC
	L9kqHx9MPckj2klvvvdG9fVJ9O1Dw4hg58KGSbn6P6jY5TDVoTvXuYNJ/suR2F85No9Qt3
	En1XIe0jrqYs8DQOueinsoafM4uH/5Q=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1689925330;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BBBkH4F0BL7JaWKoKoX2n2LETpfx2l3i7MbBQHwpZNM=;
	b=L71qFBBRC++JP2192eUoZYWz7OaLr/Ool7pNNqQLrDltIg6E83A+hJQPaaPxAwzoEfvHdm
	U/EdS1ZFClcxdEAQ==
Date: Fri, 21 Jul 2023 09:42:09 +0200
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20230721074206.GS1466@suse.de>
References: <e9c022742fc07cee@cvs.openbsd.org>
 <ZLk1hSUEt00caovk@itl-email>
 <1c005469-a540-5cd1-642e-5aebc35dd17b@geeklan.co.uk>
 <633ff42d-052a-df7b-dc34-6264e9d4eb77@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <633ff42d-052a-df7b-dc34-6264e9d4eb77@gmail.com>
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Frankenstra=DFe_146=2C_90461_Nuernberg=2C_Ger?=
 =?iso-8859-1?Q?many=2C_GF=3A_Ivo_Totev=2C_Andrew_Myers=2C_Andrew_McDonald?=
 =?iso-8859-1?Q?=2C_Martje_Boudien_Moerman=2C_HRB_36809=2C_AG_N=FCrnberg?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] Announce: OpenSSH 9.3p2 released

On Fri, Jul 21, 2023 at 11:04:49AM +1000, Matthew Fernandez wrote:
> 
> 
> On 7/20/23 23:41, Sevan Janiyan wrote:
> > On 20/07/2023 14:24, Demi Marie Obenour wrote:
> > > Should there be a system-wide configuration file containing a list
> > > of known-good PKCS#11 libraries? ssh-agent having to guess if
> > > something is a PKCS#11 library is less than awesome.
> > 
> > There's a compile time setting for paths from which you are able to load
> > libraries from.
> 
> I don’t think this helps much though, right? The Qualys research that
> motivated this found an exploit chain using only libs present in /usr/lib in
> a default Ubuntu install. If you want to lock down loading to a specific
> non-/usr/lib path that you have control over, this suggests you know and are
> in control of the PKCS#11 providers you’re going to support. In which case,
> why not avoid dynamic loading to begin with? I guess the allowlist and new
> defaults are the answer to this conundrum though.

The openssh fixing patches (besides disallowing this remote agent
behaviour by default) now just abort() the pkcs11 helper if they load a library 
without the pkcs11 interface C_GetFunctionList() which should largely
solve the problem, unless a library can be exploited on first load.

Longrange thinking is if these kind of load/unload impacts could be
detected by tooling easily and/or get fixed in affected libraries.

Ciao, Marcus
