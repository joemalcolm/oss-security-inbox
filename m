X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2330" "Thursday" "8" "December" "2016" "16:21:26" "+0100" "Florian Pritz" "bluewind@xinu.at" "<753535c2-d3b4-ffdf-dfbf-03a889c00659@xinu.at>" "62" "[oss-security] CVE request: Linux panic on fragemented IPv6 traffic (icmp6_send)" nil nil nil "12" "2016120815:21:26" "[oss-security] CVE request: Linux panic on fragemented IPv6 traffic (icmp6_send)" (number mark "U       bluewind@xin Dec  8   62/2330  " thread-indent "\"[oss-security] CVE request: Linux panic on fragemented IPv6 traffic (icmp6_send)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3172 invoked by uid 550); 8 Dec 2016 15:22:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1725 invoked from network); 8 Dec 2016 15:21:40 -0000
X-Spam-Virus: No
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xinu.at; s=main;
	t=1481210487; bh=+13rgG2aSYi5wOdGc7jtEcE8KU+g4VHLijnZDmazCZo=;
	h=From:Subject:To:Date;
	b=qzpfCOg/0aSy+z6UKmC+R4k6253y7ejX/dGUpd9fSR/H5kwLdzaQPQe9Rgg+lPU+l
	 /I3m0hCcFDgfZVhTowwGfyU65L9HA8I0So2ixDbxIOpRWrJ0f/XG4bQV9AC2nIVd/w
	 G2EuouUUDEPA+nS7MKTQ4OvuwxuPbW6MOjLDFdfWZchiqcLa03a3iSjBooU5dWPKB+
	 kYuvDfQDBGA0Fp6ng4dqd7hz81LPZNyQpp9aoa6WudhhJSXzmk98VD+MBco9Tx9vYQ
	 TUfAK8XYwUu4R0IvMFwc7yGvfP5tMRbZ2c4mcqV2mRNWzjED3Sd6MpEtvoZLEOscfV
	 Q8gg7WXy3zZXK+gdDWarrBmXMSaY7ilzBYto6ynymNC+1E4rctO+LxXMhEI+LjPKWC
	 rXLuFLfcYZhAuqrpvADA9N7y69dipyVqe7M/qrDL87Nt+gLI/UqLBGjwbi852GwcWd
	 kDB3kmY1vAzk7Puh69MNqY6f2GTcebaIRibxI2lFYnJSEpb3cfMDg3CW1xvaMVQ4j4
	 0/OfuBkIhvBA6lPly/VEH+17JeUNWc5sjU0R8aFOA4QMOSp18V4mG5T11kN8ZAIk6N
	 Y4eHKI5LUClZ0wagInH9pevnFeShIgH+4DN3wfhPk85jJcd2eV+bONK7IIH9WJZDbo
	 Og2c0FvTGO2yd6pmiek9RWtU=
From: Florian Pritz <bluewind@xinu.at>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
 cve-assign@mitre.org
Message-ID: <753535c2-d3b4-ffdf-dfbf-03a889c00659@xinu.at>
Date: Thu, 8 Dec 2016 16:21:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.5.1
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="lSXRLg31iW6m8KCPpxxApVOmg1MIJOEXd"
Subject: [oss-security] CVE request: Linux panic on fragemented IPv6 traffic (icmp6_send)

--lSXRLg31iW6m8KCPpxxApVOmg1MIJOEXd
Content-Type: multipart/mixed; boundary="IipwvqUIGpx29u0EGRGprvtrnKpdDEMCP";
 protected-headers="v1"
From: Florian Pritz <bluewind@xinu.at>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
 cve-assign@mitre.org
Message-ID: <753535c2-d3b4-ffdf-dfbf-03a889c00659@xinu.at>
Subject: CVE request: Linux panic on fragemented IPv6 traffic (icmp6_send)

--IipwvqUIGpx29u0EGRGprvtrnKpdDEMCP
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

The linux kernel contains a bug where a fragmented IPv6 packet causes a
panic after a timeout (seems to be roughly 60 seconds). This can be
triggered remotely via the internet and results in a DoS (kernel panic).

Details: https://bugzilla.kernel.org/show_bug.cgi?id=3D189851

This is fixed by commit 79dc7e3f1cd323be4c81aa1a94faa1b3ed987fb2
Author: David Ahern <dsa@cumulusnetworks.com>
Date:   Sun Nov 27 18:52:53 2016 -0800

    net: handle no dst on skb in icmp6_send

Reference:
https://git.kernel.org/cgit/linux/kernel/git/stable/linux-stable.git/commit=
/?id=3D79dc7e3f1cd323be4c81aa1a94faa1b3ed987fb2

Can a CVE be assigned to this issue?

Florian


--IipwvqUIGpx29u0EGRGprvtrnKpdDEMCP--

--lSXRLg31iW6m8KCPpxxApVOmg1MIJOEXd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJFBAEBCgAvFiEEz6avFeXHQUn8HYwIbRZVwUzhwT4FAlhJenYRHGJsdWV3aW5k
QHhpbnUuYXQACgkQbRZVwUzhwT6pog//Tw1j06BRphHPmgEZNW8pD70nifS9WlBE
7dnA3OGpMh/1A4EGEza5ZKyDo5SX8v79pHJqZ1BwrEjuWTVSthOXoUdVOFfgwSf4
wFMOhMbVEEUe0Yy47BokwiSe5AEa7GBgR/y0kXmMvGCcTK/cYsHqqF0BWyq4caK2
TmlfDS+HVRP8VVeB0piJCHCuiGSn9hAyapkBARCGC6gw7iwiBxEafxKP56gVXBXo
/2/nVKTizQbMSTnYga6RRhzjCvs3PSbjLbncoac9WJgHkgpuEcPYGYIQmWL8252L
iHNkDBiJkchH9X+It//G7okS5gE002VnmQtDafgzoqGYmUa3gDI9UjRDfaASH3Xc
NdFufTo/i8Ajyxvkp8V5cFyi107XScsBK9nzmXecgLvfOT37wQ0WDUQ+JYeO2eQy
QtryV6g5VMPAvtCf1sckrrXFcYMitWeRSGLT2B4ftYRQ9GEocbssJPQzwgcY0yRN
208phWrEgNrk4/TJJF+0Ayeq9yEpL9IlP7Yvl1S0UWTPj23usNUhL95mPu7V9CKF
rasIVbW6ias85MKF4oJL2B/j55mrJ6AG5L7ALfpygaI3yyeGaIq6DDQS5+93Wd7n
AjPTfzkJ7lg54rxkrk9mzF1dqKYbLqGR/geM1rRtilFSsOth2ZneBbxhHZOMwslc
5alQGCyzamE=
=tVwF
-----END PGP SIGNATURE-----

--lSXRLg31iW6m8KCPpxxApVOmg1MIJOEXd--
