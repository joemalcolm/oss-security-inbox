X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1986" "Friday" "21" "June" "2019" "17:41:49" "+0200" "Yves-Alexis Perez" "corsac@debian.org" "<d49124e0c81f204be7733c397539cc077ccd2a44.camel@debian.org>" "46" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019062115:41:49" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        corsac@debia Jun 21   46/1986  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<20190621095300.GA9934@kroah.com>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190615155740.GA2960@kroah.com>" "<02594cdc8ff7c6ff19a3042d824fb27f9d3302c3.camel@debian.org>" "<20190621095300.GA9934@kroah.com>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15529 invoked by uid 550); 21 Jun 2019 15:42:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15509 invoked from network); 21 Jun 2019 15:42:05 -0000
Message-ID: <d49124e0c81f204be7733c397539cc077ccd2a44.camel@debian.org>
In-Reply-To: <20190621095300.GA9934@kroah.com>
References: 
	<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
	 <20190615155740.GA2960@kroah.com>
	 <02594cdc8ff7c6ff19a3042d824fb27f9d3302c3.camel@debian.org>
	 <20190621095300.GA9934@kroah.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Date: Fri, 21 Jun 2019 17:41:49 +0200
From: Yves-Alexis Perez <corsac@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

On Fri, 2019-06-21 at 11:53 +0200, Greg KH wrote:
> So it's a matter of "do I live with all of the bugs that everyone else
> knows about and how to exploit, or do I live with a potential
> regression?"  That sounds like an easy choice given that the reason you
> should be updating is to resolve all of those known bugs :)

I'm not really talking about potential regressions: I'm talking about real
functional changes that the end-user doesn't expect (nor want) in a stable
release. Backporting is often a pain, but full throttle to latest release a=
lso
has a burden (for the end-user, for the distributor and so on). It really
depends on the project (and I don't want to point fingers, it's not the
point).
>=20
> Regressions always happen, we are human, but there are ways to mitigate
> them (testing, roll-back, preventing developers from not breaking things
> on purpose, etc.)  And projects that do not do this type of work to
> prevent regressions need to learn that they should change, or users will
> go elsewhere.

But then again the question is, who do the work (of backporting, regression
testing, etc.) And again it's not always about bugs, it might very well be
that there's a user interface change requiring a lot of documentation updat=
es
downwards, a dependency chain update or whatever.

There might be good reasons for stability, even besides not introducing new
bugs, that was just my point.

Regards,
- --=20
Yves-Alexis
-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEE8vi34Qgfo83x35gF3rYcyPpXRFsFAl0M+r0ACgkQ3rYcyPpX
RFtnkAgAvxwmpnFT0hKbZViUO1j9BBkNo5KUhUMKs86OKSLGTQQNFfTMBs8EX5t5
1oTXi/uzEMwEYbJcSOzwm3nDavhxJvibGQiRiYgQJaT7ckt0/Pvq1qH1514jWFhj
CTGMu145VGLoYYx1BjAO8eHQFRbvBct+0C8aBYXzq+rTDZXf+7h/OkVu7OQDgNHM
HAsiJ8SnUrXykHAE5sMnywI8atAdD9QAGp0aQ3MABxmKX1ZJ9qS/Qv+OfFEJH44U
G3ZWM9JLwdbmyFOWOrVlhpmpHaFdKTUSC6gpihyR4g5F+KdR5NMnUv3W52S9jzAh
7zFpM8sUtFsY4+Wta7HTaBTh1gATuQ=3D=3D
=3Dzzq2
-----END PGP SIGNATURE-----
