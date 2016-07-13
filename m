X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2883" "Wednesday" "13" "July" "2016" "01:38:52" "-0500" "Tyler Hicks" "tyhicks@canonical.com" "<5785E1FC.8090907@canonical.com>" "71" "[oss-security] CVE Requests: Information exposure caused by ecryptfs-setup-swap failures" nil nil nil "7" "2016071306:38:52" "[oss-security] CVE Requests: Information exposure caused by ecryptfs-setup-swap failures" (number mark "U       tyhicks@cano Jul 13   71/2883  " thread-indent "\"[oss-security] CVE Requests: Information exposure caused by ecryptfs-setup-swap failures\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22500 invoked by uid 550); 13 Jul 2016 06:39:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22482 invoked from network); 13 Jul 2016 06:39:09 -0000
To: oss-security@lists.openwall.com
From: Tyler Hicks <tyhicks@canonical.com>
Message-ID: <5785E1FC.8090907@canonical.com>
Date: Wed, 13 Jul 2016 01:38:52 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="2pc8aQxLvSLcqjhTKcjlXTPFD13iE2Qmd"
Subject: [oss-security] CVE Requests: Information exposure caused by ecryptfs-setup-swap
 failures

--2pc8aQxLvSLcqjhTKcjlXTPFD13iE2Qmd
Content-Type: multipart/mixed; boundary="c1Jk6iTlBKGPiB9jcejbFPALbCSjAXhBq"
From: Tyler Hicks <tyhicks@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <5785E1FC.8090907@canonical.com>
Subject: CVE Requests: Information exposure caused by ecryptfs-setup-swap
 failures

--c1Jk6iTlBKGPiB9jcejbFPALbCSjAXhBq
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello - I'd like to request two CVEs. The flaws are in the
ecryptfs-setup-swap script that is provided by the upstream
ecryptfs-utils project. The script can be used to convert an existing,
unencrypted swap partition into a swap partition that is encrypted.
System admins may use this tool and the Ubuntu installer uses it when
the user opts into home directory encryption.

On systems using systemd 211 or newer and GPT partitioning, the
unencrypted swap partition was being automatically activated during boot
and the encrypted swap was not used. This was due to ecryptfs-setup-swap
not marking the swap partition as "no-auto", as defined by the
Discoverable Partitions Spec:


https://www.freedesktop.org/wiki/Specifications/DiscoverablePartitionsSpec/

Details of the two issues needing CVEs:

ecryptfs-setup-swap improperly configures encrypted swap when using GPT
partitioning
Bug: https://launchpad.net/bugs/1447282
Fix: https://bazaar.launchpad.net/~ecryptfs/ecryptfs/trunk/revision/857
(Please ignore the inaccurate commit message for commit 857)

ecryptfs-setup-swap improperly configures encrypted swap when using GPT
partitioning on a NVMe or MMC drive. This bug is due to an incomplete
fix for bug 1447282.
Bug: https://launchpad.net/bugs/1597154
Fix: https://bazaar.launchpad.net/~ecryptfs/ecryptfs/trunk/revision/882

Tyler


--c1Jk6iTlBKGPiB9jcejbFPALbCSjAXhBq--

--2pc8aQxLvSLcqjhTKcjlXTPFD13iE2Qmd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJXheH8AAoJENaSAD2qAscKha0QAJVPWLGCwzun5pw3mDNXdt/D
MjYt39cbaD820Zk8tc3Zc06XmQJ8A7TQA7RWljFn8T02pK08frK9sRP8kr+34Tw6
9i46rbEeZY6FSi38SC3RFP1pNpAtNZVNKMKUxcAkhHpWTqjYCI1fjwxni8OALxtJ
cAgd3B10tTPiO9DwAibqUT7PtIaTF7q8+eMsqCk1HgtjPQ5mwp7xmS5qOoDeLeg8
P4BwyNf9j2hFELOxtQvHH9z7NC9XwV2zQAEDJcPJBhqCpybb32Z8Tg742PkgATT5
Usij5GYvef5mbro1+ov79vNjNrUjGtCCiEJK+hO9TA/4lrnSoWYa53ee2L5Iq6g9
aCm2kgcz/+dzjQUI/CO6C1P07TYpRg0GnDfdYHI4zvbmZ/D3QZnX44UOlbGTE+wo
pTDleWVzp7e4S8a6vAmY1uQfHaBZ57dMW/tHtXFCVDhYXCw+TRO1h9hlEhfKWryW
4bUAjWq4mHvFLZfcaqR8Ape9NNmghORp6eltVJGbfeK/6kf4s/l5yHBbIUtFbMCL
l24pfHqrbOJifizXatF8zO5Lt9OLYHJg8bwmkJQ77dnp8SeXwGojdeWzJCFoauoK
GVat4KDYezgK4vgD2O43y4SOKibAFA69njSEv0cuuCEP3r42R3/JEtwAdurx3HVu
Ms2r0kacVezwtQl8Y0pU
=yohN
-----END PGP SIGNATURE-----

--2pc8aQxLvSLcqjhTKcjlXTPFD13iE2Qmd--
