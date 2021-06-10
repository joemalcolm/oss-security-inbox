X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1347" "Thursday" "10" "June" "2021" "14:47:11" "+0200" "Marek =?utf-8?B?TWFyY3p5a293c2tpLUfDs3JlY2tp?=" "marmarek@invisiblethingslab.com" nil "38" "[oss-security] Re: XScreenSaver 5.45: Disconnecting a video output can cause XScreenSaver to crash and unlock" nil nil nil "6" nil nil (number mark "U       marmarek@inv Jun 10   38/1347  " thread-indent "\"[oss-security] Re: XScreenSaver 5.45: Disconnecting a video output can cause XScreenSaver to crash and unlock\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: XScreenSaver 5.45: Disconnecting a video output can cause XScreenSaver to crash and unlock" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15800 invoked by uid 550); 10 Jun 2021 12:56:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11545 invoked from network); 10 Jun 2021 12:47:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=lSnfCg
	nKveWBxpbFwq/wT3wwcL7zGaV4dnD0h/vK8Lg=; b=NfuLuczDfGUOGLUNZozInX
	nSlvS2bZPEDDu62n3cimbV+G90lOKNI7ERR0f+zVemKzEa3Dp5kkR3t5UzRSbFt2
	WscSjuWWrE/S6gEmGEXAN6/RJp+nCZs8oG25Bz+TvwRpchXdJfQFEi3fj5MTf53S
	UyLiqqrXPw8IHs3Fgb6TCZuu4Bp6ljSuVNtgYkw+qszivOYkndZAMgFcKGRi+/ma
	efUKLM7asA3SarHutivx6V4ldxWrwMpdejkzFphx0Q0F9pOVAN4WTWviuI2aH7bb
	uxvp84ceTyP723Vyg6KtAI+pFfd0zodIY+VcWj1dIc8Mf0WIi6cdu/1cnTKz45pQ
	==
X-ME-Sender: <xms:0wnCYFdWUoXc8yzh7yEYs5POCwIKZjRQIXAKEykI90x_G3RohMfJpA>
    <xme:0wnCYDMJyw-Nmy0prdckaSp3Ts9R0b33khrUNx16xxSgLhS_ugHpM5uC2bVu4Qa3b
    wJ4SGVioBhGLA>
X-ME-Received: <xmr:0wnCYOgUG9CzmNa1vK0OU3KS5jHPKJXaQc0l9zPUeL9XdTw6L4eh0dkeQziugCbviXAcOrGUPDAY7ZazDh2v7INOdj8SCBp5>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfedufedgheehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttdejnecuhfhrohhmpeforghrvghk
    ucforghrtgiihihkohifshhkihdqifpkrhgvtghkihcuoehmrghrmhgrrhgvkhesihhnvh
    hishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrhhnpeetveff
    iefghfekhffggeeffffhgeevieektedthfehveeiheeiiedtudegfeetffenucevlhhush
    htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrghrmhgrrhgvkhes
    ihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:0wnCYO_CE6trb1DypxJUF9BU8oZXxHAkc5sQvpI7JsXG3u3rwkC2Wg>
    <xmx:0wnCYBt-JMvnH9ygAx_QVMZaEz-SululwUvIQ9OQrsvr8Be_9Ca75w>
    <xmx:0wnCYNGPoHOh3d7r4qW5_HhT-CPeESRx9Cit9qk2QjSZOJyG-q4dgw>
    <xmx:1AnCYG4PBpUU488UnLuHhmXKVKXWJPZKfUVR8MqpRTiqSbJbpPbkKw>
Date: Thu, 10 Jun 2021 14:47:11 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?= <marmarek@invisiblethingslab.com>
To: Gianluca Gabrielli <ggabrielli@suse.de>
Cc: oss-security@lists.openwall.com
Message-ID: <YMIJ0OV72O2XK7m+@mail-itl>
References: <YLrLbpUuAbLO3RR8@mail-itl>
 <31aef962-511f-e7d7-455a-23d309f03aa5@suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/vXN4vdoesLKlREd"
Content-Disposition: inline
In-Reply-To: <31aef962-511f-e7d7-455a-23d309f03aa5@suse.de>
Subject: [oss-security] Re: XScreenSaver 5.45: Disconnecting a video output can cause
 XScreenSaver to crash and unlock

--/vXN4vdoesLKlREd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 10 Jun 2021 14:47:11 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?= <marmarek@invisiblethingslab.com>
To: Gianluca Gabrielli <ggabrielli@suse.de>
Cc: oss-security@lists.openwall.com
Subject: Re: XScreenSaver 5.45: Disconnecting a video output can cause
 XScreenSaver to crash and unlock

On Thu, Jun 10, 2021 at 02:34:58PM +0200, Gianluca Gabrielli wrote:
> Thank Marek for having shared this with the list. I don't see a CVE ID
> assigned to this bug, have requested one?

I have not (nor has the vendor).

--=20
Best Regards,
Marek Marczykowski-G=C3=B3recki
Invisible Things Lab

--/vXN4vdoesLKlREd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEhrpukzGPukRmQqkK24/THMrX1ywFAmDCCdAACgkQ24/THMrX
1yyqWAgAiX+4lXPVuM16VPBovTnHb1rxMMn+JNmTRLSOZROE5Uu/fL/PTPa4G9z3
LwTI5f26j86/e8OpRZv+SwpowkCJh6/iH/8kLdd0+I4ke7o/qdZLNL1TCB8yk7kP
ZyYjcoyARGm8Bp3tBMb001szxaa38ROd4h1ZwmSooETagK0O/YNSrxkVdFOU9cjk
mNOS2CbR1agX/ucxtGAKyHjiq6ruj+x9H+fwd3dilY3Olrq+mSDAUS51zNyVZ6vT
hFOm2ByT7QGDs9+g+QIej/7aGVlABnJY+ynH8FciGsrkj5fq1x1ipJXJnSeLmHzE
gfEJxKLwynY5nxyM7LaAT8xQKWeRdA==
=Mliz
-----END PGP SIGNATURE-----

--/vXN4vdoesLKlREd--
