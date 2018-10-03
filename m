X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1569" "Wednesday" "3" "October" "2018" "13:21:40" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20181003202140.GH25942@hunt>" "46" "Re: [oss-security] arm64 Linux kernel: Privilege escalation by taking control of the KVM hypervisor" "^Date:" nil nil "10" "2018100320:21:40" "[oss-security] arm64 Linux kernel: Privilege escalation by taking control of the KVM hypervisor" (number mark "        seth.arnold@ Oct  3   46/1569  " thread-indent "\"Re: [oss-security] arm64 Linux kernel: Privilege escalation by taking control of the KVM hypervisor\"\n") "<87y3bf1pry.fsf@mid.deneb.enyo.de>" ("<20181002160713.GE23872@arm.com>" "<20181002162549.rl7hytgtxkmhr7mm@tunkki.bugs.fi>" "<87y3bf1pry.fsf@mid.deneb.enyo.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13714 invoked by uid 550); 3 Oct 2018 20:21:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13695 invoked from network); 3 Oct 2018 20:21:54 -0000
Message-ID: <20181003202140.GH25942@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20181002160713.GE23872@arm.com>
 <20181002162549.rl7hytgtxkmhr7mm@tunkki.bugs.fi>
 <87y3bf1pry.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1EKig6ypoSyM7jaD"
Content-Disposition: inline
In-Reply-To: <87y3bf1pry.fsf@mid.deneb.enyo.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Date: Wed, 3 Oct 2018 13:21:40 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] arm64 Linux kernel: Privilege escalation by
 taking control of the KVM hypervisor
To: oss-security@lists.openwall.com

--1EKig6ypoSyM7jaD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 03, 2018 at 08:57:05AM +0200, Florian Weimer wrote:
> > On Tue, Oct 02, 2018 at 05:07:14PM +0100, Will Deacon wrote:
> >> There has not yet been a CVE requested for this (mainly because I don'=
t know
> >> how to do it).
> >
> > Please use https://cveform.mitre.org/ thanks.
>=20
> Would DFW work as well?
>=20
>   <https://github.com/distributedweaknessfiling/cvelist>
>=20
> I'm asking because the Rust people tried to get an ID from there, but
> apparently never got a reply.

In my experience the MITRE form is significantly more reliable and faster
mechanism than the DWF form.

I realize this is perhaps a chicken-and-egg problem, where DWF might not
be fast until they get enough traffic that they have to be fast, but MITRE
is fast *today*, so any individual CVE requestor is probably better suited
to use MITRE.

Thanks

--1EKig6ypoSyM7jaD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAlu1JNEACgkQ8yFyWZ2N
LpfcUgf9F7JoHNAu3wORF4dYt27tA2+vjC0e7dNY/Fb6U6Jv5PnlRk3yBy9SzQBj
ur6xi83mg/fUzQdqCi63S6HWji7/NcmX5jvyKXBm1Rl9TSIpC9y0vPgAMYGpRgiB
AGWAwi1NaIzlKkxnoNCmJhNZVnRSJY2kkRx1zdWliCWlFRIAfKjmlQYb2yLZYzsY
CdKF9SPIogjEgvAt0oCW+G7hTFnRxgvDf/kJRKIcR8xup16IF/hMuLQ1TlLVINjc
r8he6NB8YGNULLafFC9p4JsA+XhT5S6SoY8XXM+WYzGc2IrkLagideZdtc26JvZ8
+ae0T+YhzR5R2oSJMsAkQo7GdmebQw==
=8/Rf
-----END PGP SIGNATURE-----

--1EKig6ypoSyM7jaD--
