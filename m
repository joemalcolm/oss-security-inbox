X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9771" "Thursday" "20" "January" "2022" "17:35:22" "+0100" "Hannes von Haugwitz" "hannes@vonhaugwitz.com" nil "358" "[oss-security] CVE-2021-45417 - aide (>= 0.13 <= 0.17.3): heap-based buffer overflow vulnerability in base64 functions" nil nil nil "1" nil nil (number mark "U       hannes@vonha Jan 20  358/9771  " thread-indent "\"[oss-security] CVE-2021-45417 - aide (>= 0.13 <= 0.17.3): heap-based buffer overflow vulnerability in base64 functions\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-45417 - aide (>= 0.13 <= 0.17.3): heap-based buffer overflow vulnerability in base64 functions" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5677 invoked by uid 550); 20 Jan 2022 16:37:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3693 invoked from network); 20 Jan 2022 16:35:36 -0000
Date: Thu, 20 Jan 2022 17:35:22 +0100
From: Hannes von Haugwitz <hannes@vonhaugwitz.com>
To: oss-security@lists.openwall.com
Message-ID: <YemPSkQtnUCflmaH@sulfur.vonhaugwitz.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="3FGoxyomIbEDXQSf"
Content-Disposition: inline
X-Df-Sender: YWRtaW5Adm9uaGF1Z3dpdHouY29t
Subject: [oss-security] CVE-2021-45417 - aide (>= 0.13 <= 0.17.3): heap-based buffer
 overflow vulnerability in base64 functions

--3FGoxyomIbEDXQSf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Summary
=======

David Bouman discovered a heap-based buffer overflow vulnerability in base64
functions of AIDE, an advanced intrusion detection system. An attacker could
crash the program and possibly execute arbitrary code through large (<16k)
extended file attributes or ACL. A local user might exploit this flaw for root
privilege escalation.

Project
=======

AIDE (https://aide.github.io)

Affected versions
=================

AIDE >= 0.13, <= 0.17.3

CVE ID
======

CVE-2021-45417

Proof of concept
================

To take advantage of the flaw the user needs write access to a mounted file
system that supports large enough extended attributes (e.g. XFS) or ACL (e.g.
tmpfs).

AIDE needs to be compiled with --with-xattr or --with-posix-acl configure flag
(this is the case for most distributions).

# extended attributes on XFS filesystem

    $ touch user-file; xattr -w user.comment "$(for i in {1..40000} ; do printf '%c' A ; done)" user-file
    # aide --config=/dev/null --after "$(pwd)/user-file xattrs" --after "database_out=file:/dev/null" --init

# ACL on tmpfs file system

    $ touch user-file; for i in {1000..2000} ; do setfacl -m u:${i}:r user-file ; done
    # aide --config=/dev/null --after "$(pwd)/user-file acl" --after "database_out=file:/dev/null" --init

Analysis
========

The vulnerability is caused by a fixed buffer size (16384 in
src/base64.h[base.h]) in the encode_base64/decode_base64 functions[base64.c].
Initially this was safe as the base64 functions were only used for
encoding/decoding of the calculated hashsums. However since the addition of
extended file attribute and ACL support in AIDE 0.13 encode_base64 is also used
for encoding xattr and ACL values before writing them to the database.

This allows a user to create a file with a large extended attribute value or
large ACL causing aide (ussaly triggered by cron as root) to segfault.

The issue is fixed by precalculating the size of the return buffer depending on
the input in the encode_base64/decode_base64 functions.

[base64.h] https://github.com/aide/aide/blob/v0.17.3/include/base64.h#L38
[base64.c] https://github.com/aide/aide/blob/v0.17.3/src/base64.c

Mitigation
==========

Upgrade to AIDE v0.17.4 (only containing the fix for this issue) [v0.17.4]

Alternatively apply one of the provided patches:

aide-0.17-cve-2021-45417.patch: patch for 0.17.x
aide-0.16-cve-2021-45417.patch: patch for 0.16.x (backported for Debian oldstable)

Though not tested the patch for 0.16.x might also apply for earlier releases < 0.16.

If you cannot upgrade, consider removing `acl` and `xattrs` groups from rules
matching files on affected file systems.

[v0.17.4] https://github.com/aide/aide/releases/tag/v0.17.4

Credit
======

The issue was reported by David Bouman.

--3FGoxyomIbEDXQSf
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="aide-0.16-cve-2021-45417.patch"
Content-Transfer-Encoding: quoted-printable

diff --git a/include/base64.h b/include/base64.h
index 0ff7116..381ef5d 100644
--- a/include/base64.h
+++ b/include/base64.h
@@ -36,7 +36,6 @@
 #include <assert.h>
 #include "types.h"
=20
-#define B64_BUF 16384
 #define FAIL -1
 #define SKIP -2
=20
diff --git a/src/base64.c b/src/base64.c
index fd01bac..1b0f301 100644
--- a/src/base64.c
+++ b/src/base64.c
@@ -85,11 +85,9 @@ FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL
 };
=20
 /* Returns NULL on error */
-/* FIXME Possible buffer overflow on outputs larger than B64_BUF */
 char* encode_base64(byte* src,size_t ssize)
 {
   char* outbuf;
-  char* retbuf;
   int pos;
   int i, l, left;
   unsigned long triple;
@@ -101,7 +99,10 @@ char* encode_base64(byte* src,size_t ssize)
     error(240,"\n");
     return NULL;
   }
-  outbuf =3D (char *)malloc(sizeof(char)*B64_BUF);
+
+  /* length of encoded base64 string (padded) */
+  size_t length =3D sizeof(char)* ((ssize + 2) / 3) * 4;
+  outbuf =3D (char *)malloc(length + 1);
=20=20=20
   /* Initialize working pointers */
   inb =3D src;
@@ -162,20 +163,14 @@ char* encode_base64(byte* src,size_t ssize)
       inb++;
   }
=20=20=20
-  /* outbuf is not completely used so we use retbuf */
-  retbuf=3D(char*)malloc(sizeof(char)*(pos+1));
-  memcpy(retbuf,outbuf,pos);
-  retbuf[pos]=3D'\0';
-  free(outbuf);
+  outbuf[pos]=3D'\0';
=20
-  return retbuf;
+  return outbuf;
 }
=20
-/* FIXME Possible buffer overflow on outputs larger than B64_BUF */
 byte* decode_base64(char* src,size_t ssize, size_t *ret_len)
 {
   byte* outbuf;
-  byte* retbuf;
   char* inb;
   int i;
   int l;
@@ -188,10 +183,18 @@ byte* decode_base64(char* src,size_t ssize, size_t *r=
et_len)
   if (!ssize||src=3D=3DNULL)
     return NULL;
=20
+  /* exit on unpadded input */
+  if (ssize % 4) {
+    error(3, "decode_base64: '%s' has invalid length (missing padding char=
acters?)", src);
+    return NULL;
+  }
+
+  /* calculate length of decoded string, substract padding chars if any (s=
size is >=3D 4) */
+  size_t length =3D sizeof(byte) * ((ssize / 4) * 3)- (src[ssize-1] =3D=3D=
 '=3D') - (src[ssize-2] =3D=3D '=3D');
=20
   /* Initialize working pointers */
   inb =3D src;
-  outbuf =3D (byte *)malloc(sizeof(byte)*B64_BUF);
+  outbuf =3D (byte *)malloc(length + 1);
=20
   l =3D 0;
   triple =3D 0;
@@ -243,15 +246,11 @@ byte* decode_base64(char* src,size_t ssize, size_t *r=
et_len)
       inb++;
     }
=20=20=20
-  retbuf=3D(byte*)malloc(sizeof(byte)*(pos+1));
-  memcpy(retbuf,outbuf,pos);
-  retbuf[pos]=3D'\0';
-=20=20
-  free(outbuf);
+  outbuf[pos]=3D'\0';
=20
   if (ret_len) *ret_len =3D pos;
=20=20=20
-  return retbuf;
+  return outbuf;
 }
=20
 size_t length_base64(char* src,size_t ssize)
diff --git a/src/db.c b/src/db.c
index 858240d..62c4faa 100644
--- a/src/db.c
+++ b/src/db.c
@@ -664,13 +664,15 @@ db_line* db_char2line(char** ss,int db){
=20
 time_t base64totime_t(char* s){
=20=20=20
+  if(strcmp(s,"0")=3D=3D0){
+      return 0;
+  }
   byte* b=3Ddecode_base64(s,strlen(s),NULL);
   char* endp;
=20=20=20
-  if (b=3D=3DNULL||strcmp(s,"0")=3D=3D0) {
+  if (b=3D=3DNULL) {
=20=20=20=20=20
     /* Should we print error here? */
-    free(b);
=20=20=20=20=20
     return 0;
   } else {

--3FGoxyomIbEDXQSf
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="aide-0.17-cve-2021-45417.patch"
Content-Transfer-Encoding: quoted-printable

diff --git a/include/base64.h b/include/base64.h
index a446812..d9cbfd2 100644
--- a/include/base64.h
+++ b/include/base64.h
@@ -35,7 +35,6 @@
 #include <assert.h>
 #include "types.h"
=20
-#define B64_BUF 16384
 #define FAIL -1
 #define SKIP -2
=20
diff --git a/src/base64.c b/src/base64.c
index e01c0f5..09098db 100644
--- a/src/base64.c
+++ b/src/base64.c
@@ -85,11 +85,9 @@ FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL
 };
=20
 /* Returns NULL on error */
-/* FIXME Possible buffer overflow on outputs larger than B64_BUF */
 char* encode_base64(byte* src,size_t ssize)
 {
   char* outbuf;
-  char* retbuf;
   int pos;
   int i, l, left;
   unsigned long triple;
@@ -100,7 +98,10 @@ char* encode_base64(byte* src,size_t ssize)
     log_msg(LOG_LEVEL_DEBUG,"encode base64: empty string");
     return NULL;
   }
-  outbuf =3D (char *)checked_malloc(sizeof(char)*B64_BUF);
+
+  /* length of encoded base64 string (padded) */
+  size_t length =3D sizeof(char)* ((ssize + 2) / 3) * 4;
+  outbuf =3D (char *)checked_malloc(length + 1);
=20=20=20
   /* Initialize working pointers */
   inb =3D src;
@@ -161,20 +162,14 @@ char* encode_base64(byte* src,size_t ssize)
       inb++;
   }
=20=20=20
-  /* outbuf is not completely used so we use retbuf */
-  retbuf=3D(char*)checked_malloc(sizeof(char)*(pos+1));
-  memcpy(retbuf,outbuf,pos);
-  retbuf[pos]=3D'\0';
-  free(outbuf);
+  outbuf[pos]=3D'\0';
=20
-  return retbuf;
+  return outbuf;
 }
=20
-/* FIXME Possible buffer overflow on outputs larger than B64_BUF */
 byte* decode_base64(char* src,size_t ssize, size_t *ret_len)
 {
   byte* outbuf;
-  byte* retbuf;
   char* inb;
   int i;
   int l;
@@ -188,10 +183,18 @@ byte* decode_base64(char* src,size_t ssize, size_t *r=
et_len)
     return NULL;
   }
=20
+  /* exit on unpadded input */
+  if (ssize % 4) {
+    log_msg(LOG_LEVEL_WARNING, "decode_base64: '%s' has invalid length (mi=
ssing padding characters?)", src);
+    return NULL;
+  }
+
+  /* calculate length of decoded string, substract padding chars if any (s=
size is >=3D 4) */
+  size_t length =3D sizeof(byte) * ((ssize / 4) * 3)- (src[ssize-1] =3D=3D=
 '=3D') - (src[ssize-2] =3D=3D '=3D');
=20
   /* Initialize working pointers */
   inb =3D src;
-  outbuf =3D (byte *)checked_malloc(sizeof(byte)*B64_BUF);
+  outbuf =3D (byte *)checked_malloc(length + 1);
=20
   l =3D 0;
   triple =3D 0;
@@ -242,15 +245,11 @@ byte* decode_base64(char* src,size_t ssize, size_t *r=
et_len)
       inb++;
     }
=20=20=20
-  retbuf=3D(byte*)checked_malloc(sizeof(byte)*(pos+1));
-  memcpy(retbuf,outbuf,pos);
-  retbuf[pos]=3D'\0';
-=20=20
-  free(outbuf);
+  outbuf[pos]=3D'\0';
=20
   if (ret_len) *ret_len =3D pos;
=20=20=20
-  return retbuf;
+  return outbuf;
 }
=20
 size_t length_base64(char* src,size_t ssize)
diff --git a/src/db.c b/src/db.c
index d8b23a2..ac55f0a 100644
--- a/src/db.c
+++ b/src/db.c
@@ -428,13 +428,15 @@ db_line* db_char2line(char** ss, database* db){
=20
 time_t base64totime_t(char* s, database* db, const char* field_name){
=20=20=20
+  if(strcmp(s,"0")=3D=3D0){
+      return 0;
+  }
   byte* b=3Ddecode_base64(s,strlen(s),NULL);
   char* endp;
=20=20=20
-  if (b=3D=3DNULL||strcmp(s,"0")=3D=3D0) {
+  if (b=3D=3DNULL) {
=20=20=20=20=20
     /* Should we print error here? */
-    free(b);
=20=20=20=20=20
     return 0;
   } else {

--3FGoxyomIbEDXQSf--
