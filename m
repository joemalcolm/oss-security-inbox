Received: (qmail 7413 invoked by uid 550); 14 Aug 2025 18:56:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32192 invoked from network); 14 Aug 2025 14:01:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vonhaugwitz.com;
	s=MBO0001; t=1755180090;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=633Vb2q4LKpny5s9UfI8OS+hMqqa3D36kj9zLV6rx3k=;
	b=T3/4c4SRDMlMRocuHj41/DQcRTu28xRUzBV/33kPtGXQOGGMtAtyfEpWjtEkwUNdD2ejb3
	1ZsQakmjriFARIvHoxRBmhwd6Sv8D05gzOha9Jmxaqs4qzVRe/+8m3oCrWz8WUFgOnZr3y
	go1HDPRRWVfatzUPXIQ0+ji9FcHgwuGY7mwH03qYmfjwRPbKQ/NQ9F4ThYgDSTEXD1Lce4
	KcWvTqq//F7jBhzXRRjD2SdNWiqFE+GJJXT2vdZVMxX2LH3C36Et+7w4G6fMcQHb0GuwZD
	Au0JhUc/V3ZrDLyQdVUOmjQguAh6/M2qmp+fA4Y1l+Vw+rHSzxvbsoikanNOGg==
Date: Thu, 14 Aug 2025 16:01:27 +0200
From: Hannes von Haugwitz <hannes@vonhaugwitz.com>
To: oss-security@lists.openwall.com
Message-ID: <20250814140127.GA2@magnesium.vonhaugwitz.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="N9fR3sV8rCLZaTD9"
Content-Disposition: inline
Subject: [oss-security] CVE-2025-54409 - aide (>= 0.13 <= 0.19.1): null pointer dereference
 after reading incorrectly encoded xattr attributes from database (local DoS)

--N9fR3sV8rCLZaTD9
Content-Type: multipart/mixed; boundary="RPDJmlVXFEunFfED"
Content-Disposition: inline


--RPDJmlVXFEunFfED
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Summary
=======

Rajesh Pangare discovered a null pointer dereference vulnerability in AIDE, an
advanced intrusion detection system. An attacker can crash the program during
report printing or database listing after setting extended file attributes with
an empty attribute value or with a key containing a comma. A local user might
exploit this to cause a local denial of service.

Project
=======

AIDE (https://aide.github.io)

Affected versions
=================

AIDE >= 0.13, <= 0.19.1

CVE ID
======

CVE-2025-54409

Proof of concept
================

To take advantage of the flaw the user needs write access to a mounted file
system that supports extended file attributes. aide also needs to be compiled
with --with-xattr configure flag (this is the case for most distributions).

## listing aide database with empty extended attribute value
    $ touch xattrs-file ; setfattr -n user.empty_value xattrs-file
    # aide --config <(printf -- "database_out=stdout\n$(pwd)/xattrs-file xattrs\n") --init | aide --config <(printf -- "database_in=stdin\n$(pwd)/xattrs-file xattrs\n") --list

## checking aide database with extended attribute key containing a comma
    $ touch xattrs-file ; setfattr -n user.ke,y -v value xattrs-file
    # aide --config <(printf -- "database_out=stdout\n$(pwd)/xattrs-file xattrs\n") --init | aide --config <(printf -- "database_in=stdin\n$(pwd)/xattrs-file xattrs\n") --check

Please note that the segfault only occurs on the second run of aide after the
extended file attribute has been written to the database in the first run
(provided the xattr value is shown in the report due to a change or the
database is listed via --list).

Analysis
========

The vulnerability is caused by missing error handling while decoding the base64
encoded xattr attribute from the database and incorrectly handling of empty xattr
attribute values and attribute keys containing a comma.

This allows a user to craft a file with an extended file attribute causing aide
to dereference a null pointer and segfault.

Mitigation
==========

Upgrade to AIDE v0.19.2 [v0.19.2]

Alternatively apply one of the provided patches:

aide-0.19_cve-2025-54409_xattr.patch for 0.19.1
aide-0.18_cve-2025-54409_xattr.patch for 0.18.8 (backported for Debian Bookworm)
aide-0.17_cve-2025-54409_xattr.patch for 0.17.4 (backported for Debian Bullseye)

If you cannot upgrade, consider removing `xattrs` group from rules matching
files on affected file systems.

[v0.19.2] https://github.com/aide/aide/releases/tag/v0.19.2

Credit
======

The issue was reported by Rajesh Pangare.

--RPDJmlVXFEunFfED
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="aide-0.17_cve-2025-54409_xattr.patch"
Content-Transfer-Encoding: quoted-printable

diff --git before/src/db.c after/src/db.c
index ac55f0a..ac842bc 100644
--- before/src/db.c
+++ after/src/db.c
@@ -351,17 +351,27 @@ db_line* db_char2line(char** ss, database* db){
           num =3D 0;
           while (num < line->xattrs->num)
           {
-            byte  *val =3D NULL;
-            size_t vsz =3D 0;
-=20=20=20=20=20=20=20=20=20=20=20=20
             tval =3D strtok(NULL, ",");
             line->xattrs->ents[num].key =3D db_readchar(checked_strdup(tva=
l));
             tval =3D strtok(NULL, ",");
-            val =3D base64tobyte(tval, strlen(tval), &vsz);
-            line->xattrs->ents[num].val =3D val;
-            line->xattrs->ents[num].vsz =3D vsz;
-
-            ++num;
+            if (strcmp(tval,"0") !=3D 0) {
+                line->xattrs->ents[num].val =3D decode_base64(tval, strlen=
(tval), &line->xattrs->ents[num].vsz);
+            } else {
+                line->xattrs->ents[num].val =3D checked_strdup("");
+                line->xattrs->ents[num].vsz =3D 0;
+            }
+            if (line->xattrs->ents[num].val =3D=3D NULL) {
+                LOG_DB_FORMAT_LINE(LOG_LEVEL_WARNING, "error while reading=
 xattrs for '%s' from database (discarding extended attributes)", line->fil=
ename)
+                for (int j =3D num; j >=3D 0 ; --j) {
+                    free(line->xattrs->ents[j].key);
+                    line->xattrs->ents[j].key =3D NULL;
+                    free(line->xattrs->ents[j].val);
+                    line->xattrs->ents[j].val =3D NULL;
+                }
+                line->xattrs->num =3D 0;
+            } else {
+                ++num;
+            }
           }
         }
         break;
diff --git before/src/util.c after/src/util.c
index ba7359e..092457e 100644
--- before/src/util.c
+++ after/src/util.c
@@ -39,7 +39,7 @@
 #include "db_config.h"
 #include "util.h"
=20
-#define URL_UNSAFE " <>\"#%{}|\\^~[]`@:\033'"
+#define URL_UNSAFE " <>\"#%{}|\\^~[]`@:\033',"
 #define ISPRINT(c) (isascii(c) && isprint(c))
=20
 const char* btoa(bool b) {

--RPDJmlVXFEunFfED
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="aide-0.18_cve-2025-54409_xattr.patch"
Content-Transfer-Encoding: quoted-printable

diff --git before/src/db.c after/src/db.c
index dfcc973..4a16236 100644
--- before/src/db.c
+++ after/src/db.c
@@ -351,17 +351,27 @@ db_line* db_char2line(char** ss, database* db){
           num =3D 0;
           while (num < line->xattrs->num)
           {
-            byte  *val =3D NULL;
-            size_t vsz =3D 0;
-=20=20=20=20=20=20=20=20=20=20=20=20
             tval =3D strtok(NULL, ",");
             line->xattrs->ents[num].key =3D db_readchar(checked_strdup(tva=
l));
             tval =3D strtok(NULL, ",");
-            val =3D base64tobyte(tval, strlen(tval), &vsz);
-            line->xattrs->ents[num].val =3D val;
-            line->xattrs->ents[num].vsz =3D vsz;
-
-            ++num;
+            if (strcmp(tval,"0") !=3D 0) {
+                line->xattrs->ents[num].val =3D decode_base64(tval, strlen=
(tval), &line->xattrs->ents[num].vsz);
+            } else {
+                line->xattrs->ents[num].val =3D checked_strdup("");
+                line->xattrs->ents[num].vsz =3D 0;
+            }
+            if (line->xattrs->ents[num].val =3D=3D NULL) {
+                LOG_DB_FORMAT_LINE(LOG_LEVEL_WARNING, "error while reading=
 xattrs for '%s' from database (discarding extended attributes)", line->fil=
ename)
+                for (int j =3D num; j >=3D 0 ; --j) {
+                    free(line->xattrs->ents[j].key);
+                    line->xattrs->ents[j].key =3D NULL;
+                    free(line->xattrs->ents[j].val);
+                    line->xattrs->ents[j].val =3D NULL;
+                }
+                line->xattrs->num =3D 0;
+            } else {
+                ++num;
+            }
           }
         }
 #endif
diff --git before/src/util.c after/src/util.c
index f5c5e60..49ac5da 100644
--- before/src/util.c
+++ after/src/util.c
@@ -45,7 +45,7 @@
 #include "util.h"
 #include "errorcodes.h"
=20
-#define URL_UNSAFE " <>\"#%{}|\\^~[]`@:\033'"
+#define URL_UNSAFE " <>\"#%{}|\\^~[]`@:\033',"
 #define ISPRINT(c) (isascii(c) && isprint(c))
=20
 const char* btoa(bool b) {

--RPDJmlVXFEunFfED
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="aide-0.19_cve-2025-54409_xattr.patch"
Content-Transfer-Encoding: quoted-printable

diff --git before/src/db.c after/src/db.c
index 6675e19..375b220 100644
--- before/src/db.c
+++ after/src/db.c
@@ -374,18 +374,28 @@ db_line* db_char2line(char** ss, database* db){
           num =3D 0;
           while (num < line->xattrs->num)
           {
-            byte  *val =3D NULL;
-            size_t vsz =3D 0;
-=20=20=20=20=20=20=20=20=20=20=20=20
             tval =3D strtok(NULL, ",");
             decode_string(tval);
             line->xattrs->ents[num].key =3D checked_strdup(tval);
             tval =3D strtok(NULL, ",");
-            val =3D base64tobyte(tval, strlen(tval), &vsz);
-            line->xattrs->ents[num].val =3D val;
-            line->xattrs->ents[num].vsz =3D vsz;
-
-            ++num;
+            if (strcmp(tval,"0") !=3D 0) {
+                line->xattrs->ents[num].val =3D decode_base64(tval, strlen=
(tval), &line->xattrs->ents[num].vsz);
+            } else {
+                line->xattrs->ents[num].val =3D checked_strdup("");
+                line->xattrs->ents[num].vsz =3D 0;
+            }
+            if (line->xattrs->ents[num].val =3D=3D NULL) {
+                LOG_DB_FORMAT_LINE(LOG_LEVEL_WARNING, "error while reading=
 xattrs for '%s' from database (discarding extended attributes)", line->fil=
ename)
+                for (int j =3D num; j >=3D 0 ; --j) {
+                    free(line->xattrs->ents[j].key);
+                    line->xattrs->ents[j].key =3D NULL;
+                    free(line->xattrs->ents[j].val);
+                    line->xattrs->ents[j].val =3D NULL;
+                }
+                line->xattrs->num =3D 0;
+            } else {
+                ++num;
+            }
           }
         }
 #endif
diff --git before/src/db_file.c after/src/db_file.c
index e016e11..505f8af 100644
--- before/src/db_file.c
+++ after/src/db_file.c
@@ -377,7 +377,7 @@ static int str_xattr(char *str, int n, xattrs_type *xat=
trs) {
                 enc_key =3D encode_string(xattr->key);
             }
             char *enc_value =3D encode_base64(xattr->val, xattr->vsz);
-            m +=3D str_format(str, n + m, ",%s,%s", enc_key?enc_key:xattr-=
>key, enc_value);
+            m +=3D str_format(str, n + m, ",%s,%s", enc_key?enc_key:xattr-=
>key, enc_value?enc_value:"0");
             free(enc_key);
             free(enc_value);
             ++xattr;
diff --git before/src/util.c after/src/util.c
index 2df2c19..edc7453 100644
--- before/src/util.c
+++ after/src/util.c
@@ -48,7 +48,7 @@
 #include "util.h"
 #include "errorcodes.h"
=20
-#define URL_UNSAFE " <>\"#%{}|\\^~[]`@:\033'"
+#define URL_UNSAFE " <>\"#%{}|\\^~[]`@:\033',"
 #define ISPRINT(c) (isascii(c) && isprint(c))
=20
 pthread_mutex_t stderr_mutex =3D PTHREAD_MUTEX_INITIALIZER;

--RPDJmlVXFEunFfED--

--N9fR3sV8rCLZaTD9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEEVJXNoXyawXqyOEGnGO6GOGAi71cFAmid7C8ACgkQGO6GOGAi
71dpgAv9HjhBUQUFb4cQ0MVVsxXxZkp71noBaL280OcCfWJhxkqsxqwaD8wjhiNr
gvM1z6kp93wXYiAdxboZgbHhkzR7BQZ6LqggKP3TVq8d9s3O5cT8M9SUkVR7GTho
1lqd20CJ+F6gYXZDQcnfuqlVj30RW4WELdqejCUpTQ395x/djv9a4YMJ8DEvQgi2
de5a4FUICeVYAjwLKhnRm0C6wlF3HvPMxHlWVwubWykgJ7aXnYCnnDhTkm6HFE+P
/dtcwfXWZOKoJzVeOQVH9cnTjBZ58lYB3k7ef8s+gR2+zXjmv9rRlBfoaetPfxBd
ze9J1i+TU8vxntYZ6wDCH1fWPcLv71o/R9qyAjKlG8HDoeSIN8P4MgXz+PGByD6c
5nvGuJaJt+joT2Yq46Ep+G9gXAJbxQcYvhUlZ/Yx456l8FUJMa+keOFq9q7PHjjz
omUnsa7tB3D1AQODPB7TE/ZNg/RI9upgKK4xrJlxSzFxOiOltcjEw6z9GCaP3ht3
Tzi4iTxF
=uuFV
-----END PGP SIGNATURE-----

--N9fR3sV8rCLZaTD9--
