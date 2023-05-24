Received: (qmail 16284 invoked by uid 550); 24 May 2023 16:48:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16266 invoked from network); 24 May 2023 16:48:36 -0000
Date: Wed, 24 May 2023 16:48:23 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20230524164822.tjqpjhvbhoo6rdve@yuggoth.org>
References: <17f7ebb7-22ee-e68f-02ac-8e2740e7f015@canonical.com>
 <20230511115704.GJ5725@suse.de>
 <ZG3Om+8ySRpIuHJu@pisco.westfalen.local>
 <20230524134130.GC6775@openwall.com>
 <CA+aC4ksAirMkOW5R1p=YzQH6R3gOBJZsiB2YqjH+sB+by2--pw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gtjqkfnanjv7mlue"
Content-Disposition: inline
In-Reply-To: <CA+aC4ksAirMkOW5R1p=YzQH6R3gOBJZsiB2YqjH+sB+by2--pw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] Clarification on embargoed testing in a partner
 cloud

--gtjqkfnanjv7mlue
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2023-05-24 07:26:42 -0700 (-0700), Anthony Liguori wrote:
[...]
> For list members that have questions about AWS, I'm happy to
> answer, in gory details.  I know other large cloud providers have
> folks on the list that would likely offer the same (or at least
> direct to the appropriate people).  I can also help make
> connections to most of the large cloud providers if folks don't
> have contacts.

I'm similarly happy to connect interested parties to contacts at the
hundreds of public cloud service providers who run OpenStack, if
there are questions along those lines.

> That said, I don't think this is the most important part of the
> discussion...
[...]

Agreed.

With my upstream developer and vulnerability coordinator hat on, I
don't mind if downstream stakeholders who are given advance notice
of our upcoming advisories test the included patches on resources in
"public clouds" (whatever that term really means), as long as
they're reasonably confident in the contractual relationships they
have with those providers to operate ethically and above board. But
also, we intentionally don't open up our embargoed discussions to
downstream distributors until fairly close to the planned
publication date, in order to limit the blast radius from accidental
leaks.

Perhaps unsurprisingly, the OpenStack community does perform
basically all of its testing and vulnerability management tasks on
donated resources within OpenStack-based cloud providers, so it
would be somewhat hypocritical of us to tell our users they
shouldn't. I get the impression an increasing number of open source
projects do the same today.
--=20
Jeremy Stanley

--gtjqkfnanjv7mlue
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmRuP9BfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCkDqhAAqsj4/CkdaXViVQUX9aAUkBxob6XUq1RlY5/M4tAIJ5JjtQuyEwGwvmNi
R1nrJa4W0UzqAcp9VTl9hTL1R8Dg6P6KgkcoGE/fRz8A51U4oS4AQBmGJ1tccw6n
P4ynCDAne+Wm3QH9scz+XGlE47e/hv2xpi4v63DF9Q6hMhAKW2ylyX0GPZGOHbBt
UulNHQrG1WD7eYBEUsZFQWtwvwR2wm/1ZYECWkVOoGrM/66F1mo/M1bslNMY3ust
Acs2YcJQYyhAzzeThJyMDR9jrfsJcbCqjXV8ddVUsWGan9H0ov5tsCycUPVS41UX
REHyitVQ91OncPAIK2NKxZjmfo/kLGCve2wDDvLY8/MZrlOp/NCPX+SUGGg9oD7z
WK4k1hS7tbnxsEfaPz4LYEzhRdTg8t4kgMHRn6cfTu7oCWq0WkD8pOy8/KEgtdUz
ru5+JAXVtQEzfdzMJyOSPTxpCGg6urc5ChMcdQem4tEaHiV7EPGUzBFTRNWKtNpV
KBAhlzYEwhPBtI9X/k5GZs0HNcPFpilm1/1ZmZ29yLt3Ux3EC22o5GTLU2Vhyxj3
F1C/jJsI0SPgiZAinBybd/5tT4I5uWtaJ3Cxs/PAJWkFajd1lqEknlNrYJrak2oY
ggnPlylHNd/fxwbPD3eEKXBtjJUdfyt148me4b0Dw5y4KkAl1A4=
=kKtG
-----END PGP SIGNATURE-----

--gtjqkfnanjv7mlue--
