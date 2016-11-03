X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2592" "Thursday" "3" "November" "2016" "11:34:35" "+0100" "Jan =?utf-8?B?UG9rb3Juw70=?=" "jpokorny@redhat.com" "<20161103103435.GF17110@redhat.com>" "64" "[oss-security] CVE-2016-7035 - pacemaker - improper IPC guarding" nil nil nil "11" "2016110310:34:35" "[oss-security] CVE-2016-7035 - pacemaker - improper IPC guarding" (number mark "U       jpokorny@red Nov  3   64/2592  " thread-indent "\"[oss-security] CVE-2016-7035 - pacemaker - improper IPC guarding\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16087 invoked by uid 550); 3 Nov 2016 10:43:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13576 invoked from network); 3 Nov 2016 10:34:50 -0000
Date: Thu, 3 Nov 2016 11:34:35 +0100
From: Jan =?utf-8?Q?Pokorn=C3=BD?= <jpokorny@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20161103103435.GF17110@redhat.com>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="cz6wLo+OExbGG7q/"
Content-Disposition: inline
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Thu, 03 Nov 2016 10:34:38 +0000 (UTC)
Subject: [oss-security] CVE-2016-7035 - pacemaker - improper IPC guarding

--cz6wLo+OExbGG7q/
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Following issue is being publicly disclosed today:

A vulnerability has been found in pacemaker, a software package for
high-availability clustering.

It was discovered that at some not so uncommon circumstances, some
pacemaker daemons could be talked to, via libqb-facilitated IPC, by
unprivileged clients due to flawed authorization decision.  Depending
on the capabilities of affected daemons, this might equip unauthorized
user with local privilege escalation or up to cluster-wide remote
execution of possibly arbitrary commands when such user happens to
reside at standard or remote/guest cluster node, respectively.

The original vulnerability was introduced in an attempt to allow
unprivileged IPC clients to clean up the file system materialized
leftovers in case the server (otherwise responsible for the lifecycle
of these files) crashes.  While the intended part of such behavior is
now effectively voided (along with the unintended one), a best-effort
fix to address this corner case systemically at libqb is coming along
(https://github.com/ClusterLabs/libqb/pull/231).

Affected versions:  1.1.10-rc1 (2013-04-17) - 1.1.15 (2016-06-21)
Impact:             Important
CVSSv3 ranking:     8.8 : AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:H/A:H

Credits for independent findings, in chronological order:
  Jan "poki" Pokorn=C3=BD, of Red Hat
  Alain Moulle, of ATOS/BULL


Patch for the issue, which is applicable on all affected versions:
https://github.com/ClusterLabs/pacemaker/pull/1166/commits/5a20855d6054ebaa=
e590c09262b328d957cc1fc2

--=20
Jan (Poki)

--cz6wLo+OExbGG7q/
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJYGxK7AAoJEGG7sjqej43iXCIQAJKW7tCgucenUn61QwmNRpMU
qnEi3Tv9w0gbijC1PiWO+mlXuDgR6lssjz9QwlWIV7YsKHLsJEykkPs64KgHPgNg
KMNIvP87XHxvrLCZtAvpFsMJ1CS5NgCNhTYcnMsfoe4WBTGYpCtX8ULtP8ipEPRX
pbxPZDM50ysuHA5DvNODMYTzZrRibkbeUgetv/vs5uG1jajZCNsgy5dBpbt3Sagp
HWlaU61JT7ZI7OJh6FLlVVAZEDDp7LFsb7+NGONV5bytgHDluGO0HyEeMFDAbyaG
h3ZdxaIFcAdv3go1xSvy7kWy1vXMTrVUDuzLR4Y6qshQi6anvhC51jNvsNWSM+jK
BAJGW/Vzg7B7hR7bYQUxxk0xC57CahQKFcGfQ65uAjJ6Q/Z1TxdXBF2i36LAXXly
0Q+TikZowzeFuibrUBx6z4QjWrxCdM5MlXeqxV3+HfYRBLITFJ8QJXy9QV2lrO3n
j0AzWeMTEqQ2RlpU8iZgHD18p53Aza11EK0z0Wy3FP2gScNW/Pdb2GzltP1dkWVE
FVDpVwdp9/w1xAt3jWn2n/ZoVCljXWQIt6CFbXzGTRvTJ2LqWG7DP66qeEb2h67p
3+h0DnOO1P8hBBkqAEXBtKC/bFeDx3NWuUtrG3GoE0gOl5GrS+Wamtml3xamLXPR
iAwn7tzrZ74estB9SvFq
=nQCm
-----END PGP SIGNATURE-----

--cz6wLo+OExbGG7q/--
