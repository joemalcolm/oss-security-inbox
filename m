X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["20738" "Tuesday" "4" "May" "2021" "03:53:38" "-0400" "Demi Marie Obenour" "demi@invisiblethingslab.com" nil "614" "[oss-security] Multiple vulnerabilities in RPM" nil nil nil "5" nil nil (number mark "U       demi@invisib May  4  614/20738 " thread-indent "\"[oss-security] Multiple vulnerabilities in RPM\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in RPM" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14084 invoked by uid 550); 4 May 2021 09:22:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32271 invoked from network); 4 May 2021 07:53:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:message-id
	:mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; bh=84k5sfSQ/0mftK7QI0CWUOgh9gAxy
	yeFxtDbbTsvJSs=; b=padFBYGH5VCe44kf2zb60QbBBok45NfTj97lFzxoMf0o/
	2MpD0BkzpQi2D609xqwgwo8hxPz9JzShR0wqhP6iXsWgCaaaOdLuruX5t+fkZNK8
	OJsMQ3PD/IeHT8ejHws5zk3xfwhfQDb5eutguYYxBRpybFttzZBQygoWmgdCRtCl
	FUSHPsX8hZNqUBw5tQ5k6zRJgz3PDphiKLuTfuSLsluPXvfs4EWgMsHs/b+86MPJ
	N2w/EKFyfWckS3jwW+/XYirqIwRVBsxTAFoAqIHIQYmpcTfSZxjEHod4JBFxd4Mb
	fK5cLYDeQ9vOIZggOIAESR+1e+mS/TWySPSBJD4IA==
X-ME-Sender: <xms:hf2QYNIanJWPzFIOBD8frtl3F6Uz41w-QndlZ7C0Ges2bNgj0IuVEA>
    <xme:hf2QYJIzHhFuBRC8abX_Yraghdhup16qSOSKKUQmaPEb75XTZ9P1-SRPw6VgGbrdT
    1n6xl-cU32YPek>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdefhedguddvhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvuffkgggtugesghdtreertddtjeenucfhrhhomhepffgvmhhiucfo
    rghrihgvucfqsggvnhhouhhruceouggvmhhisehinhhvihhsihgslhgvthhhihhnghhslh
    grsgdrtghomheqnecuggftrfgrthhtvghrnhepleejtdegjeffleevfeeuleehjefgvdef
    hfehgfejgeelteegtdetjeelueeuveefnecukfhppeeiiedrudduhedrudejfedrudeiie
    enucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghm
    ihesihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:hf2QYFt5KYqT76GfReWOnjG_UZegZ67hLVCkkN1yLMShXKaFP0nozw>
    <xmx:hf2QYObZdyVEgATtoKLlhIKJwGP0zsYH4z2Bj6pIf6aV_Ekuq2ra_g>
    <xmx:hf2QYEYvGDLt9U09rGxxAb55-aZpPMDRYI1e5psOQXLrASEUo_6ELQ>
    <xmx:hf2QYNBGLMlPiW9JClx89N3orxdYHeXLkrjDXjjFRLr74E0m4JhwYQ>
Date: Tue, 4 May 2021 03:53:38 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Cc: Marek =?iso-8859-1?Q?Marczykowski-G=F3recki?= <marmarek@invisiblethingslab.com>,
	Simon Gaiser <simon@invisiblethingslab.com>,
	"Srivasta S. Bhat" <srivatsa@csail.mit.edu>
Message-ID: <YJD9guSqBQ4XsUWg@itl-email>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="VKoXxyQjINjsXK3J"
Content-Disposition: inline
Subject: [oss-security] Multiple vulnerabilities in RPM

--VKoXxyQjINjsXK3J
Content-Type: multipart/mixed; boundary="kn93grNaNeVGtOuW"
Content-Disposition: inline


--kn93grNaNeVGtOuW
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Through a combination of manual audits and fuzzing, I found several
vulnerabilities in RPM:

- RPM does not reject packages that have a signed header, but neither a
  header+payload signature nor a payload digest.  Furthermore, `rpmkeys
  -K` reports `digests signatures OK` for such packages. Such a package
  is obviously not validly signed, but RPM nevertheless accepts it.
  This can be mitigated by setting `%_pkgverify_level` to `signature`
  or `all`.  I consider it a vulnerability as it violates an assumption
  made by much of the RPM ecosystem: if a package has any signatures,
  RPM will (by default) error out when trying to install it, unless
  the entire package has been properly signed by a trusted key.
=20=20
- RPM=E2=80=99s parser for OpenPGP packets has multiple memory unsafety
  issues, including out-of-bounds reads and out-of-bounds pointer
  arithmetic.  On 32-bit systems, integer overflows and an infinite
  loop are also possible.  It may be possible to use this vulnerability
  to modify a package (that is signed by a trusted key) such that
  it still validates as properly signed, but installing it corrupts
  the RPMDB.
=20=20
I also found two issues that are not vulnerabilities per se, but which
I still believe should be fixed:

- RPM accepts signatures that are followed by other OpenPGP packets,
  which are not valid.  This opens additional attack surface.

- RPM does not (obviously) reject signatures that are of an incorrect
  type.  I am not sure that they do not wind up being rejected in other
  ways, and even if they are not, I am not sure if this is helpful to
  an attacker.  But the fix is trivial, so I included it in the patch.
=20=20
The attached patches fix both issues.  The patch sent to distros@ had a
(non-exploitable) integer overflow bug on 32-bit systems, as was pointed
out by Seth Arnold.

Sincerely,

Demi Marie Obenour
she/her/hers
Qubes OS Developer, Invisible Things Lab

--kn93grNaNeVGtOuW
Content-Type: text/plain; charset=us-ascii
Content-Description: Patch for the OpenPGP parser vulnerabilities
Content-Disposition: attachment;
	filename="0001-Fix-OpenPGP-parsing-bugs.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 7ebb26aec1c7cc122a27e49890c9b2deb27e539c Mon Sep 17 00:00:00 2001
From: Demi Marie Obenour <demi@invisiblethingslab.com>
Date: Fri, 9 Apr 2021 13:32:15 -0400
Subject: [PATCH 1/2] Fix OpenPGP parsing bugs

- signatures of the wrong type were accepted
- signatures were allowed to contain multiple packets
- numerous out-of-bounds reads
- undefined pointer arithmetic
---
 rpmio/rpmpgp.c | 150 ++++++++++++++++++++++++++++---------------------
 rpmio/rpmpgp.h |   4 +-
 2 files changed, 88 insertions(+), 66 deletions(-)

diff --git a/rpmio/rpmpgp.c b/rpmio/rpmpgp.c
index d1d2e7de3..df35b16b4 100644
--- a/rpmio/rpmpgp.c
+++ b/rpmio/rpmpgp.c
@@ -320,14 +320,21 @@ size_t pgpLen(const uint8_t *s, size_t slen, size_t *=
 lenp)
     if (*s < 192) {
 	lenlen =3D 1;
 	dlen =3D *s;
-    } else if (*s < 255 && slen > 2) {
+    } else if (*s < 224 && slen > 2) {
 	lenlen =3D 2;
 	dlen =3D (((s[0]) - 192) << 8) + s[1] + 192;
-    } else if (slen > 5) {
+    } else if (slen > 5 && *s =3D=3D 255) {
 	lenlen =3D 5;
 	dlen =3D pgpGrab(s+1, 4);
+    } else {
+	/* Partial-length packet or too-short header - reject */
+	lenlen =3D 0;
+	dlen =3D 0;
     }
=20
+    /* Check that the buffer can hold the computed amount of bytes */
+    if (slen - lenlen < dlen)
+	lenlen =3D 0;
     if (lenlen)
 	*lenp =3D dlen;
=20
@@ -341,12 +348,38 @@ struct pgpPkt {
     size_t blen;		/* length of body in bytes */
 };
=20
+/** \ingroup rpmpgp
+ * Read a length field `nbytes` long.  Checks that the buffer is big enoug=
h to
+ * hold `nbytes + *valp` bytes.
+ * @param s		pointer to read from
+ * @param nbytes	length of length field
+ * @param send		pointer past end of buffer
+ * @param[out] *valp	decoded length
+ * @return		0 if buffer can hold `nbytes + *valp` of data,
+ * 			otherwise -1.
+ */
+static int pgpGet(const uint8_t *s, size_t nbytes, const uint8_t *send,
+		  size_t *valp)
+{
+    int rc =3D -1;
+
+    if (nbytes <=3D send - s) {
+	unsigned int val =3D pgpGrab(s, nbytes);
+	if (val <=3D send - s - nbytes) {
+	    rc =3D 0;
+	    *valp =3D val;
+	}
+    }
+
+    return rc;
+}
+
 static int decodePkt(const uint8_t *p, size_t plen, struct pgpPkt *pkt)
 {
     int rc =3D -1; /* assume failure */
=20
     /* Valid PGP packet header must always have two or more bytes in it */
-    if (p && plen >=3D 2 && p[0] & 0x80) {
+    if (p && plen >=3D 2 && (p[0] & 0x80)) {
 	size_t lenlen =3D 0;
 	size_t hlen =3D 0;
=20
@@ -357,15 +390,14 @@ static int decodePkt(const uint8_t *p, size_t plen, s=
truct pgpPkt *pkt)
 	} else {
 	    /* Old format packet, body length encoding in tag byte */
 	    lenlen =3D (1 << (p[0] & 0x3));
-	    if (plen > lenlen) {
-		pkt->blen =3D pgpGrab(p+1, lenlen);
-	    }
+	    if (lenlen > 4 || pgpGet(p + 1, lenlen, p + plen, &pkt->blen))
+		return rc;
 	    pkt->tag =3D (p[0] >> 2) & 0xf;
 	}
 	hlen =3D lenlen + 1;
=20
 	/* Does the packet header and its body fit in our boundaries? */
-	if (lenlen && (hlen + pkt->blen <=3D plen)) {
+	if (lenlen) {
 	    pkt->head =3D p;
 	    pkt->body =3D pkt->head + hlen;
 	    rc =3D 0;
@@ -418,7 +450,7 @@ static int pgpPrtSubType(const uint8_t *h, size_t hlen,=
 pgpSigType sigtype,
=20
     while (hlen > 0) {
 	i =3D pgpLen(p, hlen, &plen);
-	if (i =3D=3D 0 || plen < 1 || i + plen > hlen)
+	if (i =3D=3D 0 || plen < 1)
 	    break;
=20
 	p +=3D i;
@@ -524,9 +556,9 @@ static int pgpPrtSigParams(pgpTag tag, uint8_t pubkey_a=
lgo, uint8_t sigtype,
     int i;
     pgpDigAlg sigalg =3D pgpSignatureNew(pubkey_algo);
=20
-    for (i =3D 0; i < sigalg->mpis && p + 2 <=3D pend; i++) {
+    for (i =3D 0; i < sigalg->mpis && 2 < pend - p; i++) {
 	int mpil =3D pgpMpiLen(p);
-	if (p + mpil > pend)
+	if (mpil > pend - p)
 	    break;
 	if (sigtype =3D=3D PGPSIGTYPE_BINARY || sigtype =3D=3D PGPSIGTYPE_TEXT) {
 	    if (sigalg->setmpi(sigalg, i, p))
@@ -548,25 +580,12 @@ static int pgpPrtSigParams(pgpTag tag, uint8_t pubkey=
_algo, uint8_t sigtype,
     return rc;
 }
=20
-static int pgpGet(const uint8_t *s, size_t nbytes, const uint8_t *send,
-		  unsigned int *valp)
-{
-    int rc =3D -1;
-
-    if (s + nbytes <=3D send) {
-	*valp =3D pgpGrab(s, nbytes);
-	rc =3D 0;
-    }
-
-    return rc;
-}
-
 static int pgpPrtSig(pgpTag tag, const uint8_t *h, size_t hlen,
 		     pgpDigParams _digp)
 {
     uint8_t version =3D 0;
-    uint8_t * p;
-    unsigned int plen;
+    const uint8_t * p;
+    size_t plen;
     int rc =3D 1;
=20
     if (pgpVersion(h, hlen, &version))
@@ -608,6 +627,7 @@ static int pgpPrtSig(pgpTag tag, const uint8_t *h, size=
_t hlen,
     }	break;
     case 4:
     {   pgpPktSigV4 v =3D (pgpPktSigV4)h;
+	const uint8_t *const hend =3D h + hlen;
=20
 	if (hlen <=3D sizeof(*v))
 	    return 1;
@@ -618,15 +638,12 @@ static int pgpPrtSig(pgpTag tag, const uint8_t *h, si=
ze_t hlen,
 	pgpPrtVal(" ", pgpSigTypeTbl, v->sigtype);
 	pgpPrtNL();
=20
-	p =3D &v->hashlen[0];
-	if (pgpGet(v->hashlen, sizeof(v->hashlen), h + hlen, &plen))
-	    return 1;
-	p +=3D sizeof(v->hashlen);
-
-	if ((p + plen) > (h + hlen))
+	if (pgpGet(v->hashlen, sizeof(v->hashlen), hend, &plen))
 	    return 1;
+	p =3D h + sizeof *v;
=20
 	if (_digp->pubkey_algo =3D=3D 0) {
+	    /* Get the hashed data */
 	    _digp->hashlen =3D sizeof(*v) + plen;
 	    _digp->hash =3D memcpy(xmalloc(_digp->hashlen), v, _digp->hashlen);
 	}
@@ -634,18 +651,15 @@ static int pgpPrtSig(pgpTag tag, const uint8_t *h, si=
ze_t hlen,
 	    return 1;
 	p +=3D plen;
=20
-	if (pgpGet(p, 2, h + hlen, &plen))
+	if (pgpGet(p, 2, hend, &plen))
 	    return 1;
 	p +=3D 2;
=20
-	if ((p + plen) > (h + hlen))
-	    return 1;
-
 	if (pgpPrtSubType(p, plen, v->sigtype, _digp))
 	    return 1;
 	p +=3D plen;
=20
-	if (pgpGet(p, 2, h + hlen, &plen))
+	if (hend - p < 2)
 	    return 1;
 	pgpPrtHex(" signhash16", p, 2);
 	pgpPrtNL();
@@ -658,11 +672,7 @@ static int pgpPrtSig(pgpTag tag, const uint8_t *h, siz=
e_t hlen,
 	    memcpy(_digp->signhash16, p, sizeof(_digp->signhash16));
 	}
=20
-	p +=3D 2;
-	if (p > (h + hlen))
-	    return 1;
-
-	rc =3D pgpPrtSigParams(tag, v->pubkey_algo, v->sigtype, p, h, hlen, _digp=
);
+	rc =3D pgpPrtSigParams(tag, v->pubkey_algo, v->sigtype, p + 2, h, hlen, _=
digp);
     }	break;
     default:
 	rpmlog(RPMLOG_WARNING, _("Unsupported version of key: V%d\n"), version);
@@ -717,15 +727,15 @@ static int pgpPrtPubkeyParams(uint8_t pubkey_algo,
     pgpDigAlg keyalg;
     if (pubkey_algo =3D=3D PGPPUBKEYALGO_EDDSA) {
 	int len =3D p + 1 < pend ? p[0] : 0;
-	if (len =3D=3D 0 || len =3D=3D 0xff || p + 1 + len > pend)
+	if (len =3D=3D 0 || len =3D=3D 0xff || 1 + len > pend - p)
 	    goto exit;
 	curve =3D pgpCurveByOid(p + 1, len);
 	p +=3D len + 1;
     }
     keyalg =3D pgpPubkeyNew(pubkey_algo, curve);
-    for (i =3D 0; i < keyalg->mpis && p + 2 <=3D pend; i++) {
+    for (i =3D 0; i < keyalg->mpis && 2 < pend - p; i++) {
 	int mpil =3D pgpMpiLen(p);
-	if (p + mpil > pend)
+	if (mpil > pend - p)
 	    break;
 	if (keyalg->setmpi(keyalg, i, p))
 	    break;
@@ -817,30 +827,34 @@ int pgpPubkeyFingerprint(const uint8_t *h, size_t hle=
n,
 	int mpis =3D -1;
=20
 	/* Packet must be larger than v to have room for the required MPIs */
-	if (hlen > sizeof(*v)) {
-	    switch (v->pubkey_algo) {
-	    case PGPPUBKEYALGO_RSA:
-		mpis =3D 2;
-		break;
-	    case PGPPUBKEYALGO_DSA:
-		mpis =3D 4;
-		break;
-	    case PGPPUBKEYALGO_EDDSA:
-		mpis =3D 1;
-		break;
-	    }
+	if (hlen <=3D sizeof(*v))
+	    return rc;
+	se =3D (uint8_t *)(v + 1);
+
+	switch (v->pubkey_algo) {
+	case PGPPUBKEYALGO_RSA:
+	    mpis =3D 2;
+	    break;
+	case PGPPUBKEYALGO_DSA:
+	    mpis =3D 4;
+	    break;
+	case PGPPUBKEYALGO_EDDSA:
+	    mpis =3D 1;
+	    /* EdDSA has a curve id before the MPIs */
+	    if (se[0] =3D=3D 0x00 || se[0] =3D=3D 0xff || pend - se <=3D se[0])
+		return rc;
+	    se +=3D 1 + se[0];
+	    break;
+	default:
+	    return rc;
 	}
=20
-	se =3D (uint8_t *)(v + 1);
-	/* EdDSA has a curve id before the MPIs */
-	if (v->pubkey_algo =3D=3D PGPPUBKEYALGO_EDDSA) {
-	    if (se < pend && se[0] !=3D 0x00 && se[0] !=3D 0xff)
-		se +=3D 1 + se[0];
-	    else
-		se =3D pend;      /* error out when reading the MPI */
+	while (pend - se >=3D 2 && mpis-- > 0) {
+	    int i =3D pgpMpiLen(se);
+	    if (pend - se < i)
+		return rc;
+	    se +=3D i;
 	}
-	while (se < pend && mpis-- > 0)
-	    se +=3D pgpMpiLen(se);
=20
 	/* Does the size and number of MPI's match our expectations? */
 	if (se =3D=3D pend && mpis =3D=3D 0) {
@@ -1067,6 +1081,8 @@ int pgpPrtParams(const uint8_t * pkts, size_t pktlen,=
 unsigned int pkttype,
 	    break;
=20
 	p +=3D (pkt.body - pkt.head) + pkt.blen;
+	if (pkttype =3D=3D PGPTAG_SIGNATURE)
+	    break;
     }
=20
     rc =3D (digp && (p =3D=3D pend)) ? 0 : -1;
@@ -1189,6 +1205,10 @@ rpmRC pgpVerifySignature(pgpDigParams key, pgpDigPar=
ams sig, DIGEST_CTX hashctx)
     if (sig =3D=3D NULL || ctx =3D=3D NULL)
 	goto exit;
=20
+    /* RPM signatures are always binary */
+    if (sig->sigtype !=3D PGPSIGTYPE_BINARY)
+	goto exit;
+
     if (sig->hash !=3D NULL)
 	rpmDigestUpdate(ctx, sig->hash, sig->hashlen);
=20
diff --git a/rpmio/rpmpgp.h b/rpmio/rpmpgp.h
index 1614750d6..7a05dc30a 100644
--- a/rpmio/rpmpgp.h
+++ b/rpmio/rpmpgp.h
@@ -17,6 +17,7 @@
 #include <string.h>
 #include <stdio.h>
 #include <stdlib.h>
+#include <assert.h>
 #include <rpm/rpmtypes.h>
 #include <rpm/rpmstring.h>
=20
@@ -982,7 +983,8 @@ const char * pgpValString(pgpValType type, uint8_t val);
 static inline
 unsigned int pgpGrab(const uint8_t *s, size_t nbytes)
 {
-    size_t i =3D 0;
+    unsigned int i =3D 0;
+    assert(nbytes <=3D sizeof(unsigned int));
     size_t nb =3D (nbytes <=3D sizeof(i) ? nbytes : sizeof(i));
     while (nb--)
 	i =3D (i << 8) | *s++;
--=20
2.30.2


--kn93grNaNeVGtOuW
Content-Type: text/plain; charset=utf-8
Content-Description: Patch for the signature validation vulnerability
Content-Disposition: attachment;
	filename="0002-Header-signatures-alone-are-not-sufficient.patch"
Content-Transfer-Encoding: quoted-printable

=46rom ce8a3c9ba12d84f4538d5d55717d2967b69c02c9 Mon Sep 17 00:00:00 2001
From: Demi Marie Obenour <demi@invisiblethingslab.com>
Date: Tue, 16 Mar 2021 22:12:05 -0400
Subject: [PATCH 2/2] Header signatures alone are not sufficient
MIME-Version: 1.0
Content-Type: text/plain; charset=3DUTF-8
Content-Transfer-Encoding: 8bit

This fixes how RPM handles packages that contain a header signature, but
neither header+payload signature nor payload digests.  Such packages are
obviously not properly signed, but RPM previously accepted them.

This could be used to confuse both =E2=80=98rpmkeys -K=E2=80=99 and DNF.  B=
oth would
report that the package has been properly signed even when it has not.
The included regression tests demonstrates the change in behavior.
---
 lib/rpmvs.c                                   |  14 ++++--
 .../RPMS/hello-2.0-1.x86_64-corrupted.rpm     | Bin 0 -> 3216 bytes
 tests/rpmsigdig.at                            |  40 ++++++++++++++++++
 3 files changed, 51 insertions(+), 3 deletions(-)
 create mode 100644 tests/data/RPMS/hello-2.0-1.x86_64-corrupted.rpm

diff --git a/lib/rpmvs.c b/lib/rpmvs.c
index 7255069fc..d2f4f3170 100644
--- a/lib/rpmvs.c
+++ b/lib/rpmvs.c
@@ -451,7 +451,7 @@ int rpmvsVerify(struct rpmvs_s *sis, int type,
 {
     int failed =3D 0;
     int cont =3D 1;
-    int range =3D 0;
+    int range =3D 0, vfylevel =3D sis->vfylevel;
     int verified[3] =3D { 0, 0, 0 };
=20
     /* sort for consistency and rough "better comes first" semantics*/
@@ -478,6 +478,14 @@ int rpmvsVerify(struct rpmvs_s *sis, int type,
 	}
     }
=20
+    /* Unconditionally reject partially signed packages */
+    if (verified[RPMSIG_SIGNATURE_TYPE])
+	vfylevel |=3D RPMSIG_SIGNATURE_TYPE;
+
+    /* Cannot verify payload if RPMVSF_NEEDPAYLOAD is set */
+    if (sis->vsflags & RPMVSF_NEEDPAYLOAD)
+	range &=3D ~RPMSIG_PAYLOAD;
+
     for (int i =3D 0; i < sis->nsigs && cont; i++) {
 	struct rpmsinfo_s *sinfo =3D &sis->sigs[i];
 	int strength =3D (sinfo->type | sinfo->strength);
@@ -490,11 +498,11 @@ int rpmvsVerify(struct rpmvs_s *sis, int type,
 		sinfo->rc =3D RPMRC_NOTFOUND;
 	}
=20
-	if (sis->vfylevel & strength & RPMSIG_DIGEST_TYPE) {
+	if (vfylevel & strength & RPMSIG_DIGEST_TYPE) {
 	    int missing =3D (range & ~verified[RPMSIG_DIGEST_TYPE]);
 	    required |=3D (missing & sinfo->range);
 	}
-	if (sis->vfylevel & strength & RPMSIG_SIGNATURE_TYPE) {
+	if (vfylevel & strength & RPMSIG_SIGNATURE_TYPE) {
 	    int missing =3D (range & ~verified[RPMSIG_SIGNATURE_TYPE]);
 	    required |=3D (missing & sinfo->range);
 	}
diff --git a/tests/data/RPMS/hello-2.0-1.x86_64-corrupted.rpm b/tests/data/=
RPMS/hello-2.0-1.x86_64-corrupted.rpm
new file mode 100644
index 0000000000000000000000000000000000000000..2a6173ba04c2cfafb66a724fa3c=
021748189d8ca
GIT binary patch
literal 3216
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

literal 0
HcmV?d00001

diff --git a/tests/rpmsigdig.at b/tests/rpmsigdig.at
index 35013d77e..340885758 100644
--- a/tests/rpmsigdig.at
+++ b/tests/rpmsigdig.at
@@ -404,11 +404,51 @@ runroot rpmkeys -Kv /tmp/${pkg}
     Payload SHA256 digest: BAD (Expected 84a7338287bf19715c4eed0243f5cdb44=
7eeb0ade37b2af718d4060aefca2f7c !=3D bea903609dceac36e1f26a983c493c98064d32=
0fdfeb423034ed63d649b2c8dc)
     Payload SHA256 ALT digest: NOTFOUND
     V4 RSA/SHA256 Signature, key ID 1964c5fc: BAD
+    DSA signature: NOTFOUND
     MD5 digest: BAD (Expected 137ca1d8b35cca02a1854ba301c5432e !=3D d662cd=
0d81601a7107312684ad1ddf38)
 ],
 [])
 AT_CLEANUP
=20
+# ------------------------------
+# Test pre-built corrupted package verification (corrupted payload)
+AT_SETUP([rpmkeys -Kv <corrupted signed> 4])
+AT_KEYWORDS([rpmkeys digest signature])
+AT_CHECK([
+RPMDB_INIT[(
+
+dorpm () {
+    runroot rpmkeys --define '_pkgverify_level digest' \
+	--define '_pkgverify_flags 0x10000' "$1" \
+	/data/RPMS/hello-2.0-1.x86_64-corrupted.rpm
+    [ "$?" -eq 1 ] || exit 1
+}
+
+dorpm -K
+dorpm -Kv
+runroot rpmkeys --import /data/keys/rpm.org-rsa-2048-test.pub
+dorpm -K
+dorpm -Kv
+)]],
+[0],
+[[/data/RPMS/hello-2.0-1.x86_64-corrupted.rpm: digests SIGNATURES NOT OK
+/data/RPMS/hello-2.0-1.x86_64-corrupted.rpm:
+    Header V4 RSA/SHA256 Signature, key ID 1964c5fc: NOKEY
+    Header SHA256 digest: OK
+    MD5 digest: OK
+/data/RPMS/hello-2.0-1.x86_64-corrupted.rpm: DIGESTS SIGNATURES NOT OK
+/data/RPMS/hello-2.0-1.x86_64-corrupted.rpm:
+    Header V4 RSA/SHA256 Signature, key ID 1964c5fc: OK
+    Header SHA256 digest: OK
+    Payload SHA256 digest: NOTFOUND
+    Payload SHA256 ALT digest: NOTFOUND
+    RSA signature: NOTFOUND
+    DSA signature: NOTFOUND
+    MD5 digest: OK
+]],
+[])
+AT_CLEANUP
+
 # ------------------------------
 # Test --addsign
 AT_SETUP([rpmsign --addsign])
--=20
2.30.2


--kn93grNaNeVGtOuW--

--VKoXxyQjINjsXK3J
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmCQ/YIACgkQsoi1X/+c
IsGnpg//dSONduFygvkDOoFCwzhOl4eT/pAEWE+W6EjItCx5J3vv3yhb2eLiZMrZ
qqEOpEgpdaMUQZW4fkKVxrTngC2JZrlC/toGD2s9oTZQl19kWfdfkbUMjmJwJv2H
n27YxjnMraN7VA2HsaamFQObD2FqRuXlUinXLFNtCAZpMGTdxjtETnhLknHtBqyw
jOAyBxcwZRdeCJIb5NBr4pWwK44Ge3Z54rJBxie5Ydaj8LPE4z5ZqqY4NXW3LO56
u0CfxS33wpL3fe46rKQp3QQlLdnDJv+WPSFITM3R/BzQqGrlE3cFMkxOjVL4ucGT
O0/vQz7VGvszLPSNXYg5nOu/AbwfkduTUAbOkuehspYVewgtqWtMlvt6EJXjaEGz
nyLTIRCimAyudhDeAj6UcsPTzG0yW3wNjO0NrrPXXtrztoL1pfIM3sfzzOedpI0Z
6pWz0yXZnhH11PvO0ohuOIgRkP5t/MDbnNrWeT8y020TV2JkCImW5yXIlHsEoBxN
yZ1hQNt7q3uaf1AWwfc5g2JjsdXhFoTbxXUybYcdzUge6BEXrojAHrBzrtVLetRi
2xBl1c3J9gtQMz2kGXg7zjHWh455hZ/lnX6Nq3jK1//6aLlYaDoCwOlSC7aX4bmq
Ekt3jAje9PwzIcg+iS4wYvlBR+F1Lsq5u/IeuIsdseNhdqmV2WE=
=Fc9c
-----END PGP SIGNATURE-----

--VKoXxyQjINjsXK3J--
