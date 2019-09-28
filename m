X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3097" "Saturday" "28" "September" "2019" "01:56:11" "+0100" "Dominic Taylor" "dom@stablepoint.com" nil "98" nil "^Date:" nil nil "9" nil nil (number mark "        dom@stablepo Sep 28   98/3097  " thread-indent "\"Re: [oss-security] Exim CVE-2019-16928 RCE using a heap-based buffer overflow\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Exim CVE-2019-16928 RCE using a heap-based buffer overflow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1435 invoked by uid 550); 28 Sep 2019 09:26:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10158 invoked from network); 28 Sep 2019 00:56:32 -0000
X-Sender-Id: t56suolmmq|x-authuser|dom@stablepoint.com
X-Sender-Id: t56suolmmq|x-authuser|dom@stablepoint.com
X-MC-Relay: Neutral
X-MailChannels-SenderId: t56suolmmq|x-authuser|dom@stablepoint.com
X-MailChannels-Auth-Id: t56suolmmq
X-Slimy-Cold: 54ea9cf57ef74f10_1569632180101_2599240263
X-MC-Loop-Signature: 1569632180100:2366102639
X-MC-Ingress-Time: 1569632180100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=stablepoint.com; s=default; h=Message-Id:In-Reply-To:To:References:Date:
	Subject:Mime-Version:Content-Transfer-Encoding:Content-Type:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=e2+dOxn5K2Z6qxJ0pP0zkGaxGEm/y94xSi6UZA1GsuE=; b=w2YSd69W2i6sZNdsRDeDz8WVck
	Da00+LCSeXzv1ovh5FMgid6+B8eK8apRzO5WBgCvgeiE4X7Cnx751DpoSjkYV5wlMsjBxwUIZQ7xX
	rhsRgBjjz4Vfg7pF2Fq5td8Esjy0/fu//9vEdqf6e0j4Jdp7t1mleABfzmHBbyLK0FqudCsoePxvd
	MK7nwAQ5/eGZzdblpyTp9DTZigfm/zInPgNNO2ecPGlAubN7L395YNIQaBU2c95CdGULsWY5ZeBlL
	qVp9wLbIzc3u5ZG2slR7gz7ak5f4Ouq2vhm43nFnXOgw311R9NO/tlzSkpiIvlbze6cvXzce4cWS5
	RNWMBBmQ==;
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
References: <20190928003428.GI16334@jumper.schlittermann.de>
In-Reply-To: <20190928003428.GI16334@jumper.schlittermann.de>
Message-Id: <5C33B233-181D-45E1-8982-7ED07AD858B1@stablepoint.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-AuthUser: dom@stablepoint.com
Date: Sat, 28 Sep 2019 01:56:11 +0100
From: Dominic Taylor <dom@stablepoint.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Exim CVE-2019-16928 RCE using a heap-based buffer
 overflow
To: oss-security@lists.openwall.com

Hi Heiko,

Good find, but why no embargo?

Presumably because privs are dropped so this is maybe not as bad as previou=
s?

Regards

Dom

> On 28 Sep 2019, at 01:34, Heiko Schlittermann <hs@nodmarc.schlittermann.d=
e> wrote:
>=20
> CVE ID:     CVE-2019-16928
> Date:       2019-09-27 (CVE assigned)
> Version(s): from 4.92 up to and including 4.92.2
> Reporter:   areuu@outlook.com
> Reference:  https://bugs.exim.org/show_bug.cgi?id=3D2449
> Issue:      Heap-based buffer overflow in string_vformat,
>            remote code execution seems to be possible
>=20
> Conditions to be vulnerable
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>=20
> All versions from (and including) 4.92 up to (and including) 4.92.2 are
> vulnerable.
>=20
> Details
> =3D=3D=3D=3D=3D=3D=3D
>=20
> There is a heap-based buffer overflow in string_vformat (string.c).
> The currently known exploit uses a extraordinary long EHLO string to
> crash the Exim process that is receiving the message. While at this
> mode of operation Exim already dropped its privileges, other paths to
> reach the vulnerable code may exist.
>=20
> Mitigation
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> There is - beside updating the server - no known mitigation.
>=20
> Fix
> =3D=3D=3D
>=20
> We plan to publish a new security release (*will* be 4.92.3) of Exim
> during the next 48 hours, ideally before monday 8.00 UTC. (We're still
> running regression tests.) We'll send another notification as soon as
> the new release is available.
>=20
> Distros may have already picked the patch mentioned below and may have
> already released a fixed version. Please check your distribution's
> changelogs.
>=20
> If you can't wait, please use use our git repository http://git.exim.org/=
exim.git,
> checkout the branch exim-4.92.2+fixes and use the commit 478effbfd9c3cc5a=
627fc671d4bf94d13670d65f
>=20
> A direct link to the commit is:
> https://git.exim.org/exim.git/patch/478effbfd9c3cc5a627fc671d4bf94d13670d=
65f
>=20
> which basically does:
>=20
> --- a/src/src/string.c
> +++ b/src/src/string.c
> @@ -1132,7 +1132,7 @@ store_reset(g->s + (g->size =3D g->ptr + 1));
> Arguments:
>   g            the growable-string
>   p            current end of data
> -  count                amount to grow by
> +  count                amount to grow by, offset from p
> */
>=20
> static void
> @@ -1590,7 +1590,7 @@ while (*fp)
>        }
>       else if (g->ptr >=3D lim - width)
>        {
> -       gstring_grow(g, g->ptr, width - (lim - g->ptr));
> +       gstring_grow(g, g->ptr, width);
>        lim =3D g->size - 1;
>        gp =3D CS g->s + g->ptr;
>        }
>=20
> We thank you for using Exim.
>=20
>    Best regards from Dresden/Germany
>    Viele Gr=C3=BC=C3=9Fe aus Dresden
>    Heiko Schlittermann
> --
> SCHLITTERMANN.de ---------------------------- internet & unix support -
> Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
> gnupg encrypted messages are welcome --------------- key ID: F69376CE -
> ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

