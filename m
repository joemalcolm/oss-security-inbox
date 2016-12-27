X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2847" "Tuesday" "27" "December" "2016" "12:02:43" "+0100" "Florian Pritz" "bluewind@xinu.at" "<1e25987b-2310-a473-1a3b-be5489e52761@xinu.at>" "66" "Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]" nil nil nil "12" "2016122711:02:43" "[oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]" (number mark "U       bluewind@xin Dec 27   66/2847  " thread-indent "\"Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]\"\n") "<20161227001009.GS20382@tracyreed.org>" ("<CADSYzsubAm_GzSJ1S3uoskp1JNJe5Jemb0jtt8waA8QMdcbHOw@mail.gmail.com>" "<20161227001009.GS20382@tracyreed.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15894 invoked by uid 550); 27 Dec 2016 14:06:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32529 invoked from network); 27 Dec 2016 11:02:59 -0000
X-Spam-Virus: No
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xinu.at; s=main;
	t=1482836566; bh=Z/Jt9Xki48BqnnTkJ0ZAtUS8rvamORROCGh/53H4Zgk=;
	h=Subject:To:References:From:Date:In-Reply-To;
	b=dVFrOCI8Yq7KclNh9/flDiLropjcX2OcUhRcDNQlOjQuYGHYE33c1x5ilkSo4CW8W
	 DeW7QdoxHloq7xIgTACBJadckUbWcO9InS3ycXvibKKkhhYuFNYTLUObu+yS60Fy9V
	 abTdwoOj02g+ulQAfvHtkqfi/JH9xJK0/9FySvluB5Ny+mClyP0PmdiOIjXly4gcvA
	 Ywq363PAEJG810TCs+SFBEHvY5R/8Wx+UMXs45wwRw0nSxvAYCDYGreM+rzULw2mxn
	 7Qd9j0yRIyzll5iF1n++nHSc1Tvy/soCeRQmRG4Pii+2Gbf5sBAsv2UQL36AYbq/n/
	 PGuGfN7kcmMSgZNIEOTDZh4WZlRff3NmDnZ0ndtE5ZBPDhBp8yPsxlT4FzBJjoM5U7
	 PKGCurAmvwi890lmA36OlFfsgt6aV0ZHNFtV5Q3b9tM/o+op3/r6d/qiNp7FMveBwo
	 Anwj9U4s9nWpUvU1QiXxIfZv9hWkz5D9C9K5Ot5lIeNFDmWogmzfmEDMgL8CGwZ0Vi
	 xeJ/YIFUHlPyunQphm3vfBXjguNncZLDtfs19U1MeW+i6sQ+NRXRk7grpv1SnRg8Y+
	 OES1Qq/x2UJ3G+vBr01IAay5ZCTisNg82e849UjuoUidXjJiARdP2NStLNDJ1iiOR/
	 PjLnq/5MBl6iIr5WrAhftsWI=
To: oss-security@lists.openwall.com
References: <CADSYzsubAm_GzSJ1S3uoskp1JNJe5Jemb0jtt8waA8QMdcbHOw@mail.gmail.com>
 <20161227001009.GS20382@tracyreed.org>
From: Florian Pritz <bluewind@xinu.at>
Message-ID: <1e25987b-2310-a473-1a3b-be5489e52761@xinu.at>
Date: Tue, 27 Dec 2016 12:02:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <20161227001009.GS20382@tracyreed.org>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="dW9x5LhxWrLDEAJUqgkJaiUnUJHec2vmN"
Subject: Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution
 [CVE-2016-10033]

--dW9x5LhxWrLDEAJUqgkJaiUnUJHec2vmN
Content-Type: multipart/mixed; boundary="oIa8J3staVRDsjf5FkXFNoT3LpL33j6iv";
 protected-headers="v1"
From: Florian Pritz <bluewind@xinu.at>
To: oss-security@lists.openwall.com
Message-ID: <1e25987b-2310-a473-1a3b-be5489e52761@xinu.at>
Subject: Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution
 [CVE-2016-10033]
References: <CADSYzsubAm_GzSJ1S3uoskp1JNJe5Jemb0jtt8waA8QMdcbHOw@mail.gmail.com>
 <20161227001009.GS20382@tracyreed.org>
In-Reply-To: <20161227001009.GS20382@tracyreed.org>

--oIa8J3staVRDsjf5FkXFNoT3LpL33j6iv
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 27.12.2016 01:10, Tracy Reed wrote:
> Particularly since this is command
> injection which is precisely what SELinux is good at limiting (as
> opposed to SQL injection).

This is not strictly command injection. It is more similar to an
unrestricted file upload vulnerability. The problem is that you can use
the sendmail -X option to write a log file of the SMTP dialog (with an
arbitrary path) that then contains e.g. php code which you can execute
via a second request. php itself actually prevents you from peforming
command injection because according to the documentation of the mail()
function, the arguments are wrapped in escape_shellcmd() internally. It
just doesn't prevent you from passing arbitrary arguments.

The attack is described here:
https://blog.ripstech.com/2016/roundcube-command-execution-via-email/

Also note that postfix' sendmail implementation does not support the -X
option. Additionally I believe there are no other options in postfix'
sendmail that are vulnerable to this issue, but feel free to verify this.

Florian


--oIa8J3staVRDsjf5FkXFNoT3LpL33j6iv--

--dW9x5LhxWrLDEAJUqgkJaiUnUJHec2vmN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJFBAEBCgAvFiEEz6avFeXHQUn8HYwIbRZVwUzhwT4FAlhiSlYRHGJsdWV3aW5k
QHhpbnUuYXQACgkQbRZVwUzhwT551Q/6Akt+7GITrGs578YzEmqMKwI5juo8wG5m
wjAoNyfxF9i8MilOrxnSqkbdAfrDgOuH/AV9NpoCCwwcdS5pX+SKICmUlvA3L+YE
FZBFb2FfQfjFnmedFJT9DNv3sioVBZ+63fu/kRQQmakVslRf2rr8bKGc9Cr69hsT
D1sPFi2vO9L+bUkAcqRhyII8CoZ6JQysY8r7b30OQbM7sK9e3P9AESyfxaAm57mF
MojRmT8ybWamwFd7I6HiNo0QlTBO5pkCCAA6Btj7UqYnJKQDkbQRDgYIBzbKyoeU
rP0aIJBD5y0CdwvXnDemTYIQvw+wqWKldH5Euu9cX7YhSNp/R+QELrsX3xHDHGyb
LfMPPoCylZiEm/LbitjPqGIb+eOPTIcbw74WOx13lzS496oLXuvSKGMHczz+D2XM
knAZUv+AtOJ+689W2ZWRxiIdT0jYid/AIz8+ztjD7juxxRcO6Txzz5+crywMrr0J
ufd0HN9GBR3vZ6WxuIBDHY6UtSFkM3vKY7XZOm1DtMenvhpttymt3xP9+JveAJHY
Bg6oD82QXE83pTLzqEEp1Bz0Ept1wXHSBy368tpVl7MxvCu3IUpwd5NZJCGfjAor
89Kd8hs4EJS4V/KSzOC4OpozSwSI1jQXpcj/rSleDeCrdseQ5GJcGeXoOOiJkXOb
BoBDy00Xez4=
=riJS
-----END PGP SIGNATURE-----

--dW9x5LhxWrLDEAJUqgkJaiUnUJHec2vmN--
