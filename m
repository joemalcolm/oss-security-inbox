X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5086" "Friday" "14" "December" "2018" "08:27:24" "-0500" "Brad Spengler" "spender@grsecurity.net" "<20181214132723.GA27168@grsecurity.net>" "105" "Re: [oss-security] Linux kernel: userfaultfd bypasses tmpfs file permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)" "^Cc:" nil nil "12" "2018121413:27:24" "[oss-security] Linux kernel: userfaultfd bypasses tmpfs file permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)" (number mark "U       spender@grse Dec 14  105/5086  " thread-indent "\"Re: [oss-security] Linux kernel: userfaultfd bypasses tmpfs file permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)\"\n") "<20181214130755.GA24633@openwall.com>" ("<CAG48ez37UKxsRzpkxa8HbrWGAXWQ7H9OYjGzkaZgEmzY+QOF2Q@mail.gmail.com>" "<20181212142415.GA11037@openwall.com>" "<da9e29c39fae03caa21b6fa915009b4f7f2ec0cf.camel@debian.org>" "<20181214130755.GA24633@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25961 invoked by uid 550); 14 Dec 2018 14:36:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19613 invoked from network); 14 Dec 2018 13:28:07 -0000
Message-ID: <20181214132723.GA27168@grsecurity.net>
References: <CAG48ez37UKxsRzpkxa8HbrWGAXWQ7H9OYjGzkaZgEmzY+QOF2Q@mail.gmail.com>
 <20181212142415.GA11037@openwall.com>
 <da9e29c39fae03caa21b6fa915009b4f7f2ec0cf.camel@debian.org>
 <20181214130755.GA24633@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AhhlLboLdkugWU4S"
Content-Disposition: inline
In-Reply-To: <20181214130755.GA24633@openwall.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Jann Horn <jannh@google.com>
Date: Fri, 14 Dec 2018 08:27:24 -0500
From: Brad Spengler <spender@grsecurity.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: userfaultfd bypasses tmpfs file
 permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)
To: oss-security@lists.openwall.com

--AhhlLboLdkugWU4S
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

I really wish such statistics would stop being cited as evidence of anythin=
g,
since the ingrained bias of CVE allocation (which is generally not done by
upstream itself, and is instead mostly done by the distros for issues that
affect their older kernels) inherently changes the range of conclusions that
can be reached.  These statistics and the "5 year lifetime" of Linux kernel
bugs are simply myths.  The original "5 year lifetime" analysis was wrong
from the start and already pointed out back then
(https://lwn.net/Articles/410674/), but people continue to cite it.

Garbage in, garbage out -- can we please stop feeding this pseudo-science?

-Brad

On Fri, Dec 14, 2018 at 02:07:55PM +0100, Solar Designer wrote:
> On Thu, Dec 13, 2018 at 09:02:12PM +0100, Yves-Alexis Perez wrote:
> > On Wed, 2018-12-12 at 15:24 +0100, Solar Designer wrote:
> > > A question to ask may be: out of Linux kernel vulnerabilities being
> > > patched, are there more high and critical overall severity (e.g., as
> > > risk impact times risk probability) vulnerabilities found in "too
> > > recent" kernels than there are high and critical severity untracked
> > > vulnerabilities (also or instead) affecting "sufficiently old" kernel=
s?
> >=20
> > Data collected by Kees and regularly updated might help here. See=20
> > https://events.linuxfoundation.org/wp-content/uploads/2017/12/Overview-=
and-Recent-Developments-Kernel-Self-Protection-Project_Kees-Cook.pdf#%5B%7B=
%22num%22%3A22%2C%22gen%22%3A0%7D%2C%7B%22name%22%3A%22XYZ%22%7D%2C0%2C446.=
4%2C0%5D
> > for the last edition (sorry for the weird anchor, in case it breaks it'=
s on
> > slide 5)
>=20
> Thanks!  Slide 4 says average lifetime among 3 critical issues is 5.3
> years, and among 79 high severity issues is 5.6 years.  (And then
> there's over a thousand of medium and low severity issues.  Ouch.)
>=20
> However, to answer my question above we need median and not average.
> For example, (1, 2, 3, 16) has an average of 5.5 years, but in that
> example by choosing a kernel version that is 2.5 years old, which is way
> below the average, we'd nevertheless avoid half of the issues.
>=20
> Slide 5 is in fact more relevant: it's an illustration showing
> "critical & high CVE lifetimes" against kernel versions.  Per this
> illustration, we can see that my example of 3.10 (as RHEL7's base
> kernel) is hit by many low-numbered issues, but is hit by only two in
> the 67 to 82 range, which is 1/8 or 12.5% of issues found that recently.
> This is consistent with what I said about it having needed to mature
> "for a few years and a few hundred revisions" after RHEL7 was first
> released.  I think it became mature enough just recently.  It didn't
> feel mature enough to me when I ran Trinity for a few days (with many
> restarts) on a RHEL7-derived system two years ago.  I hope those crashes
> have since been rediscovered with superior fuzzers allowing for easy
> reproduction, and patched.  We've seen major improvement in fuzzing.
>=20
> Somehow Nicholas' reply below isn't part of the same thread (no proper
> In-Reply-To header), so let me bring it to the thread:
>=20
> https://www.openwall.com/lists/oss-security/2018/12/13/14
>=20
> On Thu, Dec 13, 2018 at 06:07:32PM -0500, Nicholas Luedtke wrote:
> > We have also been compiling and presenting the CVEs on a per stream
> > basis at https://www.linuxkernelcves.com because the question of which
> > upstream stable branch to choose has been asked on a enterprise level
> > many times. Of course, once you choose once you still have to track the
> > changes (or lack there of).
>=20
> This is also very interesting and relevant.  As the website (and GitHub
> README.md) acknowledges:
>=20
> "This is currently autogenerated and will go through testing before any
> promises of accuracy are made.  The eventual goal would be to have a
> community curated list of CVEs along with when the code was introduced
> and when it was fixed."
>=20
> Alexander

--AhhlLboLdkugWU4S
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBCgAGBQJcE6+0AAoJEETRwPglJf5J8p4QAJXox+guvh6MTnb3FoFUJnyM
yrhr4W/z8ns5slRWAMmBVgw3ny4evmw1yBSW8xI667GY7lPNVZKCV8FeksUuTSzE
uQRb/HvMeLtAiqU0OEUyy6EDNthgMyiTotiwpP2KWWieaf3aFb+b2rflU7+jRd4O
5PyrbHjBgSLvgT5RQvxhBLmBH3g+i/MtJSL/Um48T86egt7+H4lwp+J/TlBDgt51
PXIMt3CyQlyKgrNJowXzKAg7+2tejC55S267qDjGC+a977j9xrQjOaEyWEu6L4Yq
SnGw8QcTaMl/lKn3qvYZTtNha1446wCLVdmArMktx4X1ynCgC+jZ5RDVL3BweNRt
IF4UXLYLORK+B8Clu6ka2xbyO06dMw+Hm71nfO/0d8+l4rPyeRTZoKBODUazznMv
jFSXTCIQeTa0+ZuGRx+RGy2sjes4gQRbOzSOJQ5EvdZ9DsLXWzqs4X5NQhyHYhpw
ET/Fb9RyiXVQarQlJnfmqDG9YkgPCLeX65AV9ItBKNnPVhjBlNXqdOf4sS9k1LI/
rHDJJ15hYyPGG+/OyfaXakuyiRypzHCyqKU2PyVK/anisKjUzsx3nri2dxJ3sW/+
hJgxpHmIufi2n1UpjcuBCcZMp4fGm0qcE1Tv3bCYVrVukPgw+9Fz6qj/l2MO1z2m
LIAHRZ51DEH66wU2eIca
=ls6l
-----END PGP SIGNATURE-----

--AhhlLboLdkugWU4S--
