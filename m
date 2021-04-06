X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2117" "Tuesday" "6" "April" "2021" "21:11:40" "+1000" "Aleksa Sarai" "cyphar@cyphar.com" nil "56" "[oss-security] CVE-2021-29136: umoci: malicious layer with symlink entry for \"/\" allows overwriting of host files" nil nil nil "4" nil nil (number mark "U       cyphar@cypha Apr  6   56/2117  " thread-indent "\"[oss-security] CVE-2021-29136: umoci: malicious layer with symlink entry for \"/\" allows overwriting of host files\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-29136: umoci: malicious layer with symlink entry for \"/\" allows overwriting of host files" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21609 invoked by uid 550); 6 Apr 2021 11:12:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21576 invoked from network); 6 Apr 2021 11:12:05 -0000
X-Virus-Scanned: amavisd-new at heinlein-support.de
Date: Tue, 6 Apr 2021 21:11:40 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: oss-security@lists.openwall.com
Cc: dev@opencontainers.org
Message-ID: <20210406111140.ymqmw3sliu4tskck@yavin>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7i66r3hqo3gzakmg"
Content-Disposition: inline
X-MBO-SPAM-Probability: 
Subject: [oss-security] CVE-2021-29136: umoci: malicious layer with symlink entry for "/"
 allows overwriting of host files

--7i66r3hqo3gzakmg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

umoci 0.4.7 has been released[1], which contains a patch[2] for this
vulnerability. See [3] for more details about this vulnerability.

---

umoci 0.4.6 and earlier can be tricked into modifying host files by
creating a malicious layer that has a symlink with the name "." (or
"/"). Because umoci deletes inodes if they change types, this results in
the rootfs directory being replaced with an attacker-controlled symlink.
Subsequent image layers will then be applied on top of the target of the
symlink (which could be any directory on the host filesystem the user
running umoci has access to).

While umoci does have defences against symlink-based attacks, they are
all implemented by resolving things relative to the rootfs directory --
if the rootfs itself is a symlink, umoci resolves it first.

This vulnerability affects both "umoci unpack" and "umoci raw unpack".
Note that if you use umoci as an unprivileged user (using the --rootless
flag) then umoci will not be able to overwrite any files that your user
doesn't have access to. Other possible mitigations are to run umoci
under an LSM profile such as AppArmor or SELinux to restrict the level
of access it has outside of container image directories.

Thanks to Robin Peraglie from Cure53 for discovering and reporting this
vulnerability.

[1]: https://github.com/opencontainers/umoci/releases/tag/v0.4.7
[2]: https://github.com/opencontainers/umoci/commit/d9efc31daf2206f7d3fdb83=
9863cf7a576a2eb57
[3]: https://github.com/opencontainers/umoci/security/advisories/GHSA-9m95-=
8hx6-7p9v

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--7i66r3hqo3gzakmg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCYGxB6gAKCRCdlLljIbnQ
EsdmAP9YBQY+jhuBxID88DRepNtCpKQ1Wi9dK4kka/mycC7bAAEA27JfYrc7ptoo
18F6QCgKidzii2FKKRCZ8icLg7wCXgE=
=wDNM
-----END PGP SIGNATURE-----

--7i66r3hqo3gzakmg--
