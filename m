X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3902" "Tuesday" "14" "November" "2017" "07:32:28" "-0500" "Brad Spengler" "spender@grsecurity.net" "<20171114123228.GA18751@grsecurity.net>" "91" "Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver" nil nil nil "11" "2017111412:32:28" "[oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver" (number mark "U       spender@grse Nov 14   91/3902  " thread-indent "\"Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver\"\n") "<20171114073720.GA27647@kroah.com>" ("<20171113151524.GA16983@kroah.com>" "<E1eEPJ5-0006vL-TF@rmmprod07.runbox>" "<20171114073720.GA27647@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12286 invoked by uid 550); 14 Nov 2017 14:36:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9222 invoked from network); 14 Nov 2017 12:32:40 -0000
Date: Tue, 14 Nov 2017 07:32:28 -0500
From: Brad Spengler <spender@grsecurity.net>
To: oss-security@lists.openwall.com
Cc: Vladis Dronov <vdronov@redhat.com>
Message-ID: <20171114123228.GA18751@grsecurity.net>
References: <20171113151524.GA16983@kroah.com>
 <E1eEPJ5-0006vL-TF@rmmprod07.runbox>
 <20171114073720.GA27647@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="RnlQjJ0d97Da+TV1"
Content-Disposition: inline
In-Reply-To: <20171114073720.GA27647@kroah.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due
 to a race condition in [legousbtower] driver

--RnlQjJ0d97Da+TV1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Greg,

We're all aware of your objection, you bring it up every time=20
anyone mentions Linux kernel security on this list.  However,=20
please remember that all the people contributing on this list are=20
taking on the responsiblity you and the majority of other upstream=20
developers have abdicated.

We get it, every time there's some bug mentioned on here that=20
you've already fixed, you want the entire world to know.  Only you=20
apparently don't want the world to know about the bug at any time=20
before then. Vladis' original mail made it clear the bug was=20
already fixed with the included upstream fix link, so your=20
follow-up was unnecessary.  As I've already demonstrated many=20
times, there are plenty of vulnerabilities you haven't fixed.  The=20
reason for that is largely due to the lack of coordinated=20
recognition of security flaws which comes from the very top of=20
leadership.  Another is probably that there are just so many flaws,=20
and it's simply an accepted externality of the Linux development=20
process.

If you truly believe there is no uniqueness to security bugs, I=20
would advise you to shut down security@kernel.org.  I would also=20
ask that you come up with a better solution to the problem than=20
demanding people run the latest version of Linux. According to my=20
current records someone taking that advice would be exposed to a=20
bug that can brick systems that seems nowhere close to resolution,=20
and one that makes it impossible to run KVM guests on AMD (which went
unfixed for 3 months, and the current fix isn't cc'd for stable --
makes me wonder how much testing -rc really gets).

You might want to focus your time on getting your own house in=20
order instead of constantly pestering the people on this list -- we=20
work in the trenches and aren't swayed by nonsense arguments that=20
have no viable solution attached.

Thanks,
-Brad

On Tue, Nov 14, 2017 at 08:37:20AM +0100, Greg KH wrote:
> On Mon, Nov 13, 2017 at 07:42:27PM -0500, David A. Wheeler wrote:
> > On Mon, 13 Nov 2017 16:15:24 +0100, Greg KH <greg@kroah.com> wrote:
> > > It's the arbitrarily nature here that I am curious about, it feels li=
ke
> > > it should be "all or nothing", for CVEs to mean much here.  Right now=
 it
> > > seems like it is just, "all that we care to track"?  :)
> >=20
> > "All" would be awesome, though unlikely.  But even if that's the eventu=
al goal,
> > "good starts" are still good starts.
>=20
> But really, this isn't even a "good start", it's identifying a bug fixed
> over a year ago for a kernel that only one company seems to care about
> because they are _not_ following the recommended upstream stable kernel
> patches because they "know better" :)
>=20
> That's my objection here.
>=20
> thanks,
>=20
> greg k-h

--RnlQjJ0d97Da+TV1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBCgAGBQJaCuJUAAoJEETRwPglJf5JMIsP/1FPYWAHLmmOun4niROPVouE
VoCzW0kaPYKXALVhJ2rLoRe3H7ELEYwWwGa3pZEQ5q+x6oAdKN1MfTWr3NADGcjN
jDWJPLlCFqn0CXBvD36pIZCD93qZpmhJWHebcBt3K4myMjJNDaI109v5nEft6XYB
CNAhqI3+V/1Z08EKK7gaka0ut0/1onMDWichOvjnPIQIKYkW3B2nA6v4uTsaGF/t
sQej05BchIq1Yum5fqAu8vfvMPYkfyML7N+yOr4K7c/LKslgnATTLMVvXSQviWIR
psA7HM8iKXJ4EHAo3m/d7PO4lxArb4nYzPmkHfJjNXHiUIMpfE6SxJP1rRJOXBED
EbZlyF/hxlcKxIexDqM3Rn13WBfntx/NqCIMBCfG2zcIeEqOEfqoU/8RJiRgWgwJ
AxaiIRKOS+KiqkUJ2yqLtZ4MQpGA8lvT9XL7ojTTBI8kxxI3QE4lFrEgNwGFnOMH
Rla2PssFMLuuyn3v+uuINXZfpQSQn9maEHHRN6HF9pEd8ouJRIq2JdUWZ2MAgRVG
QxlT9SxtlvhDOeJ+K3EjgLaKaI7kovJOf1/1CuA//WfNccr3A3ycz12L+nzSUKxk
Ir8iTiJf7XF2REQo6gO8/0zDn5a/cRCYCoXOdf7DN7sbt4eAeA16YfuuDhAspqcU
b0ViYlexEVMx+ruS1a01
=+o9n
-----END PGP SIGNATURE-----

--RnlQjJ0d97Da+TV1--
