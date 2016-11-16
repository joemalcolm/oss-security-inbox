X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5215" "Tuesday" "15" "November" "2016" "23:11:46" "-0500" "Patrick Galbraith" "patg@patg.net" "<D1821A56-55CB-44C2-93AD-B2A42DF71DCD@patg.net>" "109" "[oss-security] CVE-2016-1249: Out-of-bounds read by DBD::mysql >= version 2.9003" "^Date:" nil nil "11" "2016111604:11:46" "[oss-security] CVE-2016-1249: Out-of-bounds read by DBD::mysql >= version 2.9003" (number mark "U       patg@patg.ne Nov 15  109/5215  " thread-indent "\"[oss-security] CVE-2016-1249: Out-of-bounds read by DBD::mysql >= version 2.9003\"\n") "<A7C52108-09B4-4B32-BEFC-2C309F624B77@patg.net>" ("<6A957F50-5F54-477F-B30D-EF17824AD3EF@patg.net>" "<8D2E47C2-7167-418C-AA92-61947CCE25B2@patg.net>" "<A7C52108-09B4-4B32-BEFC-2C309F624B77@patg.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11474 invoked by uid 550); 16 Nov 2016 04:14:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9748 invoked from network); 16 Nov 2016 04:12:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=patg.net; s=google;
        h=mime-version:subject:from:in-reply-to:date:message-id:references:to;
        bh=tflay5n8VZ4f6qkqak04Ft6kSQ4FJ4dTlinPnrSfBeA=;
        b=ArPfuQiIin8XQ3wjMmw/2JPUY/2EzJ1RbTXruODqqcJjdEEOM0RmfcIj3HwXJyJq65
         gpSkdLiiZZxa+Xjvk2HN+VOUf5ggQthY46nd668jl3s/4qL02YXFPyOHCoi0JlP2C+Gm
         YixwsellKuKUKqL08zKuOzmDnd2iV3c5BjxZI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date
         :message-id:references:to;
        bh=tflay5n8VZ4f6qkqak04Ft6kSQ4FJ4dTlinPnrSfBeA=;
        b=RQQYsSbOZAWwxEjnQJla7QvjuJBmU5K6H4Mk0G99FfhpdKSyExqe3PKE0zwVXc6zRy
         uIthaLLmpz9aYQD1VQaQvs522H1LxALzMVDIyMk2oW0gcUDVoMoKDYatySFU5sStN+r1
         riHkgGs84dIEndWOcXwMLuoAHgk3sH6we24MLisEXa/udWRh6gO3SoNP61Nd4XzGADur
         OWj+JzCkb+Jv9pUBgAvFv0WhOQx7vNfdfajqAB5SYBISf6b6RHqw/tpDvnOuV562Tuw6
         Nl+G0ZE+p518WEIA2FThfueQjRWnrq173CgImmGCdDTEEsyI592mskMEP9R/iwQU92UO
         +Tnw==
X-Gm-Message-State: AKaTC01Xye+VO4RWetYbRdESjq0blhsiWGG2p31pbszQ6+ah8ssfOMaX7FJdIJAZ61HPyg==
X-Received: by 10.237.59.240 with SMTP id s45mr546993qte.234.1479269508738;
        Tue, 15 Nov 2016 20:11:48 -0800 (PST)
Content-Type: multipart/signed; boundary="Apple-Mail=_9FA01B83-2072-4C15-BFD1-6A25176D6C26"; protocol="application/pgp-signature"; micalg=pgp-sha225
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
In-Reply-To: <A7C52108-09B4-4B32-BEFC-2C309F624B77@patg.net>
Message-Id: <D1821A56-55CB-44C2-93AD-B2A42DF71DCD@patg.net>
References: <6A957F50-5F54-477F-B30D-EF17824AD3EF@patg.net> <8D2E47C2-7167-418C-AA92-61947CCE25B2@patg.net> <A7C52108-09B4-4B32-BEFC-2C309F624B77@patg.net>
X-Mailer: Apple Mail (2.3124)
Date: Tue, 15 Nov 2016 23:11:46 -0500
From: Patrick Galbraith <patg@patg.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2016-1249: Out-of-bounds read by DBD::mysql >= version 2.9003
To: oss-security@lists.openwall.com

--Apple-Mail=_9FA01B83-2072-4C15-BFD1-6A25176D6C26
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_987B0494-24F2-4A7C-A35C-CD1645D30295"


--Apple-Mail=_987B0494-24F2-4A7C-A35C-CD1645D30295
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


=3D=3D=3D=3D=3D=3D

SECURITY ADVISORY - Out-of-bounds read by DBD::mysql

Out-of-bounds read by DBD::mysql

A vulnerability was discovered that can lead to an out-of-bounds read
when using server side prepared statements with an unaligned number of
placeholders in WHERE condition and output fields in SELECT expression.

Project name and URL =E2=80=94 DBD::mysql Perl MySQL client driver, http://=
search.cpan.org/~capttofu/DBD-mysql/lib/DBD/mysql.pm <http://search.cpan.or=
g/~capttofu/DBD-mysql/lib/DBD/mysql.pm>
Versions known to be affected =E2=80=94 2.9004 and later (2005 and later)
Versions known to be not affected =E2=80=94 2.9003 and earlier (before 2005)
Version containing Fix =E2=80=94 4.039 and later (current)
Link to fix: https://github.com/perl5-dbi/DBD-mysql/commit/793b72b1a0baa507=
0adacaac0e12fd995a6fbabe <https://github.com/perl5-dbi/DBD-mysql/commit/793=
b72b1a0baa5070adacaac0e12fd995a6fbabe>

Type of vulnerability and its impact =E2=80=94 could lead to out-of-bounds =
read when using server-side prepared statement support in the driver

CVE identifier =E2=80=94 CVE-2016-1249

Planned release =E2=80=94 availability: immediately

Mitigating factors =E2=80=94 This problem is only exposed when the user use=
s server-side prepared statement support, which is NOT default behavior and=
 was turned off back for all drivers per MySQL AB decision in 2006 due to i=
ssues with server-side prepared statements in the server. The behavior of t=
he driver is normally emulated.

Work-arounds =E2=80=94 Use the default driver setting which is using emulat=
ed prepared statements

Credit =E2=80=94 Many thanks to Pali Roh=C3=A1r for discovering and fixing =
the vulnerability.

=3D=3D=3D=3D=3D=3D

--Apple-Mail=_987B0494-24F2-4A7C-A35C-CD1645D30295
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html charset=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; -webkit-line-break: after-white-space;" class=3D""><br class=3D"">=3D=
=3D=3D=3D=3D=3D<br class=3D""><br class=3D"">SECURITY ADVISORY - Out-of-bou=
nds read by DBD::mysql<br class=3D""><br class=3D"">Out-of-bounds read by D=
BD::mysql<br class=3D""><br class=3D"">A vulnerability was discovered that =
can lead to an out-of-bounds read<br class=3D"">when using server side prep=
ared statements with an unaligned number of<br class=3D"">placeholders in W=
HERE condition and output fields in SELECT expression.<br class=3D""><br cl=
ass=3D"">Project name and URL =E2=80=94 DBD::mysql Perl MySQL client driver=
,&nbsp;<a href=3D"http://search.cpan.org/~capttofu/DBD-mysql/lib/DBD/mysql.=
pm" class=3D"">http://search.cpan.org/~capttofu/DBD-mysql/lib/DBD/mysql.pm<=
/a><br class=3D"">Versions known to be affected =E2=80=94 2.9004 and later =
(2005 and later)<br class=3D"">Versions known to be not affected =E2=80=94 =
2.9003 and earlier (before 2005)<br class=3D"">Version containing Fix =E2=
=80=94 4.039 and later (current)<br class=3D"">Link to fix:&nbsp;<a href=3D=
"https://github.com/perl5-dbi/DBD-mysql/commit/793b72b1a0baa5070adacaac0e12=
fd995a6fbabe" class=3D"">https://github.com/perl5-dbi/DBD-mysql/commit/793b=
72b1a0baa5070adacaac0e12fd995a6fbabe</a><br class=3D""><br class=3D"">Type =
of vulnerability and its impact =E2=80=94 could lead to out-of-bounds read =
when using server-side prepared statement support in the driver<br class=3D=
""><br class=3D"">CVE identifier =E2=80=94 CVE-2016-1249<br class=3D""><br =
class=3D"">Planned release =E2=80=94&nbsp;<span style=3D"white-space: pre-w=
rap;" class=3D"">availability: immediately</span><br class=3D""><br class=
=3D"">Mitigating factors =E2=80=94 This problem is only exposed when the us=
er uses server-side prepared statement support, which is NOT default behavi=
or and was turned off back for all drivers per MySQL AB decision in 2006 du=
e to issues with server-side prepared statements in the server. The behavio=
r of the driver is normally emulated.<br class=3D""><br class=3D"">Work-aro=
unds =E2=80=94 Use the default driver setting which is using emulated prepa=
red statements<br class=3D""><br class=3D"">Credit =E2=80=94 Many thanks to=
 Pali Roh=C3=A1r for discovering and fixing the vulnerability.<br class=3D"=
"><br class=3D"">=3D=3D=3D=3D=3D=3D</body></html>=

--Apple-Mail=_987B0494-24F2-4A7C-A35C-CD1645D30295--

--Apple-Mail=_9FA01B83-2072-4C15-BFD1-6A25176D6C26
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----

iFYEARELAAYFAlgr3IMACgkQqfzsjDO2F8O6ygDgkzVp7CaHeCXBcDUiSMH6aFnc
meGw+8i2/UznywDeOI/MU3w0fVjFT9glFVs0nvUPUXqNPON7G3627g==
=KU2m
-----END PGP SIGNATURE-----

--Apple-Mail=_9FA01B83-2072-4C15-BFD1-6A25176D6C26--
