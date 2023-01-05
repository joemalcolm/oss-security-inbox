Received: (qmail 30248 invoked by uid 550); 5 Jan 2023 16:41:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32456 invoked from network); 5 Jan 2023 16:03:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1672934596; x=
	1673020996; bh=xHk1zU7pUhMlSDgpqoWumoWhOJcc9TT5amSIMZ40Ri8=; b=F
	gZeiv8XlSeZ+qmR4LpXGSvGS1b5zDe2hmsknvN8KrG0lC8cK1F2z+9wmi1rYh8Qf
	kNSkU9GCIpOl9bXIvFCGAiKXxmW9UCPE5adlvwX/k9tvK3pltdgaFnN4x7n89FtK
	jJlaVV0I4AArPbRpTjM22cC/JEwSUcVmCPYXbt+7b2TtOjIaRXme+3kVu6FpCBf/
	v7RJtlt0gpwrHKMUy/MacfGVgG7S9ryK5AavmbK7RQwDlstsaHpozEL3ZG5HslE2
	4JTqsBiPVIWSLJ9qD3YiAY7TrADtkDK0f9/SIV/1MEYW478YUyvM7xF3ky9IlAK7
	XaTOkeE7KJ9KhzB3OgKQA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1672934596; x=1673020996; bh=xHk1zU7pUhMlSDgpqoWumoWhOJcc
	9TT5amSIMZ40Ri8=; b=nx5INfrSYqU8sEhAw3AMCEso/tnVX/+J+5mKxm1/G7Z0
	pFJBCHFEa+Ldp/O/YZ4r+dT6bQJdRYwMMGqOrnsEPqQ+U8YaAzFAw3MxBEdsWLyS
	QTlq0NiDJ8hHN9IVMjHsb5yxjUGORwGJXi2mkri+5wLmZMAoITgoMLr0a0kTqY1Q
	1IEng384/L68PYvwb/GDBCuUIe1EuPfkIHx73Vw2dmDpYIIWK/L9XwaNslDrI54E
	RbTnGIyOV4iDzTBaEbOf4oLQ49P18eOZ8YD+bYF1XV5W+lit2+0pxUXD5Y8zdcsd
	Een+jKCqaURlM8hT7GBEqC3CMB28gqHTHsdT+0+H+Q==
X-ME-Sender: <xms:w_S2YyCh_0V5Ifgq1axdECiVpwGaU-A26ZQOU4TCl1YR9xbP5mgGvQ>
    <xme:w_S2Y8h2EApraiV51zu-YiOFk3WANSObakCgmBZ3UUL4YXHLjM5-i-qG8Mtep_vYU
    1Fc3RBq05So-DI>
X-ME-Received: <xmr:w_S2Y1mbevuC-AeY8k0UheCVSR6RWgv53u9WWeSwBBxcZdYXM84dH2lENumJ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrjeekgdekhecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecufghrlhcuvffnffculddqhedmnecujfgurhepfffhvf
    fukfhfgggtuggjsehgtderredttdejnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgs
    vghnohhurhcuoeguvghmihesihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqe
    enucggtffrrghtthgvrhhnpeegheejgffhheekhfdvfefhkeehfeejgeffveetteeftefh
    vdevheehveeileetteenucffohhmrghinhepuggvsghirghnrdhorhhgpdhurhguhhhrrd
    hfrhdpuhgsuhhnthhurdgtohhmpdhnihhsthdrghhovhenucevlhhushhtvghrufhiiigv
    pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghmihesihhnvhhishhisghlvghthh
    hinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:w_S2YwyHtePHOyvaJH746pmIYAHEb_52O7j_UhMx95frq2jPDGC36Q>
    <xmx:w_S2Y3QM8y76W2feAqrSI_OeTzsABD_wHl7JRIegPDQSFJBAm4kfNQ>
    <xmx:w_S2Y7Yhg-7-Ys2YypJBIeb3zD5yrh0Me9MfuhEGSsexUIPTTlaVXg>
    <xmx:xPS2Y-cP94A9WjvvBoam3RNmQslkaV66_5BY_Jbwqpp_5ZujchI5Bw>
Feedback-ID: iac594737:Fastmail
Date: Thu, 5 Jan 2023 11:02:50 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <Y7b0rzSF7dF5Hgdu@itl-email>
References: <07c41f5e-dbe3-4ff4-0e2f-386776a07370@free.fr>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WJm0AHlrgEGxq70N"
Content-Disposition: inline
In-Reply-To: <07c41f5e-dbe3-4ff4-0e2f-386776a07370@free.fr>
Subject: Re: [oss-security] Code execution through MIME-type association of
 Mono interpreter and security expectations of MIME type associations

--WJm0AHlrgEGxq70N
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 5 Jan 2023 11:02:50 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Code execution through MIME-type association of
 Mono interpreter and security expectations of MIME type associations

On Wed, Jan 04, 2023 at 11:47:12PM +0100, Gabriel Corona wrote:
> On Debian and derivatives, the mono-runtime-common package associates
> the application/x-ms-dos-executable MIME type with the Mono CLR
> interpreter [1]. This makes it very easy for an attacker to trigger
> arbitrary code execution through programs such as Chromium [2], Firefox
> [3] and Thunderbird [4] when the Mono packages are installed.
>=20
> This has been fixed in package 6.8.0.105+dfsg-3.3 [5] which is available
> in Debian testing, Debian Sid and Ubuntu Lunar (23.04). This has
> currently not been fixed in any stable distribution.
>=20
> On Firefox and Thunderbird, a user interface is used to let the user
> confirm which program to use to open the file. In this case, we can
> trick the user into thinking he is about to open the file with a
> innocuous program by serving the file with a special MIME type such as
> inode/directory or x-scheme-handler/trash [3,4]. These MIME types are
> typically associated with a file manager. When called this way, several
> file managers will try to open the file based on MIME-type associations
> (where the MIME-type is inferred either from the file name extension or
> from the file content). Thunar, PCManFM, PCManFM-Qt were found to
> exhibit this behavior.
>=20
> For Thunar, this behavior has been fixed in v4.16.7 and v4.17.2 [7].
>=20
> We can use a visually confusable file name such as REPORT.=CE=A1DF (notice
> the non-ASCII first letter in the extension) in order to trick the user
> into thinking he is opening a "safe" file type while disabling MIME-type
> detection based on the file name extension.
>=20
> Moreover, in Firefox and Thunderbird [8], we can corrupt the file
> association database (handlers.json) in order to display a bogus file
> type description associated with the inode/directory or x-scheme-
> handler/trash MIME type. This is done by first serving a "safe" file
> type (such as a PDF) with this MIME type.
>=20
> This begs several questions about file associations:
>=20
> * Is it legitimate to register file associations for programs
>   which can exbibit arbitrary code execution such as unsandboxed
>   program interpreters?

No.  Failure to do this is a major cause of security problems in
Microsoft Windows.

> * When a program (such as a file manager) is called with a regular file
>   it does not handle, should it spawn a new program for handling the
>   file without user confirmation (as it may be exploited for file type
>   spoofing)?

No, it should not.

> * Should a client program reject special/bogus MIME types such as
>   inode/* and x-scheme-handler/* as they are not expected to be
>   used in this context (and it may be exploited for file type spoofing)?

Yes, and there needs to be a database of such types.

> I would consider the following behaviors to be vulnerabilities:
>=20
> * Association of the Mono interpreter with a MIME type in the
>   Debian/Ubuntu packages;

I agree.

> * Thunar delegates to MIME type associations when opened with a regular
>   file (CVE-2021-32563);

I agree.

> * PCManFM delegates to MIME type associations when opened with a regular
>   file;

I agree.

> * PCManFM-Qt delegates to MIME type associations when opened with a
>   regular file;

I agree.

> * Firefox and Thunderbird accept "special" MIME types (inode/* and
>   x-scheme-handler/*) from remote servers;

Not sure what you mean by =E2=80=9Caccept=E2=80=9D.  Do you mean that downl=
oad should be
aborted?

> * File type spoofing by corrupting the Firefox and Thunderbird
>   handlers.json database.

I agree.

> [1] https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D972146
> [2] https://www.gabriel.urdhr.fr/videos/chromium-filetype-spoofing-poc.ogv
> [3] https://www.gabriel.urdhr.fr/videos/firefox-filetype-spoofing-poc.ogv
> [4] https://www.gabriel.urdhr.fr/videos/thunderbird-filetype-spoofing-poc=
.ogv
> [5] https://packages.debian.org/buster/mono-runtime-common
> [6] https://packages.ubuntu.com/search?keywords=3Dmono-runtime-common&sea=
rchon=3Dnames&suite=3Dall&section=3Dall
> [7] https://nvd.nist.gov/vuln/detail/CVE-2021-32563
> [8] https://www.gabriel.urdhr.fr/videos/firefox-filetype-spoofing-poc2.ogv

Qubes OS should probably register a catchall handler for special MIME
types that does nothing.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--WJm0AHlrgEGxq70N
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmO29K4ACgkQsoi1X/+c
IsEdyA//RNTCg9yMd5mymkQO8ZJ+26pCUp2H0nVp94bEiKcanUoA0rBL/QHOv/ZB
tpyj0gCQXFPTG67T4yrdVJU2ZGlZFZOUVe0+MULDiHgXopRPF4pKJ8Qcm0L12db0
qBlu/UZWm3ctmQzHh8YC0gRfbHRCaaKZ9sSTxNOdyGHLzc+5G4XjJGldnSv38OYo
37cEKRfQBUuV5f0hwZbq9FstMDv5kne0e9hoKS5NHSXIhQ8gf3CrA3BugTlt91p7
mbUgitw1KC07gRn+eE3n7/bv90n02ZtOojainwGmK6r0U0GDTmmomTK/v5yYCF+g
yHMG0yswwili/qy7CGHp/W2f5233VVFlvBvI9/TzVVkq53tSBx8jCzpWQ+3xIi7f
joQfOC1U1MZ17l1QKQLWjSBlXDb42Q9MHQHJclPei1lC4gF1DyiQsVFm/gj3gm75
3PjjkMKgIBxtCRcItOuJd2jvKp5GUd6kL0dC20/b1+mP8mopyey6UVebF/4sa+qL
+3x+n1W4OdzCrsWJeOy5j3nX7bLaxfLJZqZSjPlBhEd27j31WR05ZI8NdZCY8RIp
pU0zm+jCG1iq4AX+xkXeRIcW9Bt8K7LD1toY2aCUJKPf7buaX0k16Gad0Addf7fv
E7hAD5M7ecwjfjusQ0Mdhm/XUyQC4SMHqsJeghudjTEPbJoj9wo=
=QpLU
-----END PGP SIGNATURE-----

--WJm0AHlrgEGxq70N--
