Received: (qmail 30055 invoked by uid 550); 11 May 2026 14:58:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13601 invoked from network); 11 May 2026 07:08:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1778483299;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=WQgxp44KNloOf1Klnf3FwTMcWUykmyj0JuyLIdN/aXE=;
	b=ZNRYxyDYxcNC5nn165ZyV55dLI1gT2xOq46uWi9duN2cSlNLhrl2P/k+xWlFMaCIPdx8GH
	+GFyXrDm1fid+rgaqXf2oTguaPxTcPWwdHzzGXRsMhkVNybTE8WOTlJcO9SvCdF4E8TIA7
	IM2xLHuzV3ndMWn2V6HSjH4n5FZphwEKA7Y5orFeKbXNmWD4rjUaQWY6Cx30co/7uv9LJc
	aKpLbhCjzgcY9VdRBPyP5a6PtJgpgHj5m0nERhUSRSS27HwZyRnpMlXZ62f7wowDx0ysEL
	IZTFnNTrQNuyAvii3FaAkaLco4ceM8KsL5Tn5XMzcYjGug3JSulYNPttd70osg==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of stig@stig.io designates 2001:67c:2050:b231:465::1 as permitted sender) smtp.mailfrom=stig@stig.io
From: Stig Palmquist <stig@stig.io>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_2067CC21-357E-4CC0-8797-67CB202BA7DC"
Mime-Version: 1.0
Date: Mon, 11 May 2026 09:08:07 +0200
References: <411A28FF-F12F-46AD-9A96-E4764E447C2A@stig.io>
To: oss-security@lists.openwall.com
In-Reply-To: <411A28FF-F12F-46AD-9A96-E4764E447C2A@stig.io>
Message-Id: <14D15F41-A2F7-4929-A77B-C89A9A168D5E@stig.io>
Subject: Re: [oss-security] CVE-2026-8177: XML::LibXML versions through 2.0210
 for Perl read out-of-bounds heap memory when parsing XML node names
 containing truncated UTF-8 byte sequences

--Apple-Mail=_2067CC21-357E-4CC0-8797-67CB202BA7DC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

> On 10 May 2026, at 22:55, Stig Palmquist <stig@stig.io> wrote:
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> CVE-2026-8177                                        CPAN Security Group
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
>        CVE ID:  CVE-2026-8177
>  Distribution:  XML-LibXML
>      Versions:  through 2.0210
>=20
>      MetaCPAN:  https://metacpan.org/dist/XML-LibXML
>      VCS Repo:  https://github.com/cpan-authors/XML-LibXML
>=20
>=20
> XML::LibXML versions through 2.0210 for Perl read out-of-bounds heap
> memory when parsing XML node names containing truncated UTF-8 byte
> sequences
>=20
> Description
> -----------
> XML::LibXML versions through 2.0210 for Perl read out-of-bounds heap
> memory when parsing XML node names containing truncated UTF-8 byte
> sequences.
>=20
> A node name ending in the middle of a multi byte UTF-8 sequence causes
> the parser to read past the end of the input string into adjacent heap
> memory.
>=20
> Any Perl process that passes attacker controlled strings to
> XML::LibXML's DOM node-name methods can reach this path on the default
> API. The likely consequence is a crash, causing denial of service.
>=20
> Problem types
> -------------
> - CWE-125 Out-of-bounds Read
>=20
> Solutions
> ---------
> Upgrade to a future XML::LibXML release, or apply the upstream patch.
>=20
>=20
> References
> ----------
> https://github.com/cpan-authors/XML-LibXML/issues/146
> https://github.com/cpan-authors/XML-LibXML/commit/15652bd905a6c9dda59a81b=
14d4766adbbae2ea8.patch
>=20
> Timeline
> --------
> - 2026-05-08: Upstream fix merged.


Correction: The timeline for 2026-05-08 stated "Upstream fix merged". This =
was incorrect.=20
On that date a patch was submitted upstream via PR #149, but it has not yet=
 been merged.

https://github.com/cpan-authors/XML-LibXML/pull/149


--Apple-Mail=_2067CC21-357E-4CC0-8797-67CB202BA7DC--
