X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3007" "Thursday" "9" "September" "2021" "14:16:09" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" nil "87" "[oss-security] [OSSA-2021-006] Neutron: Routes middleware memory leak for nonexistent controllers (CVE-2021-40797)" nil nil nil "9" nil nil (number mark "U       fungi@yuggot Sep  9   87/3007  " thread-indent "\"[oss-security] [OSSA-2021-006] Neutron: Routes middleware memory leak for nonexistent controllers (CVE-2021-40797)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [OSSA-2021-006] Neutron: Routes middleware memory leak for nonexistent controllers (CVE-2021-40797)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10152 invoked by uid 550); 9 Sep 2021 14:16:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10122 invoked from network); 9 Sep 2021 14:16:22 -0000
Date: Thu, 9 Sep 2021 14:16:09 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20210909141609.tiluhoctwxabsu6g@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p4smvjtnmoo7wdqv"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] [OSSA-2021-006] Neutron: Routes middleware memory leak for
 nonexistent controllers (CVE-2021-40797)

--p4smvjtnmoo7wdqv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2021-006: Routes middleware memory leak for nonexistent controllers
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: September 09, 2021
:CVE: CVE-2021-40797


Affects
~~~~~~~
- Neutron: <16.4.1, >=3D17.0.0 <17.2.1, >=3D18.0.0 <18.1.1


Description
~~~~~~~~~~~
Slawek Kaplonski with Red Hat reported a vulnerability in Neutron's
routes middleware. By making API requests involving nonexistent
controllers, an authenticated user may cause the API worker to
consume increasing amounts of memory, resulting in API performance
degradation or denial of service. All Neutron deployments are
affected.


Patches
~~~~~~~
- https://review.opendev.org/807638 (Queens)
- https://review.opendev.org/807637 (Rocky)
- https://review.opendev.org/807636 (Stein)
- https://review.opendev.org/807635 (Train)
- https://review.opendev.org/807634 (Ussuri)
- https://review.opendev.org/807633 (Victoria)
- https://review.opendev.org/807632 (Wallaby)
- https://review.opendev.org/807335 (Xena)


Credits
~~~~~~~
- Slawek Kaplonski from Red Hat (CVE-2021-40797)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1942179
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2021-40797


Notes
~~~~~
- The stable/train, stable/stein, stable/rocky, and stable/queens
  branches are under extended maintenance and will receive no new
  point releases, but patches for them are provided as a courtesy.

--=20
Jeremy Stanley

--p4smvjtnmoo7wdqv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmE6FyJfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCnyNw/7B1FLB6toEmfZhSHBtgSdobKIQ2rjaSHw1NUCrnUj7KFLxrpHBaZwFET+
1r5dClV/D9bE1g31Ce91MoydCsEGRGvAa8NHrxiQB/Nlb/L9x5tOIRcluWLx6ECj
VF1ksWrTmGuYBCog0pFX3K7YGAI5V5cYBdHeOrkGONHrh6A56u6plLVAXecmHriC
0onLBI8wspJlFVm/o+EYTirj+XgGnjDajC58fSfOnJ+3gOIx6iqalyRXGb15Lc8e
d7WDvvwjotPK8ZtwWrbh6m/olLDE+xOrKfo8HAnG4irxm6RXcZGrGZY1RJzW0tj1
X/EjTNspdkDfwxs7Uu/QKJhcoVVp6P86i0ifEk+fjH9w2/V0cKB+UueqFwts7ZcS
OOgJU4msL93oZWaYmvcbeLU593tQNF6j+dolbdrZJujf2297fkk2SEQSLmE885rK
xKe2t2mS15H1ImAuTbBBnSWMssCK6lPY+P7Yorsk2KR+rO7DQol7+o4ViViJWxuM
HmBSb5WZEMlYIOBBxUBI47K1csCQ9l92tG2Z3FNYfoATB2IqK+beWPnytwWS7KVp
w22v4r4kkTbC22nVnCydT/oEB+QIvgJNB7XxovMRra702/SDsVHm5xucEe6Xkd4a
MNpsNEYIdgcuUkwGD9mjgLpQA+3UywyrPdB7FYuCm2Rm5bQAArw=
=yu3T
-----END PGP SIGNATURE-----

--p4smvjtnmoo7wdqv--
