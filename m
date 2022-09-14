Received: (qmail 5563 invoked by uid 550); 14 Sep 2022 09:57:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5521 invoked from network); 14 Sep 2022 09:57:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1663149409; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=E51Kwj4RG67PC4Cu1F3wYR/i45ncE1E9khliIGUI+B4=;
	b=COtQw3AtjRUYfLauq5AabziWQzhHG7DMDhYM6BqQEnmyk7GcR9oiFe/KVcLtSoXUHz5y4M
	HWMN8VEf82KNRHxYjI0wIs18zILh9yY/ceTBOI01ZQ1Aa6lCLKvSjf9WdtF1g4uImRXq/v
	yVUpHlxVLQ6QISIJEE1jxIq/8tyC6d0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1663149409;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=E51Kwj4RG67PC4Cu1F3wYR/i45ncE1E9khliIGUI+B4=;
	b=88mAGf2VsOFZg+Ie6+jfWuLF6qlNmi8QomvPHDYWzI6PttOAiWWkNq0Du/vNVsQKZcfQPb
	WqLbVdiaV29PgYBg==
Date: Wed, 14 Sep 2022 11:56:48 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <YyGlYB/oVle77hsB@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ScWIRBm7ly7Y39QY"
Content-Disposition: inline
Subject: [oss-security] insufficiently protected D-Bus interface in KDiskMark 3.0.0
 (CVE-2022-40673)

--ScWIRBm7ly7Y39QY
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

# Introduction

The SUSE security team has been asked to review changes [1] in the D-Bus
implementation in KDiskMark [2] major version 3.0.0. KDiskMark is a graphic=
al
utility that allows to run performance benchmarks on local file systems.

# Vulnerability

The review of this codebase showed that the D-Bus interface of the privileg=
ed
helper program `kdiskmark_helper` is insufficiently secured. Only the helpe=
r's
`init()` member function (helper.cpp:51) is protected by the Kauth
framework and thus by Polkit `auth_admin` authentication. Calling the `init=
()`
method, once authorized, causes the actual Helper D-Bus interface to be
registered on the D-Bus system bus. This means that the usual D-Bus level
autostart of the helper service is not possible, but only users in the syst=
em
that authenticate as root are allowed to fully start the helper.

Once the helper *is* started, however, all further D-Bus methods offered by
the helper interface are *not* protected any more. Any user with access to =
the
D-Bus system bus may invoke them without restrictions. These D-Bus methods
then offer attack surface:

- removeFile: allows to remove arbitrary files in the system (local DoS,
              arbitrary file existence test).
- prepareFile: allows to create large files owned by root in arbitrary loca=
tions
              (also via symlinks), the final path component needs to be
	      .kdiskmark.tmp, if not, then kdiskmark itself is DoS'ed, because
              it quits.
- startTest: similar to prepareFile. No arbitrary code execution is possibl=
e,
	      because the interface takes mostly integers as input and the
              `fio` sub process command line is carefully constructed.
- flushPageCache: drops the kernel's file system caches, therefore this off=
ers
              a kind of local performance DoS.

# Fixed Version

I informed the review requestor (who is also the upstream author) about the
issue and upstream created a follow-up version 3.1.0 featuring a
fixed approach to authentication.

I obtained CVE-2022-40673 from Mitre to track the lack of proper D-Bus meth=
od
authentication in the D-Bus helper program.

# Timeline

2022-08-24: review request for KDiskMark 3.0.0 reached us.
2022-08-31: I started working on the review.
2022-08-31: I informed the upstream author about the vulnerability, offering
            coordinated disclosure and a suggestion on which approach to ta=
ke
            to fix it.
2022-09-07: Upstream presented version 3.1.0 with an improved
            authentication scheme.
2022-09-12: I performed a follow-up review and found the vulnerability to be
            fixed.
2022-09-13: I requested a CVE for the issue from Mitre.
2022-09-14: There was no formal embargo established, upstream published fix=
es
	    for the issue right away. Publication of the CVE, Bugzilla bug and
            full report on our end.

# References

[1]: https://bugzilla.suse.com/show_bug.cgi?id=3D1202725
[2]: https://github.com/JonMagon/KDiskMark.git

Cheers

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
Phone: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moer=
man

--ScWIRBm7ly7Y39QY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmMhpWAACgkQFMQFyXGS
NVM7dBAAnSPr1L8msCHWcUo4EcIpQdPtYWUZs0u+Sz2ulQNuWStVDTellNr3bIUy
c2fH4+88cMwNBgfgCSOQ5ai25R7XYJ8Fuy14/JjKcosypAhQzMKutassB2wTYkwk
+bgyOZ2LGNEyNV0dFb9+OXDY8MScSUxCvrF8ivEcw88CT+GqTzQVlflzE2BOtUl0
xQNmhDlz21FxGoaD850T7dPFnSRDKB77X7Z5u1ohXQire9pI9wqUyTNFLy6yo9XN
DznXoeDFxqX8brtrnN3V1+jYiAG9mgLBPDfzz/cgE8tzI1IqcCFVcZ66npdoGK3q
ciPod9RRNEb+Q6gv9TYQMND97n9HaNMFVagBByJrvTOKRyhNfiFpUI1CybhItaP6
CxKOGA6HX1f3AbHF9XPX7pQcNctgVkmPMYDFViWUF1kS8EWqYrN2X9gVC1IDBIHB
quSsT2REu2nZYq5ayptIY3gnx2dQ/08wvAqfIWCD7LPzxoIdipTyPlF3EWuc566E
SQBth4LyCKKXUUao7SxuGEPs5EidpX6T6Px4mjouq5kxDsfK9ROiF32Qm82+e86h
rFzdD1zL+B0Ja/nKFBK6f8f9dqUR2fIvSQuWRlZDf0WzhCd1/xSJnFvELCwiF0Zz
abhsvD0+rEeTWds+tPwr6d+4AMHoFRuUVC8g7OIXgoBLChvGwV4=
=tgV4
-----END PGP SIGNATURE-----

--ScWIRBm7ly7Y39QY--
