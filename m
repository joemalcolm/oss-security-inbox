X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3103" "Wednesday" "9" "March" "2022" "19:31:22" "-0500" "Phil Pennock" "oss-security-phil@spodhuis.org" nil "97" "[oss-security] CVE-2022-26652: nats-server arbitrary file write" nil nil nil "3" nil nil (number mark "U       oss-security Mar  9   97/3103  " thread-indent "\"[oss-security] CVE-2022-26652: nats-server arbitrary file write\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-26652: nats-server arbitrary file write" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24276 invoked by uid 550); 10 Mar 2022 09:49:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22256 invoked from network); 10 Mar 2022 00:31:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d202202; h=OpenPGP:Content-Type:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:From:Reply-To:Subject:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
	References:OpenPGP:Organization:Auto-Submitted;
	bh=nwKvYYuavWsQEnD8QtPdfWYN4RcrnMpM0p4YlfYnP4Y=; t=1646872307; x=1648081907; 
	b=g2khkfGxCfaGAJkY6Kqizgb/dwJZ1hVMvskaAEfPM3+aw4UU5H5p8w0weRaeqARjxHCdBpcMLzU
	4Z1DDBuAW/eCvkf6i4+vvrLM/k49poI2ggqBG13CZWeI9++BoCRD0P89qoMHlgDxmxjFn1Vl+5Lgn
	2zeMr7YD397vxhj09C6Z9SSj67isHzts09pKBJOlyESU5lJlwTPm+1vZZlwPIi2wdD7466pnMxb2K
	9uI92aU9wEg5Z+eVVl0uRkF+VjcfJMOr7iKCnKWHmLJHtwgRyo2oeCUwVp77dUOyY0lY2DGX2kvQq
	tleHSL5XCUR4+WVxMjR+c85E6y7KBocjRNdA==;
DKIM-Signature: v=1; a=ed25519-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d202202e2; h=OpenPGP:Content-Type:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:From:Reply-To:Subject:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
	References:OpenPGP:Organization:Auto-Submitted;
	bh=nwKvYYuavWsQEnD8QtPdfWYN4RcrnMpM0p4YlfYnP4Y=; t=1646872307; x=1648081907; 
	b=KFhM/h9NuwoONxjCti6UW3Tdc2DTfQnMbhfj0ONDqFH1XO5LUJN1PtrHsfTp+1hYC1YKZ1vlzx6
	36CwdgFh7Dw==;
Date: Wed, 9 Mar 2022 19:31:22 -0500
From: Phil Pennock <oss-security-phil@spodhuis.org>
To: oss-security@lists.openwall.com
Cc: pdp@nats.io
Message-ID: <YilG2vRKT/xi9+wo@fullerene.field.pennock-tech.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ug83vu5JtW8BN3sJ"
Content-Disposition: inline
OpenPGP: url=https://www.security.spodhuis.org/PGP/keys/keys-2013rsa-2020cv25519.asc
Subject: [oss-security] CVE-2022-26652: nats-server arbitrary file write

--ug83vu5JtW8BN3sJ
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CVE: CVE-2022-26652
Date: 2022-03-09

Background:

NATS.io is a high performance open source pub-sub distributed communication
technology, built for the cloud, on-premise, IoT, and edge computing.

JetStream is the optional RAFT-based resilient persistent feature of NATS.


Problem Description:

The JetStream streams can be backed up and restored via NATS.
The backup format is a tar archive file.
Inadequate checks on the filenames within the archive file permit a
so-called "Zip Slip" attack in the stream restore.

NATS nats-server through 2022-03-09 (fixed in release 2.7.4) did not
correctly sanitize elements of the archive file, thus a user of NATS
could cause the NATS server to write arbitrary content to an
attacker-controlled filename.


Affected versions:

NATS Server:
 * 2.2.0 up to and including 2.7.3.
   + Introduced with JetStream Restore functionality
 * Fixed with nats-io/nats-server: 2.7.4
 * Docker image:  nats <https://hub.docker.com/_/nats>
 * NB users of OS package files from our releases: a change in
   goreleaser defaults, discovered late in the release process, moved
   the install directory from /usr/local/bin to /usr/bin; we are
   evaluating the correct solution for subsequent releases, but not
   recutting this release.

NATS Streaming Server
 * 0.15.0 up to and including 0.24.2
 * Fixed with nats-io/nats-streaming-server: 0.24.3
 * Embeds a nats-server, but this server is the old approach which
   JetStream replaces, so unlikely (but not impossible) to be
   configured with JS support


Workarounds:

 * Disable JetStream for untrusted users.
 * If only one NATS account uses JetStream, such that cross-user attacks
   are not an issue, and any user in that account with access to the
   JetStream API is fully trusted anyway, then appropriate sandboxing
   techniques will prevent exploit.
   + Eg, with systemd, the supplied util/nats-server-hardened.service
     example configuration demonstrates that NATS runs fine as an
     unprivileged user under ProtectSystem=3Dstrict and PrivateTmp=3Dtrue
     restrictions; by only opening a ReadWritePaths hole for the
     JetStream storage area, the impact of this vulnerability is limited.


Solution:

Upgrade the NATS server to at least 2.7.4.

We fully support the util/nats-server-hardened.service configuration
for running a NATS server and encourage this approach.


Credits:

This issue was reported (on 2022-03-07) to the NATS Maintainers by
Yiming Xiang, TIANJI LAB of NSFOCUS.
Thank you / =E8=B0=A2=E8=B0=A2=E4=BD=A0=EF=BC=81


References:

 * This document is canonically:
   <https://advisories.nats.io/CVE/CVE-2022-26652.txt>


--ug83vu5JtW8BN3sJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSpb2i1s4FmGYGL+VvhPiXtYNF+awUCYilGzgAKCRDhPiXtYNF+
a+U4AP0SFZfzzbsXZEjV5UIYVtxMBowAC6UHQmitnzmfz63fHQEAgNbOBlfL3jcV
K2v0f4CAQDGknd2DrNyd0gL+z/xXbw4=
=VeKo
-----END PGP SIGNATURE-----

--ug83vu5JtW8BN3sJ--
