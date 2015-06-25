X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1807" "Thursday" "25" "June" "2015" "21:38:16" "+0300" "Dmitry V. Levin" "ldv@altlinux.org" "<20150625183815.GA15583@altlinux.org>" "54" "[oss-security] Linux-PAM 1.2.1 released to address CVE-2015-3238" nil nil nil "6" "2015062518:38:16" "[oss-security] Linux-PAM 1.2.1 released to address CVE-2015-3238" (number mark "U       ldv@altlinux Jun 25   54/1807  " thread-indent "\"[oss-security] Linux-PAM 1.2.1 released to address CVE-2015-3238\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3810 invoked by uid 550); 25 Jun 2015 18:38:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3758 invoked from network); 25 Jun 2015 18:38:28 -0000
Message-ID: <20150625183815.GA15583@altlinux.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="tKW2IUtsqtDRztdT"
Content-Disposition: inline
X-fingerprint: FE4C 93AB E19A 2E4C CB5D  3E4E 7CAB E6AC 9E35 361E
Date: Thu, 25 Jun 2015 21:38:16 +0300
From: "Dmitry V. Levin" <ldv@altlinux.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux-PAM 1.2.1 released to address CVE-2015-3238
To: oss-security@lists.openwall.com

--tKW2IUtsqtDRztdT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

The Linux-PAM project has released a new version to address
a security issue in the pam_unix module.

If the process executing pam_sm_authenticate or pam_sm_chauthtok method
of pam_unix is not privileged enough to check the password, e.g.
if selinux is enabled, the _unix_run_helper_binary function is called.
When a long enough password is supplied (16 pages or more, i.e. 65536+
bytes on a system with 4K pages), this helper function hangs
indefinitely, blocked in the write(2) call while writing to a blocking
pipe that has a limited capacity.

This bug may have security implications, e.g. allowing potential
attackers to conduct username enumeration and denial of service attacks.

We would like to thank Sebastien Macke of Trustwave SpiderLabs for
the original bug report and Red Hat security response team for
forwarding this issue.

The code implementing pam_exec expose_authtok option and
pam_unix_passwd.c had a similar issue but its security implications
are not obvious.

In the fix prepared by Tomas Mraz for this Linux-PAM release the
verifiable password length is limited to PAM_MAX_RESP_SIZE bytes
(i.e. 512 bytes).

An alternative approach to fix this issue (implemented in such modules
as pam_tcb) is to temporary ignore SIGPIPE and check for a failed/short
write.  This alternative was considered too complex for a security fix,
though, and the simpler fix was chosen.


--=20
ldv

--tKW2IUtsqtDRztdT
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlWMSpQACgkQfKvmrJ41Nh7MeACcDnW8hn5LcH0OmrJtQ8uORzis
y1AAnRlU0o+ZHWX+fb8e/8gtucZ3apYU
=f7DG
-----END PGP SIGNATURE-----

--tKW2IUtsqtDRztdT--
