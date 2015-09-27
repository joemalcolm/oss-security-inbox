X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3272" "Sunday" "27" "September" "2015" "09:53:59" "+0200" "Pali =?utf-8?B?Um9ow6Fy?=" "pali.rohar@gmail.com" "<201509270953.59256@pali>" "96" "[oss-security] DoS attack through Email-Address perl module v1.907 (CVE id request)" nil nil nil "9" "2015092707:53:59" "[oss-security] DoS attack through Email-Address perl module v1.907 (CVE id request)" (number mark "        pali.rohar@g Sep 27   96/3272  " thread-indent "\"[oss-security] DoS attack through Email-Address perl module v1.907 (CVE id request)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19837 invoked by uid 550); 27 Sep 2015 08:01:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16178 invoked from network); 27 Sep 2015 07:54:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:user-agent:mime-version:content-type
         :content-transfer-encoding:message-id;
        bh=xscHNdeNmsM/OrD9WeiSE1bLiOyXM09UA5Ve7W16tRY=;
        b=EvDMUJPLbjmF21tdMTCdMRf32h8ccsBXY6oj+NvyzD8o8ZRlAKmMVY7+Wu8E0EKkd6
         yv0OCR8KI5+SVXjFn9uUVFt2cYRjJSHadmWUs7kzZHQk7qdP3O7tAV9Xwxo/4ck/+h1P
         NdD0tNozHyXJZwgbRbc6fedoFLdj7IjuV90lb1eZ85HyIj1fpRHNXf1HhHhzftCjzG7q
         NUyuLqgF2evspg/yopuZJCyb/hgGV4W4HRISGO41MZhWoKsV4Esqsbrw+DnIYLB1TR+A
         2tU30w2Bub698lk/ohX8PejAdv+LuAcQLdzWLUauEC4vcjEmJQdLJWNrWO/HQYP45sWG
         QJUg==
X-Received: by 10.194.22.69 with SMTP id b5mr4480721wjf.157.1443340441661;
        Sun, 27 Sep 2015 00:54:01 -0700 (PDT)
User-Agent: KMail/1.13.7 (Linux/3.13.0-63-generic; KDE/4.14.2; x86_64; ; )
MIME-Version: 1.0
Content-Type: multipart/signed;
  boundary="nextPart2499097.vdOijjUiRY";
  protocol="application/pgp-signature";
  micalg=pgp-sha1
Content-Transfer-Encoding: 7bit
Message-Id: <201509270953.59256@pali>
Date: Sun, 27 Sep 2015 09:53:59 +0200
From: Pali =?utf-8?q?Roh=C3=A1r?= <pali.rohar@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] DoS attack through Email-Address perl module v1.907 (CVE id request)
To: oss-security@lists.openwall.com

--nextPart2499097.vdOijjUiRY
Content-Type: multipart/mixed;
  boundary="Boundary-01=_XC6BW4Ar+Tf7ajz"
Content-Transfer-Encoding: 7bit


--Boundary-01=_XC6BW4Ar+Tf7ajz
Content-Type: Text/Plain;
  charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hello!

I discovered possible DoS attack in any software which uses=20
Email::Address perl module for parsing string input to list of email=20
addresses.

By default Email::Address module, version v1.907 (and all before) try to=20
understand nestable comments in input string with deep level 2.

Parsing nestable comments is for specially prepared inputs too slow and=20
can cause high CPU load, freezing application and Denial of Service.

Because input string for Email::Address module comes from external=20
source (e.g. from email sent by attacker) it is security problem all=20
software application which parse email messages by Email::Address perl=20
module. For example: RT: Request Tracker, CiderWebmail, ...

In new version v1.908 of Email::Address module, released at Sep 19 was=20
set default value of nestable comments to deep level 1. This is not=20
proper fix, just workaround for pathological inputs with nestable=20
comments. Probably nobody has normal usage for inserting nested comments=20
into email address in To:/Cc: headers...

https://metacpan.org/release/RJBS/Email-Address-1.908

https://github.com/rjbs/Email-Address/commit/3056b7d

Can you assign CVE id for this problem?

In attachment I'm sending example perl script which uses Email::Address=20
module for parsing From header and example input.

On my machine that script runs 5 seconds and it parse just four=20
addresses. Imagine that attacker send email with Cc: header with 10=20
times more addresses and Email::Address module effectively DoS server=20
where is that parser running...

--=20
Pali Roh=C3=A1r
pali.rohar@gmail.com

--Boundary-01=_XC6BW4Ar+Tf7ajz
Content-Type: text/plain;
  charset="UTF-8";
  name="address-line"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="address-line"

\(=C2=AF=C2=AF`=C2=B7.=C2=A5=C2=ABP=C2=AE=C3=8E=C3=91=C3=A7=E2=82=AC=C3=98f=
Th=E2=82=AC=C3=90=C3=85=C2=AEK=C2=BB=C2=A5.=C2=B7`=C2=AF=C2=AF\) <email@exa=
mple.com>, "(> \" \" <)                              ( =3D'o'=3D )         =
                     (\")___(\")  sWeEtAnGeLtHePrInCeSsOfThEsKy" <email2@ex=
ample.com>, "(i)cRiStIaN(i)" <email3@example.com>, "(S)MaNu_vuOLeAmMazZaReN=
imOe(*)MiAo(@)" <email4@example.com>

--Boundary-01=_XC6BW4Ar+Tf7ajz
Content-Type: application/x-perl;
  name="address-line-test.pl"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="address-line-test.pl"

#!/usr/bin/perl
use Email::Address;
my $line = <>;
my @addresses = Email::Address->parse($line);
print "address=$_\n" foreach @addresses;

--Boundary-01=_XC6BW4Ar+Tf7ajz--

--nextPart2499097.vdOijjUiRY
Content-Type: application/pgp-signature; name=signature.asc 
Content-Description: This is a digitally signed message part.

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEUEABECAAYFAlYHoJcACgkQi/DJPQPkQ1Kw5ACfR0gYQMICR6F3wPBStu2s9Z9n
2Y0Al2Uxd5f9VlR1mbGtu4QWTP4UF3E=
=fgU+
-----END PGP SIGNATURE-----

--nextPart2499097.vdOijjUiRY--
