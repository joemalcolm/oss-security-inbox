X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1677" "Wednesday" "17" "June" "2015" "06:43:00" "-0700" "Tristan Cacqueray" "tdecacqu@redhat.com" "<55817964.40700@redhat.com>" "49" "Re: [oss-security] [OSSA 2015-011] Cinder host file disclosure through qcow2 backing file (CVE-2015-1851)" nil nil nil "6" "2015061713:43:00" "[oss-security] [OSSA 2015-011] Cinder host file disclosure through qcow2 backing file (CVE-2015-1851)" (number mark "        tdecacqu@red Jun 17   49/1677  " thread-indent "\"Re: [oss-security] [OSSA 2015-011] Cinder host file disclosure through qcow2 backing file (CVE-2015-1851)\"\n") "<20150617043336.GA23069@lorien.valinor.li>" ("<55805FE7.5070007@redhat.com>" "<20150617043336.GA23069@lorien.valinor.li>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13485 invoked by uid 550); 17 Jun 2015 13:42:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13459 invoked from network); 17 Jun 2015 13:42:58 -0000
Message-ID: <55817964.40700@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <55805FE7.5070007@redhat.com> <20150617043336.GA23069@lorien.valinor.li>
In-Reply-To: <20150617043336.GA23069@lorien.valinor.li>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="qqqthkpi3RBHKSnJNkOhRbmRVeJQVE2H7"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Date: Wed, 17 Jun 2015 06:43:00 -0700
From: Tristan Cacqueray <tdecacqu@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [OSSA 2015-011] Cinder host file disclosure through
 qcow2 backing file (CVE-2015-1851)
To: Salvatore Bonaccorso <carnil@debian.org>, oss-security@lists.openwall.com

--qqqthkpi3RBHKSnJNkOhRbmRVeJQVE2H7
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Salvatore,

On 06/16/2015 09:33 PM, Salvatore Bonaccorso wrote:
> Could you clearify if this CVE assignment is correct?

OSSA 2015-011 assigned the wrong CVE and it should have included
CVE-2015-1851 instead. An ERRATA will be issued soon.

> I noticed that Red Hat Bugzilla has
> https://bugzilla.redhat.com/show_bug.cgi?id=3D1231816 (CVE-2015-1850)
> for the nova issue and similarly
> https://bugzilla.redhat.com/show_bug.cgi?id=3D1231817 (CVE-2015-1851)
> for the cinder issue. Is this correct?
>=20
This is correct. Note that while a CVE has been assigned for the Nova
part, the bug has still not been reproduced there, and while there is no
patch, Nova has been left out of this OSSA.

> Regards and thanks in advance,
> Salvatore

Thanks for bringing that up!
--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--qqqthkpi3RBHKSnJNkOhRbmRVeJQVE2H7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJVgXlsAAoJECK5oFySXMXYlHcH/2AAH+k2hj732oaXItqzYGCw
Ob0Ikmxv5I4Yq1G+8/p4e5E754QFyqrwwLxWR16XlrbQFWd0lhPn6PiJG9yPq9OD
A6EW71Rr6nlJVg5nbjFeskIYg1ZMV4wFC4NO4j4d+2pwhVkwHd0TnRBMtSnl9JQ3
bbnsaKiDA0ouFyCI8FEFEhC7zo919lQPOgvDFMDGcjdt7B+MLqvG0eipvioaOckq
/qSqqrfJ+AUCnd2//h4eXPbS2gyyaNwRAupmUfMu8+0wQh2AydDj6JOrtXF0KqUi
rFtNj4QJhO2HboeU5Zj1kGxmoR3Ez/q5qCI+orDG9/2P1l7FBwrkxqyH7j2sboI=
=9SBq
-----END PGP SIGNATURE-----

--qqqthkpi3RBHKSnJNkOhRbmRVeJQVE2H7--
