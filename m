X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["13103" "Tuesday" "3" "May" "2016" "23:45:56" "+0930" "Simon Lees" "sflees@suse.de" "<5728B29C.2010004@suse.de>" "399" "[oss-security] CVE-2016-3627 CVE-2016-3705: libxml2: stack overflow in xml validator (parser)" nil nil nil "5" "2016050314:15:56" "[oss-security] CVE-2016-3627 CVE-2016-3705: libxml2: stack overflow in xml validator (parser)" (number mark "U       sflees@suse. May  3  399/13103 " thread-indent "\"[oss-security] CVE-2016-3627 CVE-2016-3705: libxml2: stack overflow in xml validator (parser)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17696 invoked by uid 550); 3 May 2016 14:39:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3157 invoked from network); 3 May 2016 14:16:22 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
To: fulldisclosure@seclists.org, oss-security@lists.openwall.com,
 security@gnome.org, security@suse.com
From: Simon Lees <sflees@suse.de>
Message-ID: <5728B29C.2010004@suse.de>
Date: Tue, 3 May 2016 23:45:56 +0930
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.7.2
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="usEslTgPoS7A6Go374E7LEEV5EOBFNnlN"
Subject: [oss-security] CVE-2016-3627 CVE-2016-3705: libxml2: stack overflow in xml validator
 (parser)

--usEslTgPoS7A6Go374E7LEEV5EOBFNnlN
Content-Type: multipart/mixed; boundary="BePFwxvDLBJjSI6RwRfjwaGQ8bkKQiRPi"
From: Simon Lees <sflees@suse.de>
To: fulldisclosure@seclists.org, oss-security@lists.openwall.com,
 security@gnome.org, security@suse.com
Message-ID: <5728B29C.2010004@suse.de>
Subject: CVE-2016-3627 CVE-2016-3705: libxml2: stack overflow in xml validator
 (parser)

--BePFwxvDLBJjSI6RwRfjwaGQ8bkKQiRPi
Content-Type: multipart/mixed;
 boundary="------------020400050406020302010203"

This is a multi-part message in MIME format.
--------------020400050406020302010203
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi
This is a disclosure of the following issue that was raised a week ago
on the distro's mailing list. Both bugs on the gnome bugtracker are
currently private and should be made public now. The two attached
patches are based off the 2.9.3 libxml2 release.

A couple of weeks back while working on a related bug [CVE-2016-3627] I
discovered a specially created xml file is capable of triggering a stack
overflow before libxml2 can detect its a invalid xml file.

We raised this issue upstream on 2016-04-18 and informed them that we
would place a two week embargo on the issue in case we didn't here back.
As of yet we have had no response so we have posted here.
https://bugzilla.gnome.org/show_bug.cgi?id=3D765207

We intend to keep the current embargo (ending May 3) unless we get
advise otherwise here. Below is a script to generate the xml file along
with a tested patch to fix the issue. I will also include our
unpublished patch and simplified reproducer for CVE-2016-3627 as again
we have had no response upstream and its likely that you will want to
fix this less severe issue at the same time.
https://bugzilla.gnome.org/show_bug.cgi?id=3D762100

python3 repoducer.py ; xmllint repo.xml

repoducer.py
-----------------------------------------------------------------------
#!/bin/python3

f =3D open('repo.xml', 'w')

f.write( "<!DOCTYPE a [ ")

i =3D 1

while (i < 30000):
    f.write ("<!ENTITY a" + str(i) + " \"&a" + str(i+1) + ";\">")
    i =3D i+1

f.write("<!ENTITY a" + str(i+1) + " \"&a1;\">]> <bruces bogans=3D\"&a1;\">")

f.close()
-----------------------------------------------------------------------

Patch for this issue.
-----------------------------------------------------------------------
From: Peter Simons <psimons@suse.com>
Date: Fri, 15 Apr 2016 11:56:55 +0200
Subject: Add missing increments of recursion depth counter to XML
 parser.

The functions xmlParserEntityCheck() and xmlParseAttValueComplex() used
to call
xmlStringDecodeEntities() in a recursive context without incrementing the
'depth' counter in the parser context. Because of that omission, the parser
failed to detect attribute recursions in certain documents before
running out
of stack space.
---
 parser.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/parser.c b/parser.c
index 9604a72..4da151f 100644
--- a/parser.c
+++ b/parser.c
@@ -144,8 +144,10 @@ xmlParserEntityCheck(xmlParserCtxtPtr ctxt, size_t
size,

 	ent->checked =3D 1;

+        ++ctxt->depth;
 	rep =3D xmlStringDecodeEntities(ctxt, ent->content,
 				  XML_SUBSTITUTE_REF, 0, 0, 0);
+        --ctxt->depth;

 	ent->checked =3D (ctxt->nbentities - oldnbent + 1) * 2;
 	if (rep !=3D NULL) {
@@ -3966,8 +3968,10 @@ xmlParseEntityValue(xmlParserCtxtPtr ctxt,
xmlChar **orig) {
 	 * an entity declaration, it is bypassed and left as is.
 	 * so XML_SUBSTITUTE_REF is not set here.
 	 */
+        ++ctxt->depth;
 	ret =3D xmlStringDecodeEntities(ctxt, buf, XML_SUBSTITUTE_PEREF,
 				      0, 0, 0);
+        --ctxt->depth;
 	if (orig !=3D NULL)
 	    *orig =3D buf;
 	else
@@ -4092,9 +4096,11 @@ xmlParseAttValueComplex(xmlParserCtxtPtr ctxt,
int *attlen, int normalize) {
 		} else if ((ent !=3D NULL) &&
 		           (ctxt->replaceEntities !=3D 0)) {
 		    if (ent->etype !=3D XML_INTERNAL_PREDEFINED_ENTITY) {
+			++ctxt->depth;
 			rep =3D xmlStringDecodeEntities(ctxt, ent->content,
 						      XML_SUBSTITUTE_REF,
 						      0, 0, 0);
+			--ctxt->depth;
 			if (rep !=3D NULL) {
 			    current =3D rep;
 			    while (*current !=3D 0) { /* non input consuming */
@@ -4130,8 +4136,10 @@ xmlParseAttValueComplex(xmlParserCtxtPtr ctxt,
int *attlen, int normalize) {
 			(ent->content !=3D NULL) && (ent->checked =3D=3D 0)) {
 			unsigned long oldnbent =3D ctxt->nbentities;

+			++ctxt->depth;
 			rep =3D xmlStringDecodeEntities(ctxt, ent->content,
 						  XML_SUBSTITUTE_REF, 0, 0, 0);
+			--ctxt->depth;

 			ent->checked =3D (ctxt->nbentities - oldnbent + 1) * 2;
 			if (rep !=3D NULL) {
--=20
2.7.4

-----------------------------------------------------------------------

CVE-2016-3627 - simplified reproducers
echo '<!DOCTYPE b [ <!ENTITY b "&b;"> ]> <b b=3D"&b;">' | xmllint -recover -
echo '<!DOCTYPE b [ <!ENTITY b "&c;"> <!ENTITY c "&d;"> <!ENTITY d
"&b;">]> <test123=3D"&c;">' | xmllint -recover -
-----------------------------------------------------------------------


CVE-2016-3627 - Patch
-----------------------------------------------------------------------
From: Peter Simons <psimons@suse.com>
Date: Thu, 14 Apr 2016 16:15:13 +0200
Subject: [PATCH] xmlStringGetNodeList: limit the function to 1024 recursions
 to avoid CVE-2016-3627

This patch prevents stack overflows like the one reported in
https://bugzilla.gnome.org/show_bug.cgi?id=3D762100.
---
 tree.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/tree.c b/tree.c
index 6a158ce..9c9f0ec 100644
--- a/tree.c
+++ b/tree.c
@@ -1464,6 +1464,8 @@ out:
     return(ret);
 }

+static xmlNodePtr xmlStringGetNodeListInternal(const xmlDoc *doc, const
xmlChar *value, size_t recursionLevel);
+
 /**
  * xmlStringGetNodeList:
  * @doc:  the document
@@ -1475,6 +1477,11 @@ out:
  */
 xmlNodePtr
 xmlStringGetNodeList(const xmlDoc *doc, const xmlChar *value) {
+  return xmlStringGetNodeListInternal(doc, value, 0);
+}
+
+static xmlNodePtr
+xmlStringGetNodeListInternal(const xmlDoc *doc, const xmlChar *value,
size_t recursionLevel) {
     xmlNodePtr ret =3D NULL, last =3D NULL;
     xmlNodePtr node;
     xmlChar *val;
@@ -1483,6 +1490,8 @@ xmlStringGetNodeList(const xmlDoc *doc, const
xmlChar *value) {
     xmlEntityPtr ent;
     xmlBufPtr buf;

+    if (recursionLevel > 1024) return(NULL);
+
     if (value =3D=3D NULL) return(NULL);

     buf =3D xmlBufCreateSize(0);
@@ -1593,8 +1602,9 @@ xmlStringGetNodeList(const xmlDoc *doc, const
xmlChar *value) {
 			else if ((ent !=3D NULL) && (ent->children =3D=3D NULL)) {
 			    xmlNodePtr temp;

-			    ent->children =3D xmlStringGetNodeList(doc,
-				    (const xmlChar*)node->content);
+			    ent->children =3D xmlStringGetNodeListInternal(doc,
+				    (const xmlChar*)node->content,
+                                    recursionLevel+1);
 			    ent->owner =3D 1;
 			    temp =3D ent->children;
 			    while (temp) {
--=20
2.7.4

-----------------------------------------------------------------------

Cheers

--=20

Simon Lees (Simotek)                            http://simotek.net

Emergency Update Team                           keybase.io/simotek
SUSE Linux                            Adeliade Australia, UTC+9:30
GPG Fingerprint: 5B87 DB9D 88DC F606 E489 CEC5 0922 C246 02F0 014B

--------------020400050406020302010203
Content-Type: text/x-patch;
 name="0001-Add-missing-increments-of-recursion-depth-counter-to.patch"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename*0="0001-Add-missing-increments-of-recursion-depth-counter-to.pa";
 filename*1="tch"

=46rom 6f0af3f6b9b1c5f82a2bb5ded65923437fee5d21 Mon Sep 17 00:00:00 2001
From: Peter Simons <psimons@suse.com>
Date: Fri, 15 Apr 2016 11:56:55 +0200
Subject: [PATCH 2/2] Add missing increments of recursion depth counter to X=
ML
 parser.

The functions xmlParserEntityCheck() and xmlParseAttValueComplex() used to =
call
xmlStringDecodeEntities() in a recursive context without incrementing the
'depth' counter in the parser context. Because of that omission, the parser
failed to detect attribute recursions in certain documents before running o=
ut
of stack space.
---
 parser.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/parser.c b/parser.c
index 9604a72..4da151f 100644
--- a/parser.c
+++ b/parser.c
@@ -144,8 +144,10 @@ xmlParserEntityCheck(xmlParserCtxtPtr ctxt, size_t siz=
e,
=20
 	ent->checked =3D 1;
=20
+        ++ctxt->depth;
 	rep =3D xmlStringDecodeEntities(ctxt, ent->content,
 				  XML_SUBSTITUTE_REF, 0, 0, 0);
+        --ctxt->depth;
=20
 	ent->checked =3D (ctxt->nbentities - oldnbent + 1) * 2;
 	if (rep !=3D NULL) {
@@ -3966,8 +3968,10 @@ xmlParseEntityValue(xmlParserCtxtPtr ctxt, xmlChar *=
*orig) {
 	 * an entity declaration, it is bypassed and left as is.
 	 * so XML_SUBSTITUTE_REF is not set here.
 	 */
+        ++ctxt->depth;
 	ret =3D xmlStringDecodeEntities(ctxt, buf, XML_SUBSTITUTE_PEREF,
 				      0, 0, 0);
+        --ctxt->depth;
 	if (orig !=3D NULL)
 	    *orig =3D buf;
 	else
@@ -4092,9 +4096,11 @@ xmlParseAttValueComplex(xmlParserCtxtPtr ctxt, int *=
attlen, int normalize) {
 		} else if ((ent !=3D NULL) &&
 		           (ctxt->replaceEntities !=3D 0)) {
 		    if (ent->etype !=3D XML_INTERNAL_PREDEFINED_ENTITY) {
+			++ctxt->depth;
 			rep =3D xmlStringDecodeEntities(ctxt, ent->content,
 						      XML_SUBSTITUTE_REF,
 						      0, 0, 0);
+			--ctxt->depth;
 			if (rep !=3D NULL) {
 			    current =3D rep;
 			    while (*current !=3D 0) { /* non input consuming */
@@ -4130,8 +4136,10 @@ xmlParseAttValueComplex(xmlParserCtxtPtr ctxt, int *=
attlen, int normalize) {
 			(ent->content !=3D NULL) && (ent->checked =3D=3D 0)) {
 			unsigned long oldnbent =3D ctxt->nbentities;
=20
+			++ctxt->depth;
 			rep =3D xmlStringDecodeEntities(ctxt, ent->content,
 						  XML_SUBSTITUTE_REF, 0, 0, 0);
+			--ctxt->depth;
=20
 			ent->checked =3D (ctxt->nbentities - oldnbent + 1) * 2;
 			if (rep !=3D NULL) {
--=20
2.8.1


--------------020400050406020302010203
Content-Type: text/x-patch;
 name="libxml2-2.9.1-CVE-2016-3627.patch"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="libxml2-2.9.1-CVE-2016-3627.patch"

=46rom e5269fd1e83743f7e62c89eca45000c2e84e6edc Mon Sep 17 00:00:00 2001
From: Peter Simons <psimons@suse.com>
Date: Thu, 14 Apr 2016 16:15:13 +0200
Subject: [PATCH 1/2] xmlStringGetNodeList: limit the function to 1024
 recursions to avoid CVE-2016-3627

This patch prevents stack overflows like the one reported in
https://bugzilla.gnome.org/show_bug.cgi?id=3D762100.
---
 tree.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

Index: libxml2-2.9.3/tree.c
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--- libxml2-2.9.3.orig/tree.c
+++ libxml2-2.9.3/tree.c
@@ -1464,6 +1464,8 @@ out:
     return(ret);
 }
=20
+static xmlNodePtr xmlStringGetNodeListInternal(const xmlDoc *doc, const xm=
lChar *value, size_t recursionLevel);
+
 /**
  * xmlStringGetNodeList:
  * @doc:  the document
@@ -1475,6 +1477,12 @@ out:
  */
 xmlNodePtr
 xmlStringGetNodeList(const xmlDoc *doc, const xmlChar *value) {
+   return xmlStringGetNodeListInternal(doc, value, 0);
+ }
+
+xmlNodePtr
+xmlStringGetNodeListInternal(const xmlDoc *doc, const xmlChar *value, size=
_t recursionLevel) {
+
     xmlNodePtr ret =3D NULL, last =3D NULL;
     xmlNodePtr node;
     xmlChar *val;
@@ -1483,6 +1491,8 @@ xmlStringGetNodeList(const xmlDoc *doc,
     xmlEntityPtr ent;
     xmlBufPtr buf;
=20
+    if (recursionLevel > 1024) return(NULL);
+
     if (value =3D=3D NULL) return(NULL);
=20
     buf =3D xmlBufCreateSize(0);
@@ -1593,8 +1603,9 @@ xmlStringGetNodeList(const xmlDoc *doc,
 			else if ((ent !=3D NULL) && (ent->children =3D=3D NULL)) {
 			    xmlNodePtr temp;
=20
-			    ent->children =3D xmlStringGetNodeList(doc,
-				    (const xmlChar*)node->content);
+			    ent->children =3D xmlStringGetNodeListInternal(doc,
+				    (const xmlChar*)node->content,
+                                    recursionLevel+1);
 			    ent->owner =3D 1;
 			    temp =3D ent->children;
 			    while (temp) {

--------------020400050406020302010203--

--BePFwxvDLBJjSI6RwRfjwaGQ8bkKQiRPi--

--usEslTgPoS7A6Go374E7LEEV5EOBFNnlN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXKLKcAAoJEBHULpq+GPyRUAwH/3E3gHjZyhYroK0/9d086in8
PATm8a+xOiCnHuG4unJ6s6fM+Yuj9Axg6eYT7ckPo59ak2Uxz9awPxhLo1miibqv
5ekEywk2w3HfqLlC2hL7DAI3wzNr9wh7U7s6JCGauXmnhAQKGqK91Gw6+qM0Cwim
DlQwMrylo4fIIdHVOi6sX8BUIar3p4g5UljKW5LCP9c7HDgU/ZMtJ9nj27JWF2Cx
wr+TNRlHizberg46sdfIffp9J8Kw7xmBz6GiljpTlhpcbLLXnwF6TfgcatpNiwRu
Tz4oaDYhtz+74/LWS139jM34lEqzxkyr5p8bggqBR9L6TbUJ6maPfAw7KCdpRD4=
=NSFs
-----END PGP SIGNATURE-----

--usEslTgPoS7A6Go374E7LEEV5EOBFNnlN--
