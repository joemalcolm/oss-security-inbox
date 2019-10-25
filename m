X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1013" "Friday" "25" "October" "2019" "14:15:40" "+0200" "Hanno =?iso-8859-1?Q?B=F6ck?=" "hanno@hboeck.de" "<20191025141540.10b322fe@computer>" "34" "Re: [oss-security] Formal verification of open source software" "^Date:" nil nil "10" "2019102512:15:40" "[oss-security] Formal verification of open source software" (number mark "        hanno@hboeck Oct 25   34/1013  " thread-indent "\"Re: [oss-security] Formal verification of open source software\"\n") "<CAGUWgD_5HCt1T7ck4ai1=8Tn4L5nnGDiEvGdTdt_jMTD0ziK=A@mail.gmail.com>" ("<CAGUWgD_5HCt1T7ck4ai1=8Tn4L5nnGDiEvGdTdt_jMTD0ziK=A@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Formal verification of open source software" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24098 invoked by uid 550); 25 Oct 2019 12:15:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24075 invoked from network); 25 Oct 2019 12:15:52 -0000
Message-ID: <20191025141540.10b322fe@computer>
In-Reply-To: <CAGUWgD_5HCt1T7ck4ai1=8Tn4L5nnGDiEvGdTdt_jMTD0ziK=A@mail.gmail.com>
References: <CAGUWgD_5HCt1T7ck4ai1=8Tn4L5nnGDiEvGdTdt_jMTD0ziK=A@mail.gmail.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 25 Oct 2019 14:15:40 +0200
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Formal verification of open source software
To: oss-security@lists.openwall.com

On Fri, 25 Oct 2019 13:43:57 +0300
Georgi Guninski <gguninski@gmail.com> wrote:

> Are there success stories of formal verification of open source
> software?

There's been a lot of work in the crypto community in this direction.
Most of it is code under OSS licenses:

Hacl* is a formally verified crypto library. Some of the crypto
algorithm implementations are used in Mozilla's NSS:
https://blog.mozilla.org/security/2017/09/13/verified-cryptography-firefox-=
57/

Also NSS/Mozilla, they have identified a flaw in their gcm
implementation with cryptol:
https://timtaubert.de/blog/2017/06/verified-binary-multiplication-for-ghash/

There's been a formal verification of (a subset of) PolarSSL:
https://blog.regehr.org/archives/1261

This is an incomplete list, just the first things I remembered, there's
a lot more.

In terms of operating system kernels there's sel4:
https://sel4.systems/


--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
