Received: (qmail 3527 invoked by uid 550); 4 May 2026 16:57:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30248 invoked from network); 4 May 2026 16:35:51 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
Organization: Gentoo
References: <4g81Yq4Bj4zJrP1@spike.porcupine.org>
User-Agent: mu4e 1.14.1; emacs 31.0.50
Date: Mon, 04 May 2026 17:35:38 +0100
Message-ID: <87se878751.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: [oss-security] Fwd: [pfx] Postfix stable release 3.11.2 and legacy releases
 3.10.9, 3.9.10, 3.8.16

--=-=-=
Content-Type: text/plain

The most significant one here seems to be the first entry under "Fixed
in Postfix 3.8, 3.9, 3.10:".

-------------------- Start of forwarded message --------------------
To: Postfix announce <postfix-announce@postfix.org>
Date: Sun, 3 May 2026 19:43:27 -0400 (EDT)
CC: Postfix users <postfix-users@postfix.org>
Subject: [pfx] Postfix stable release 3.11.2 and legacy releases 3.10.9, 3.9.10, 3.8.16
From: Wietse Venema via Postfix-users <postfix-users@postfix.org>

[An on-line version of this announcement will be available at
https://www.postfix.org/announcements/postfix-3.11.2.html]

Fixed in Postfix 3.11:

  * Bugfix (defect introduced: Postfix 3.11): the proxymap(8) daemon
    dereferenced an uninitialized pointer after a request protocol
    error. This daemon is not exposed to local or remote users.
    Found by Claude Opus 4.6.

  * Bugfix (defect introduced: 20260309) a change, to set the
    service_name default value to "amnesiac", violated a test that
    parameter names in postconf output must match 1:1 with parameter
    names in the postlink script.

Fixed in Postfix 3.10:

  * Bugfix (defect introduced: Postfix 3.10): The RFC 2047 encoder
    for the sender "full name" could loop when a very long
    full_name_encoding_charset value was configured in main.cf.
    Found by Claude Opus 4.6.

Fixed in Postfix 3.8, 3.9, 3.10:

  * Bugfix (defect introduced: Postfix 2.3, date: 20050323): buffer
    over-read when Postfix an enhanced status code is not followed
    by other text. For example, "5.7.2" without text after the
    three-number code. This CANNOT be triggered with an SMTP or
    LMTP server response; is confirmed with an access(5) table and
    likely with a policy server response; can possibly be triggered
    with pipe-to-command output, header_checks(5), body_checks(5),
    an error(8) transport in transport_maps, or a milter response;
    and is confirmed with a DNSBL server TXT response while Postfix
    is configured with "$rbl_code $rbl_text" in rbl_reply_maps or
    default_rbl_reply. This could result in process termination.
    Problem reported by Kamil Frankowicz.

  * For older Postfix versions, a buffer over-read patch is included
    at the end of this text.

  * Code cleanup: log a fatal error instead of dereferencing a null
    pointer after a first/next cursor initialization failure. Fedor
    Vorobev. This affected the Berkeley DB client.

Fixed in Postfix 3.8, 3.9, 3.10. 3.11:

  * Portability: support for recent FreeBSD, NetBSD, and OpenBSD
    versions. Brad Smith.

  * Bugfix (defect introduced: Postfix 2.2, date 20041207): When
    truncating a database file, the cdb: database client looked at
    the file size from before requesting an exclusive lock on a
    database file, instead of the file size after the exclusive
    lock was granted. Found by Claude Opus 4.6.

  * Bugfix (defect introduced: Postfix alpha, date 19980309): file
    descriptor leak after fork() failure. Found by Claude Opus 4.6.

  * Mistakes in debug logging. Found by Claude Opus 4.6. This
    affected two files in Postfix 3.8 and 3.9, three files in Postfix
    3.10 and 3.11.

  * Unchecked null pointer results after an out-of-memory condition
    in a library dependency. Found by Claude Opus 4.6. The fix is
    to return an error status or to log a fatal error. This affected
    three source files.

  * Missing or incomplete guards for ssize_t or int overflow, found
    by Claude Opus 4.6. This affected three source files. These
    limits are unlikely to be exceeded because the size of in-memory
    objects is limited by design (the number of in-memory objects
    is also limited).

You can find the updated Postfix source code at the mirrors listed
at https://www.postfix.org/.

	Wietse

Buffer over-read patch for Postfix 2.3 .. 3.7:

--- /var/tmp/postfix-3.8.15/src/global/dsn_util.c	2006-01-07 20:28:37.000000000 -0500
+++ src/global/dsn_util.c	2026-05-01 16:59:50.961688175 -0400
@@ -155,5 +155,5 @@
 	strncpy(dp->dsn.data, cp, len);
 	dp->dsn.data[len] = 0;
-	cp += len + 1;
+	cp += len;
     } else if ((len = dsn_valid(def_dsn)) > 0) {
 	strncpy(dp->dsn.data, def_dsn, len);
_______________________________________________
Postfix-users mailing list -- postfix-users@postfix.org
To unsubscribe send an email to postfix-users-leave@postfix.org
-------------------- End of forwarded message --------------------

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmn4ytobFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkHbR
AQDPjeyBtx91054AduhI0YD0/Th1LwISnAx6pFi/sszu3gEAtZXc3cCk81S6xDnU
JHV5nM6aBJnZ5v1OhMTXXaCRIwU=
=EhLN
-----END PGP SIGNATURE-----
--=-=-=--
