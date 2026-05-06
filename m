Received: (qmail 23928 invoked by uid 550); 6 May 2026 23:21:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23824 invoked from network); 6 May 2026 21:47:22 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
Organization: Gentoo
User-Agent: mu4e 1.14.1; emacs 31.0.50
Date: Wed, 06 May 2026 22:47:09 +0100
Message-ID: <87mryccisi.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: [oss-security] Vulnerability fixes in Tor 0.4.9.7

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

=46rom diffing 0.4.9.6 and 0.4.9.7 [0]:
```
+Changes in version 0.4.9.7 - 2026-05-06
+  This is a security release fixing several major bugfixes that were repor=
ted
+  in the past weeks. Huge thanks to everyone that reported these issues! We
+  strongly recommend upgrading as soon as possible.
+
+  o Major bugfixes (cell handling):
+    - Fix out-of-bounds read (OOB) when END, TRUNCATE and TRUNCATED cell
+      have no reason in their payload. TROVE-2026-011. Found by Found by
+      Brian Carpenter (geeknik). Fixes bug 41254; bugfix
+      on 0.1.1.1-alpha.
+
+  o Major bugfixes (conflux):
+    - Do not attempt or accept BEGIN_DIR via conflux legs. TROVE-2026-
+      008. Credit to Anas Cherni from Calif.io in collaboration with
+      Claude and Anthropic Research. Fixes bug 41243; bugfix
+      on 0.4.8.1-alpha.
+
+  o Major bugfixes (conflux, relay):
+    - Adjust conflux out-of-order queue accounting when clearing a
+      queue. TROVE-2026-010. Found by aptupdate. Fixes bug 41251; bugfix
+      on 0.4.8.1-alpha.
+
+  o Major bugfixes (pathbias):
+    - Fix a client-side crash caused by double-close of a circuit while
+      under circuit queue memory pressure. TROVE-2026-009. Found by
+      cypherpunks. Fixes bug 41237; bugfix on 0.3.3.6-rc.
+
+  o Major bugfixes (relay):
+    - Fix null pointer dereference when receiving a CERT cell out of
+      order. TROVE-2026-006. Found by Fwame. Fixes bug 41240; bugfix
+      on 0.2.4.4-alpha.
+
+  o Major bugfixes (relay, onion service):
+    - Fix off-by-one out-of-bounds read if a malformed BEGIN cell is
+      received. TROVE-2026-007. Found by Flanagan. Fixes bug 41245;
+      bugfix on 0.2.4.7-alpha.
+
+  o Minor features (fallbackdir):
+    - Regenerate fallback directories generated on May 06, 2026.
+
+  o Minor features (geoip data):
+    - Update the geoip files to match the IPFire Location Database, as
+      retrieved on 2026/05/06.
+
```

The referenced bugs are private, so no more details are available
yet. There were several recent other security releases too for Tor.

[0] https://gitlab.torproject.org/tpo/core/tor/-/blob/tor-0.4.9.7/ReleaseNo=
tes#L5

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmn7tt0bFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkPKh
AP46pKRF1edKSWvY3qtsAwE7UR/+syzn89p2pJvctTegkgEA3HXyrPpnt8RkHokM
7MK0JOfSncxKYe+BSIppBKXsgwg=
=455r
-----END PGP SIGNATURE-----
--=-=-=--
