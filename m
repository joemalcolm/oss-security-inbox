X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1898" "Friday" "21" "June" "2019" "11:32:05" "+0200" "Yves-Alexis Perez" "corsac@debian.org" "<02594cdc8ff7c6ff19a3042d824fb27f9d3302c3.camel@debian.org>" "46" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019062109:32:05" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        corsac@debia Jun 21   46/1898  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<20190615155740.GA2960@kroah.com>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190615155740.GA2960@kroah.com>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15900 invoked by uid 550); 21 Jun 2019 09:32:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15877 invoked from network); 21 Jun 2019 09:32:23 -0000
Message-ID: <02594cdc8ff7c6ff19a3042d824fb27f9d3302c3.camel@debian.org>
In-Reply-To: <20190615155740.GA2960@kroah.com>
References: 
	<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
	 <20190615155740.GA2960@kroah.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Date: Fri, 21 Jun 2019 11:32:05 +0200
From: Yves-Alexis Perez <corsac@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

On Sat, 2019-06-15 at 17:57 +0200, Greg KH wrote:
> On Sat, Jun 15, 2019 at 11:49:03AM -0400, Alex Gaynor wrote:
> > I do not have a solution to this problem. I wanted to raise awareness of
> > it, in the hope that it would start a discussion which might come to a
> > solution.
>=20
> Why not just do a simple "you must upgrade to the latest version X to
> fix a bunch of bugs" type of announcement?  No need to worry about crazy
> backports and cherry-picking, that always fails in the end.

I sympathize with this view, and I think we need to get better at updating,
but I really think not all projects can be =E2=80=9Csafely=E2=80=9D just up=
dated to the latest
version. End-users and IT admins still value stability and regressions is
still a thing in a lot of cases. And once a regression is introduced, it's =
not
always a short time before it's fixed upstream.

And before reaching the end-user, some project latest versions might depend=
 on
a lot of =E2=80=9Clatest version=E2=80=9D of other projects. In some case t=
he dependency tree
might involve large scale changes affecting the whole system.

So sure, in some cases it makes sense to just update to latest versions, but
I' m really not sure it's the general case. I'm not entirely satisfied by t=
he
situation either but I don't have a magic way to fix it.

Regards,
- --=20
Yves-Alexis
-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEE8vi34Qgfo83x35gF3rYcyPpXRFsFAl0MpBUACgkQ3rYcyPpX
RFv88gf+NZG3Q3Q0s8gmEbgS76y8umnGk6DR3dHgstPP1A2pnCBhDhauQbNX/UKZ
pLvdSMJw1LrlbNhfGtuKjuF9HqefulWfO2ex2l0ljmXbLuG0qYzehgAGvFCkv142
mZZW+yMDAB/O6gaDtBxhaOfKeK1h+oVE9H4u3Nu+AmyL17CW2DVrVYoBWXxsR5C6
RFITOyR24nc+gkLvW1IsIWM8S/Jfe/cTHvXdALYLAKD8EwTTasy3k1d3e5bHp6HW
j35ERngM+5fcxgVGbBNRQh5ANKsrIWjxqtqH1ndJV4hSfdZTmso/cyztQnL7LZoy
XG8fn/neQ2/GNlXdzB99anO6JQLoAQ=3D=3D
=3DsAOD
-----END PGP SIGNATURE-----
