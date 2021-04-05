X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1920" "Monday" "5" "April" "2021" "12:43:15" "-0400" "Leo Famulari" "leo@famulari.name" nil "50" "Re: [oss-security] Risk of local privilege escalation in GNU Guix" nil nil nil "4" nil nil (number mark "U       leo@famulari Apr  5   50/1920  " thread-indent "\"Re: [oss-security] Risk of local privilege escalation in GNU Guix\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Risk of local privilege escalation in GNU Guix" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20290 invoked by uid 550); 5 Apr 2021 16:50:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18013 invoked from network); 5 Apr 2021 16:43:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=famulari.name;
	 h=date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=mesmtp; bh=u7HtOYEHy5FvkmuDtBeAUljl
	DFCkUFlBdVoAPW1Q2iI=; b=WWUhM98uUrAnO1cpoAseLZGQcEymoNdpf+OQ3pvw
	PMbaaqDx09V5afR51dx4Rxczls7h9IrDvHrsiJIuJgwDVqpQeMbq15cUrctDN1Oc
	lwApS9v58ER3lmD9SPspLM5Mq3gIp5FLWbzK9rYcDTes+m2CYqvbpRKkcRaROjVq
	4zs=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=u7HtOY
	EHy5FvkmuDtBeAUljlDFCkUFlBdVoAPW1Q2iI=; b=ed0n1ycaR9YczfjtXi3oKG
	GUdi6nsrJ+7Yk8gtL4ID99qR760L20NIYekH9kATv4EgMNsF6WI3bKnzksTCVwoE
	zqmAJscs7xJCgC7zB2XV0uD8h/EMVz2C61hSCv8UaTq44bzdDdN5fZg4rzkwl6wq
	3Qt48Z6DOkKgjFQSy+O/AQsG2mIdzQ3H/IZ2e43yBc6CDBWrc3lUi6LRfJqh2g/x
	T3mjMXKgySPAWNSBS/PCXtkcLyU3qN70hFYmVsFxotV/9c9FhBPgpeVvxdNFxLrY
	uiM8WOZObNP9KaQ7g7G7d402kcnZwCLLzpx26mfeeo2DcrS35Ez0CzY0b/47i/+g
	==
X-ME-Sender: <xms:KD5rYF15PyzqA4hKmD6TGeoR7AonkfuS420OKf2Lx5XfsuZuNCv_Rg>
    <xme:KD5rYMFWwq0WUah_En7XWC8SCtrsxiGDDELiGDsFUH4dPtWlXM9ehxwHnaXl07hfj
    -0jIBJcue_v2wZSfA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudejvddguddthecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtd
    erredttddvnecuhfhrohhmpefnvghoucfhrghmuhhlrghrihcuoehlvghosehfrghmuhhl
    rghrihdrnhgrmhgvqeenucggtffrrghtthgvrhhnpedtfeeltdevudekledvhfegtdduje
    eiieeljefghfffkeejffdufeefuddvfeetgfenucffohhmrghinhepmhhithhrvgdrohhr
    ghenucfkphepuddttddruddurdduieelrdduudeknecuvehluhhsthgvrhfuihiivgeptd
    enucfrrghrrghmpehmrghilhhfrhhomheplhgvohesfhgrmhhulhgrrhhirdhnrghmvg
X-ME-Proxy: <xmx:KT5rYF6u_OSOSeRWyAKIjSWy5RBsQCxGOl60LkGJafkyqwbZ7Y5Tsg>
    <xmx:KT5rYC0eyguDDD_MwdrvICA_D9oIxmb6XmkJKX-GiahO6_mJBuYfrw>
    <xmx:KT5rYIEL668JqDIMfG6k_2XkTfWRb1OHV9BbVY0D4cE-ruRH9TNwJg>
    <xmx:KT5rYMTSUPq2AUY6SQepDwRUucXJq6auOB3FBjC4o25jxoGmffQzbA>
Date: Mon, 5 Apr 2021 12:43:15 -0400
From: Leo Famulari <leo@famulari.name>
To: oss-security@lists.openwall.com
Message-ID: <YGs+I9NUYzddLP9P@jasmine.lan>
References: <YFPFrYcJK1e+qedn@jasmine.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="30cZojUwxZ9DlgJz"
Content-Disposition: inline
In-Reply-To: <YFPFrYcJK1e+qedn@jasmine.lan>
Subject: Re: [oss-security] Risk of local privilege escalation in GNU Guix

--30cZojUwxZ9DlgJz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 18, 2021 at 05:27:09PM -0400, Leo Famulari wrote:
> # Vulnerability
>=20
> The attack consists in having an unprivileged user spawn a build process,=
 for=20
> instance with `guix build`, that makes its build directory world-writable=
.  The=20
> user then creates a hardlink to a root-owned file such as `/etc/shadow` i=
n that
> build directory.  If the user passed the `--keep-failed` option and the b=
uild
> eventually fails, the daemon changes ownership of the whole build tree,
> including the hardlink, to the user.  At that point, the user has write a=
ccess
> to the target file.

We applied for a CVE ID via MITRE's web form [0] on March 18, 2021.

We have not yet received a reply. Does anybody know if that is expected?

Is there another method for independent projects to receive CVE IDs?

[0] https://cveform.mitre.org/

--30cZojUwxZ9DlgJz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEsFFZSPHn08G5gDigJkb6MLrKfwgFAmBrPiAACgkQJkb6MLrK
fwg0Nw//YPBlkEjsGh/BJgAPZ1ry6bZCWfJxk8sCvjrmSZ9X8h8u8B1S4V2dW+Uw
rInvEZisdmddapaK7nghwSPI7Unp/K0io+YMYDE4Evj5L1s6UYENm7GbhPOY+K/i
nOBCi7wOaltWxY8AyuAVUSGAU5oKluxyWIbhv/58UguN/UFgLzw1Qb5KVFCYd6iT
OYKtoADpWWflrY0qPm2x/tdWuB49v0Kmk/qwxuaC7CpsKBUyYr33pLWrV4h9Srl5
hPxMD90cOlBEUOKZUMMOVbfIzL9v7i9ixAoM0ml/+EIFhM8NgiZyqUzCdo8AtWoI
Mb+oX88kZMdj/DxNtWRQL/zW7miq/nI8MNFlUQXC89T/XPzHE3qvRe+/ldU1Ubau
L1HBa0V5y+WTxTFU1p+8w+zzzb2WDKwk9bEuLJqP0DWkZ0hzrdlobrA+que/jQzS
Fznra9etFpUYZ62FVZTE3c+zQndSVuT471NWxhJuctNznFYWHdW2IZXZYGes5mZs
jP8b3bFa58jo9m2B0SmVaOqDkUtiG638KTFtka5OFCHleTxniAWxFtSN1xBfSMeY
XDj8aTkWn7cB3n09I9M8AYRnaKD4jjqqErWG3hszK1BoRY6iLoQXx/OtxcOABU+q
NdiujhOf/iqJc2kApj+Np9cy3WsQf7tZFG0fGvqjpocSyG2qF2c=
=F9HN
-----END PGP SIGNATURE-----

--30cZojUwxZ9DlgJz--
