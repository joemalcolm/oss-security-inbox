X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1820" "Monday" "16" "November" "2020" "23:11:42" "+0000" "Seth Arnold" "seth.arnold@canonical.com" "<20201116231142.GA2956665@millbarge>" "53" "Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" nil nil nil "11" "2020111623:11:42" "[oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" (number mark "U       seth.arnold@ Nov 16   53/1820  " thread-indent "\"Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros\"\n") "<87eekt9l5k.fsf@gnu.org>" ("<20201113133331.48185f9f@computer>" "<20201114115850.GB5193@suse.de>" "<E25813A6-081D-4B42-AD7E-8D38F5320D7E@dwheeler.com>" "<87eekt9l5k.fsf@gnu.org>") nil nil nil nil nil nil nil "Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13380 invoked by uid 550); 16 Nov 2020 23:11:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13361 invoked from network); 16 Nov 2020 23:11:56 -0000
Date: Mon, 16 Nov 2020 23:11:42 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <20201116231142.GA2956665@millbarge>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20201113133331.48185f9f@computer>
 <20201114115850.GB5193@suse.de>
 <E25813A6-081D-4B42-AD7E-8D38F5320D7E@dwheeler.com>
 <87eekt9l5k.fsf@gnu.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="opJtzjQTFsWo+cga"
Content-Disposition: inline
In-Reply-To: <87eekt9l5k.fsf@gnu.org>
Subject: Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux
 distros

--opJtzjQTFsWo+cga
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 16, 2020 at 08:06:15PM +0100, Marius Bakke wrote:
> I tried following the CVE assignment RSS feed initially, but it was not
> suitable for human consumption.
>=20
> How do other distros keep up with new CVE assignments?

We (Ubuntu security team) have weekly role rotations among the team. The
person on CVE triage duty will use our tooling to download

https://cve.mitre.org/data/downloads/allitems.xml.gz
https://nvd.nist.gov/feeds/json/cve/1.1/nvdcve-1.1-recent.json.gz
https://nvd.nist.gov/feeds/json/cve/1.1/nvdcve-1.1-2020.json.gz
https://nvd.nist.gov/feeds/json/cve/1.1/nvdcve-1.1-2019.json.gz
etc

We also pull from Debian's security team:
https://salsa.debian.org/security-tracker-team/security-tracker.git

We collect CVEs from this list using local mboxes.

We collect CVEs from Red Hat's security announce list:
https://www.redhat.com/archives/rhsa-announce/
and oval feeds:
https://www.redhat.com/security/data/oval/v2/RHEL8/

Having a variety of inputs gives us some resiliency when one or another
service is offline for whatever reason,

I hope this helps.

Thanks

--opJtzjQTFsWo+cga
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAl+zByoACgkQ8yFyWZ2N
LpdZ/wf+MdCy6W0cZPje7agXd0R9sLpWeo7LbU3+aoUjgSx/j4Zf6ZHSq9Ef7EcT
SKUPlj+TD10EFC616Hlunbk+ShjppieLkxU5Sxplq6wTkK/eoqhLVwRCyLuwtD4C
FPr/uU6Shfz2DGKXl7zOGgK3bjT6mrX/7AdsQotwtbwGLOc07P/MArODJ5b3MRUc
qukEFMv8KBqi9ABPI7kHhO/lgM2Piw3SXfFwzDCw3JoywnS/Z0hWwyImEJfFM30K
lqr24DqTwF0Z8/9LtAzhVQf29o+henr35AuWHxHdIjVVT8TizEE/b3H1+nCe5LAk
VZO7dt1SLs01itwHeAzSSzXznX/O7A==
=Dppv
-----END PGP SIGNATURE-----

--opJtzjQTFsWo+cga--
