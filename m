Received: (qmail 26537 invoked by uid 550); 4 Jul 2022 20:19:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25893 invoked from network); 4 Jul 2022 20:17:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1656965850; x=
	1657052250; bh=pA4x5h24qtFH3iCeuwT6AlxvdXT436SaLjGPqDem6oU=; b=E
	yWqG5kPC5MdQ96b8h5OFuWWOFLYnfn38VUnZTlijhRj2TwXAM26/j6yjNfn1w3+H
	KOSZA/J1OOsOyYb0ZTiNz6BE7TMqPQ0J8sG4eO3dZWO3BBS8BhVozQap4fKcQ9LR
	JWfaKdPyIHtfrMXenAWCUJQZW1TobUUqbZ2rlx3TP16hQAOFIFkHK0nVUON6K+MN
	iTtCqRLxQm257mBBMsgdKhBU+STxX7TXVGyZ5NTnwt2PefjsVD+XkuaDmrAqSR4d
	ciFRzi2ioKZIB90Jnbhhhyo9eR431yOANOwn2FJDEIthRH5w+ULz2r08/gCxLmoc
	w9rgnvmo/zgD7UKFYh3Qg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1656965850; x=1657052250; bh=pA4x5h24qtFH3iCeuwT6AlxvdXT4
	36SaLjGPqDem6oU=; b=j3FUBJ8CEYP+bThqeT0S+nMLV8pQoecUq6w7lV70Szsl
	MfaPll8CKmwRAuaKDCzbbtQX0VsmRt3ogWRgUJcWRcSMXn298o11ISigMgcuPBsh
	3iZkT41DS3RltPtaNs6b1WGyqQtLTzwZ6RrBJrvBZD3ddYhcek4R5gQyKhBXpXrr
	T8lVSrt1Wcs8K9ecMs6m+USg8yg3v8f9Nq7bhtI1EdPIwDJ/gkHH+2PNjMBtdyI6
	y+T935GobOkRJ1UaCKcq/edHDzE3aBdckLk3pvPyli9gQRdXdRY4nz0GiSyw656b
	ae/PuxkuLWke9JiCG9gMqZrKE9/Fq9h2HBHyK8+gxw==
X-ME-Sender: <xms:2UrDYvdSReuhCT8zOKX564adgVHhvhFaoHwFEaGATbVlG6JI557mbg>
    <xme:2UrDYlNZuGpyr2dUWr5_JO2gVTEo37F2XBa0GTdAUNUgjoWffB7YTAsFJ-xaqP8qB
    lSI73nw62giWXE>
X-ME-Received: <xmr:2UrDYojyolojW1jDcN3emz_wyQir8nyi0FcRoakfucT0b-pgkZeBH5xg9Bii>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudehledgudegkecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepffgvmhhi
    ucforghrihgvucfqsggvnhhouhhruceouggvmhhisehinhhvihhsihgslhgvthhhihhngh
    hslhgrsgdrtghomheqnecuggftrfgrthhtvghrnhepiefgieefvdfgjeelfeeifefgjedv
    vdefleegleeifeegfffhgffffeffhfeuudehnecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepuggvmhhisehinhhvihhsihgslhgvthhhihhnghhs
    lhgrsgdrtghomh
X-ME-Proxy: <xmx:2UrDYg_gisfBbOqpnvNHeWwBCUZodFXyddZIvBEdDouWGayJyBGLdw>
    <xmx:2UrDYrukhocv3gvtXIGmw3nyDUMbPZLXQpN0WX59LZFP61J145G1TA>
    <xmx:2UrDYvHBnjNrmOK2TcMzT1NqLOdmYgDYoRbMiJtaoBCdBItwqHbHQw>
    <xmx:2krDYp6FelXBLk7Jesn0xQuV3ky7bN_yg--qvX8Byzpc6vFfbZZfbQ>
Feedback-ID: iac594737:Fastmail
Date: Mon, 4 Jul 2022 16:17:17 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: Open Source Software Security <oss-security@lists.openwall.com>
Message-ID: <YsNKzWyfLpY3Bt6+@itl-email>
References: <YsJ7JjZ/R/jqN+YX@itl-email>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FD9TjVXtkJEy3c31"
Content-Disposition: inline
In-Reply-To: <YsJ7JjZ/R/jqN+YX@itl-email>
Subject: [oss-security] Re: Denial of service in GnuPG

--FD9TjVXtkJEy3c31
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="8e3+PQ47kSDGSyKs"
Content-Disposition: inline
Date: Mon, 4 Jul 2022 16:17:17 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: Open Source Software Security <oss-security@lists.openwall.com>
Subject: Re: Denial of service in GnuPG


--8e3+PQ47kSDGSyKs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

It has come to my attention that my original post caused at least two
mail clients to hang.  Sorry about that; I did not expect any mail
client to eagerly parse the attachments.  This version wraps the
attachments in a password-protected zip file (password: MitB7vqh).  It
also includes some additional information.

GnuPG is vulnerable to a denial of service attack when processing
crafted detached signatures and/or certificates.  By concatenating the
same signature to itself a very large number of times, and then wrapping
them in a compressed packet, I am able to cause GnuPG to take over a
minute to process an input that is less than 5KB armored.

I have attached two files:

- A patch (based on one submitted upstream) that fixes the bug for keys,
  detached signatures, and cleartext signatures.  It does not fix the
  bug for other types of OpenPGP data, as I am not sure if the obvious
  fix (only allowing a single literal data packet in a compressed
  packet) would render data already in the wild inaccessible.  The only
  difference between this patch and the one sent upstream already is that
  this one prevents attacks involving cleartext signatures.

- An encrypted zip file (see above for password) that contains a proof
  of concept exploit.  Both the public key and the detached signature
  (of an empty file) are included.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--8e3+PQ47kSDGSyKs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment;
	filename="v3-0001-Disallow-compressed-signatures-and-certificates.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 459b61fa21db755d6c879c3ef9ab85b3d1786c9f Mon Sep 17 00:00:00 2001
From: Demi Marie Obenour <demi@invisiblethingslab.com>
Date: Fri, 27 May 2022 19:51:19 -0400
Subject: [PATCH GnuPG v3] Disallow compressed signatures and certificates

Compressed packets have significant attack surface, due to the potential
for both denial of service (zip bombs and the like) and for code
execution via memory corruption vulnerabilities in the decompressor.
Furthermore, I am not aware of any implementation that uses them in keys
or detached signatures.  Therefore, disallow their use in such contexts
entirely.  This includes signatures that are part of a cleartext-signed
message.

When parsing detached signatures, forbid any packet that is not a
signature or marker packet.  When parsing keys, return an error when
encountering a compressed packet, instead of decompressing the packet.

Furthermore, certificates, keys, and signatures are not allowed to
contain partial-length or indeterminate-length packets.  Reject those in
parse_packet, rather than activating the partial-length filter code.
This is not (yet) implemented for cleartext-signed messages, as these
messages are internally represented as inline-signed messages.

GnuPG-bug-id: T5993
Signed-off-by: Demi Marie Obenour <demiobenour@gmail.com>
---
 g10/import.c       | 18 ++----------------
 g10/mainproc.c     | 24 +++++++++++++++++++++---
 g10/packet.h       |  2 ++
 g10/parse-packet.c | 44 +++++++++++++++++++++++++++++++++++++++++++-
 4 files changed, 68 insertions(+), 20 deletions(-)

diff --git a/g10/import.c b/g10/import.c
index bb0bf67934a8316130cde182cd43d56353e0171d..a8136351f6f7dae8c65634ed8e1=
c242d323e2009 100644
--- a/g10/import.c
+++ b/g10/import.c
@@ -1042,22 +1042,8 @@ read_block( IOBUF a, unsigned int options,
       switch (pkt->pkttype)
         {
         case PKT_COMPRESSED:
-          if (check_compress_algo (pkt->pkt.compressed->algorithm))
-            {
-              rc =3D GPG_ERR_COMPR_ALGO;
-              goto ready;
-            }
-          else
-            {
-              compress_filter_context_t *cfx =3D xmalloc_clear( sizeof *cf=
x );
-              pkt->pkt.compressed->buf =3D NULL;
-              if (push_compress_filter2 (a, cfx,
-                                         pkt->pkt.compressed->algorithm, 1=
))
-                xfree (cfx); /* e.g. in case of compression_algo NONE.  */
-            }
-          free_packet (pkt, &parsectx);
-          init_packet(pkt);
-          break;
+          rc =3D GPG_ERR_UNEXPECTED;
+          goto ready;
=20
         case PKT_RING_TRUST:
           /* Skip those packets unless we are in restore mode.  */
diff --git a/g10/mainproc.c b/g10/mainproc.c
index af11877aa257e46662c42b6ff573ee01c3ad1547..3629fc921b742afd131e8d8e266=
4b201095990f0 100644
--- a/g10/mainproc.c
+++ b/g10/mainproc.c
@@ -152,6 +152,7 @@ add_onepass_sig (CTX c, PACKET *pkt)
 {
   kbnode_t node;
=20
+  log_assert(!(c->sigs_only && c->signed_data.used));
   if (c->list) /* Add another packet. */
     add_kbnode (c->list, new_kbnode (pkt));
   else /* Insert the first one.  */
@@ -1076,8 +1077,16 @@ proc_compressed (CTX c, PACKET *pkt)
   int rc;
=20
   /*printf("zip: compressed data packet\n");*/
-  if (c->sigs_only)
-    rc =3D handle_compressed (c->ctrl, c, zd, proc_compressed_cb, c);
+  if ( literals_seen )
+    {
+      log_error ("Compressed packet follows literal data packet\n");
+      rc =3D GPG_ERR_UNEXPECTED;
+    }
+  else if ( c->sigs_only )
+    {
+      log_assert(!c->signed_data.used);
+      rc =3D handle_compressed (c->ctrl, c, zd, proc_compressed_cb, c);
+    }
   else if( c->encrypt_only )
     rc =3D handle_compressed (c->ctrl, c, zd, proc_encrypt_cb, c);
   else
@@ -1596,6 +1605,7 @@ do_proc_packets (CTX c, iobuf_t a)
   c->iobuf =3D a;
   init_packet(pkt);
   init_parse_packet (&parsectx, a);
+  parsectx.sigs_only =3D c->sigs_only && c->signed_data.used;
   while ((rc=3Dparse_packet (&parsectx, pkt)) !=3D -1)
     {
       any_data =3D 1;
@@ -1607,6 +1617,12 @@ do_proc_packets (CTX c, iobuf_t a)
           if (gpg_err_code (rc) =3D=3D GPG_ERR_INV_PACKET
               && opt.list_packets =3D=3D 0)
             break;
+
+          if (gpg_err_code (rc) =3D=3D GPG_ERR_UNEXPECTED)
+            {
+              write_status_text( STATUS_UNEXPECTED, "0" );
+              goto leave;
+            }
           continue;
 	}
       newpkt =3D -1;
@@ -1644,7 +1660,9 @@ do_proc_packets (CTX c, iobuf_t a)
             case PKT_COMPRESSED:  rc =3D proc_compressed (c, pkt); break;
             case PKT_ONEPASS_SIG: newpkt =3D add_onepass_sig (c, pkt); bre=
ak;
             case PKT_GPG_CONTROL: newpkt =3D add_gpg_control (c, pkt); bre=
ak;
-            default: newpkt =3D 0; break;
+            default:
+	      log_assert(!c->signed_data.used);
+	      newpkt =3D 0; break;
 	    }
 	}
       else if (c->encrypt_only)
diff --git a/g10/packet.h b/g10/packet.h
index 5a14015a16c872fe7b0b15468598daf7a05ffc02..82dfe786b46051491e7015e6444=
1678140defa9e 100644
--- a/g10/packet.h
+++ b/g10/packet.h
@@ -657,6 +657,7 @@ struct parse_packet_ctx_s
   int free_last_pkt; /* Indicates that LAST_PKT must be freed.  */
   int skip_meta;     /* Skip ring trust packets.  */
   unsigned int n_parsed_packets;	/* Number of parsed packets.  */
+  int sigs_only;     /* Only accept detached signature packets */
 };
 typedef struct parse_packet_ctx_s *parse_packet_ctx_t;
=20
@@ -667,6 +668,7 @@ typedef struct parse_packet_ctx_s *parse_packet_ctx_t;
     (a)->free_last_pkt =3D 0;         \
     (a)->skip_meta =3D 0;             \
     (a)->n_parsed_packets =3D 0;      \
+    (a)->sigs_only =3D 0;             \
   } while (0)
=20
 #define deinit_parse_packet(a) do { \
diff --git a/g10/parse-packet.c b/g10/parse-packet.c
index cea1f7ebc5daec3863ae963c1ab25500f86796fe..dca66ff427ea6778e536782ec6b=
da83584877342 100644
--- a/g10/parse-packet.c
+++ b/g10/parse-packet.c
@@ -738,6 +738,20 @@ parse (parse_packet_ctx_t ctx, PACKET *pkt, int onlyke=
ypkts, off_t * retpos,
             case PKT_ENCRYPTED_MDC:
             case PKT_ENCRYPTED_AEAD:
             case PKT_COMPRESSED:
+              if (ctx->sigs_only)
+                {
+                  log_error (_("partial length packet of type %d in detach=
ed"
+                               " signature\n"), pkttype);
+                  rc =3D gpg_error (GPG_ERR_UNEXPECTED);
+                  goto leave;
+                }
+              if (onlykeypkts)
+                {
+                  log_error (_("partial length packet of type %d in keyrin=
g\n"),
+                             pkttype);
+                  rc =3D gpg_error (GPG_ERR_UNEXPECTED);
+                  goto leave;
+                }
               iobuf_set_partial_body_length_mode (inp, c & 0xff);
               pktlen =3D 0;	/* To indicate partial length.  */
               partial =3D 1;
@@ -775,6 +789,20 @@ parse (parse_packet_ctx_t ctx, PACKET *pkt, int onlyke=
ypkts, off_t * retpos,
 	      rc =3D gpg_error (GPG_ERR_INV_PACKET);
 	      goto leave;
 	    }
+	  else if (ctx->sigs_only)
+	    {
+	      log_error (_("indeterminate length packet of type %d in detached"
+                           " signature\n"), pkttype);
+	      rc =3D gpg_error (GPG_ERR_UNEXPECTED);
+	      goto leave;
+	    }
+	  else if (onlykeypkts)
+	    {
+	      log_error (_("indeterminate length packet of type %d in"
+                           " keyring\n"), pkttype);
+	      rc =3D gpg_error (GPG_ERR_UNEXPECTED);
+	      goto leave;
+	    }
 	}
       else
 	{
@@ -828,7 +856,21 @@ parse (parse_packet_ctx_t ctx, PACKET *pkt, int onlyke=
ypkts, off_t * retpos,
       goto leave;
     }
=20
-  if (with_uid && pkttype =3D=3D PKT_USER_ID)
+  if (ctx->sigs_only)
+    switch (pkttype)
+      {
+      case PKT_SIGNATURE:
+      case PKT_MARKER:
+	break;
+      default:
+        log_error(_("Packet type %d not allowed in detached signature\n"),
+                  pkttype);
+	iobuf_skip_rest (inp, pktlen, partial);
+	*skip =3D 1;
+	rc =3D GPG_ERR_UNEXPECTED;
+	goto leave;
+      }
+  else if (with_uid && pkttype =3D=3D PKT_USER_ID)
     /* If ONLYKEYPKTS is set to 2, then we never skip user id packets,
        even if DO_SKIP is set.  */
     ;
--=20
2.36.1


--8e3+PQ47kSDGSyKs
Content-Type: application/zip
Content-Disposition: attachment; filename="gnupg-dos.zip"
Content-Transfer-Encoding: base64

UEsDBBQACQAIAHUL5FSHuFXByAoAAPsRAAASABwAZ251cGctZG9zL2RlY29t
cC0zVVQJAANOesJiZXrCYnV4CwABBOgDAAAE6AMAAKpRrpf0khQP+4pHQ9fG
ujmpfyDQFtewyLqbXVofsfUxBVQw2pSCf7sJ9o5dYGi4P9KCJCkZqOOW7N/w
90LSk+kg/ftRBX3o/tgoKHg2yKHPEZ5kHpYrJlQ+dIY+LBpTRAuhcPE/s0lB
1uV/rYgooL4S8qUvzECi26pjis8FHkuHTyYpRwtpqSAqXD8qgm4kwxiD+H0d
m06Yl5PTb0hruBnEhTERy6gmhR6pai55WY98+NNx+ozqb3xP7adGUnMSGCYY
mYRAqzxH5zrr6QXTAjXUCv84rWg6iflEMtMHrX6VKQjGFB//lYBNEx6TiuHz
9mGTYDjlydRoBOjK6iWqai8OLZuXqt6S64Rn23k5/LxvPFugfj02Z+ge6xuu
pFdjmkztbXmXa/+dqC6qbJs420AK8BwHAEDwJs8wSPc6ClQA/hgtKukUVJKY
gn+2cDOdESGVKoima4uYAs5uw7kr6ld552Upc3Mk3JOr7K/ZD6Z2jMV3NHeQ
U2Je6Gi15L8NOmqJvR+0KaRrqxXQ1UPUuKZ5ISdMA/kFV9kb2gDZgE+AldGo
OobUL+hIQ3GvT5XHJTlZHJp+avFg1/iDgGWTtoix3jf1XenOnq29Hu1E2p79
UEUI8fpv13iRruGdbQDuS4GG4ViSF8iw3AhfnOHEGELLwnuT8cIaE0+Lxmiq
oq0Ytv5IDk6nKedsCAzj4S78QyDavd791EdfNffWC3pVB3L9lTWWUDw61Gz3
Hq+0SFR4gEt95W5LutJKwhe+4bdAOOEua+7Q3dcCop0fJ25d0DD3/HyzbXKk
a5BKSLYjOCs1RC+v4XDz9PEXNKXP495IZvRxmenpkutMkZwtrL0SMldmxSAb
pA3KtXmYttLw8IIas8ib/x6oyvcKx3w5PyCsZxB11gly2LUS/NyCQxr44qKP
I9arwKufzlQWqOlRyVRaFs7s35npf8d3p0Re468bQ1Tcdp9IhKebKe3rVVq8
8l3cz6uZW9G5FjoZunZwAbLrQb6Rg9yMz0ERbEEFYK7BMtMlZImc+foGhSD5
G3mtdU1Om4C2uJYhFfnRBVh72MhPmrZjxaY49U/72E8qMohvZcA3oN4f45/9
8wzorwHnJLiha1bdGNeiWILJoNto9uml5dsd9/XMtPIIFSqN0UbY0Y4m1vUv
DJACVkzwBXerS1f8GLpuGExqFYkEVcYZSDXGo/PoWrdtIiueuwf10UxmuRYU
4R0ECTDKDE1VLb9oCCiNPfuQw+rBhIX0CDH/fpTTOrsSZx1vYmzGQx0fpHiT
/bQ3X1/4FpuLCiqEIwzMN8YhmIICaAmvGVM/GOYXSVvd8Gysj/BsXeIPQAV5
2Oh3PjcfTk6UFFenpgSbwN8gfn9/HeOpfgUvmLF7mNz8biDA+WK6fm3xOsnj
fC5a0p/opuKDR2nCNFJblAyXskuCP36ofFcy8+SpK8SQ8iqOD1IKV+GBDq/q
p+rT3lvUODyU0uyIaQuEGsDFaUOTzIaiBEHv1gu6PAzFW9vgqsw8NAMd3HMk
C+/vU2tDLvZdwABXHWavpqMTLISXTPIN9uz0OanB+DjFenc7aSlWY8QnQbQ4
R44WaYkFdTpramm34AVGagvN/VpaQhLKvmKziabvo/PSYHoWAdvRbdxp/3DG
s/adkUdMTxKI0T6TyASjyUqODZPijx/nb9/yKpVjRqp1YTfPrM8Sjvp2AhxG
TptX9Hw6Ht8mri+dOXHiOJRuP/tVRfzFFzvs8cpnOfCItHJhHtbFgK0fXvJm
5js2sn1U/r5LRRNtKyHUQpThb+rg9eHNh62uNDIOskM/NrurPQidAqdVs3HU
gksejY/oBe3UqaxT0jaVRtiy20nK/MU26VOAjsaBPIPB5WIZbDoIVIOsArDf
4Vv8OsAE4tuUQnJXVc+r1HfVRXg9HEOdUJ4gXbxxsjgP2+AjYCQMtu/Ztu1C
N7E/ShQwnLq4PkpSYP8JbmlFA8zOqawq46eJUg2W4xBw2zBVcTX6G6xQOuY+
Finzaqdo06VC1BiSOv8jVNHMZftfh2IQeQm2dPw/GIdCAUbJaoTLrtGHENvN
ETW76w4kMpOLDRub8Nacfk/Q9/oq6T078wda9nV+MaRwGAqQU46PCiyymiNj
n0WSb8OXKqCc95EllGBXGnkSH0hGi3Iho+7wyCOZlJw0NAcouZ2gqugcE2+o
jn0un1z3Bw9tmqxpznKSOTobsPVu6kBsIyrnm9kOfeTHbFc3F2XamxKA8ylk
MHkGwOD3/4gd0mxJy2KI+iPoRXCnFgTGCImNG/tBQPZWpuzLfQvFTj8pV7n5
PFMWuKLEofqQkLmUrBfK0WJ+wGbOudGwy8rXQ5LoqKlHQBgm4pL/B3TZFXWd
Wevog9YHx6cm517tHC6l5l5j1kTgPEidn4U5UQby9OKdxNMv5QRbtOcROKgn
/bLNKNMY619Dy4zCkMX+QhAE7tUnCgWXi7I9oJVGhtlJlXtzh4heVtMrATQM
NrHBsvQ1P4PfVey5Nt6U8v/nVO+RjCQCkLLvWPFk0aLt9mtqLCBqAttbRF9G
lXYpV/kdOHgfwk5LtXoYDwyVBVs4EgINRl48lyzbsaabdNLX9eSV3Tuds81X
RlcTn3A9nVjhWaYYpsi3rX4/5sox9/OTfoAMv3XlfGark761Ut+dOgv/y89I
J6X8oNnBjMJRvRgvJsy+RN8qj/n4S/TeqafuL2htyGRBosLOgTXg1BpaXizB
yN+sYUQqX4fX+59TDEeF+03oJy3UpUhECILRyYdZRK0ZkDHSe+h8I5ZNQ6Fa
4dRdW5fEkizQxImeTK+2CmKtx8cQ/6A5AORfccID8bjbIxWmTvWuL4dKZ/OD
ZaYjS0s7bPLPLXqUf/aoq3H/aOF9z6RgJQQRUCY6BpaZ2pCBFhuiRXaYn57e
b/rwrV5Hi6WwMsGXsiPK8ARLeYoFzFDQT8fpgVfoMEsSquPaMYKaBDxPaQVG
1E26O5XAwXxOi5E/kOR2d2OliAr6wl2iLBTn8o1u2LBCZIsRju+gyrNcLqvB
gG2gLkaf/BikXkQ2pb8NuxYTTd9hrfBTDykuZ7JIMSnMkNjbZMDNM4b7D/1P
sWjkDQJY+q7junaV6t/zFYEOCN++ji5BH3fPvWyzzEBMjxSflZ8ISPC/ylwO
uRZ2xNPECL69qT0x1ZvPjzaNxvmqgq47219UTC9oV7Huwy5F9s7GQePpvYOp
MVoX0GShzHyta0fsqwql2Ru0u233wOK9ZLChh5RJkN4TTL9EFOvg5DLjTDWU
xQ6hU6rnrZGea+2wBxqnA4k7vtdzND/WrYoaoLVy028juazIvazdYxyPgqCH
v/sRLbQqY85ila6MzN7U47KsgjyEpOE5mURXhonuLohF1tsszI9XKUMbuv/D
ar70MPCvr2WagUFFKAbvdiZpxcsBgV88IWyiUSGCQ1pHPoUxtPG+kWE19eNu
yh+MlXhxw2ZdwGffyUt2eQmuovuNax1vM2gG6w2JKYJW04uF1Tr/KLsjXk1k
O5x8s0JGr2E5IYQRBRTJai91QXraNKFwCODpXRnosVHhnOaCjnMsqx7pXCxs
ZTnIfmJPn3UlkCQzpl55L3iSxm6IN6xUVPEJIL1iJAf0Xq/Sm+lyA8cG0xXy
efySzWq9s0mcx7tJv6NPFpkvNoZOgV7lAVjWQxpVdms21PwkDzzGyKelP0Vm
OlBLBwiHuFXByAoAAPsRAABQSwMEFAAJAAgAcwvkVHvPM46WAwAAuQQAABcA
HABnbnVwZy1kb3MvdGVzdC1rZXkuY2VydFVUCQADSXrCYmV6wmJ1eAsAAQTo
AwAABOgDAAD0yFqURf8+nKO0oRmo5NuvU3EEYI/prv0OYBIX+P5VYNfQPYj8
dYlwh6hoJHyjjQUGgNkFFtGth2aPcOAh4XalifyHBstizzXyFhDbHJR5cu3a
/fvDkjQ6ULyY0MxZKOnFec+z9oDHI4wBnhs1Wj8UEih2jkuyCr3wfUpU3FG0
qScSNq6AqEFauJYbtgFPwnObSYGEX3rrFvhi5uuUkzHtuh4n2HbIhErILB9F
nNAro6BxOc43NDKobQ6Y76zCc4RTuDV00g6sUqPqXJtMOWy11Eg9tfq0eRAH
PMt1iyjz89qiBDX1FviX2zruyrQQY+D+sk4+57jNxL24rqfo5Nli/Cj9CviS
ZjnfUgXoNkAXNOGcEkxd92Rr0WagEUyhqgy9HPJKyaUuGhweb4mZiJqhRV4X
fQiRlK2Q3QnFZPQVZ8BC1o7gMtBH4XpC4xXYcXPY/qB6t0hNAlXQAUxb6tin
SmFZS9V5n0wivGYMw8gIYc8yHmVjf6pAf9IsNfJYh9DTISLjYZet3jEv+gU4
ENPvciGJ6g9az/O18SlBa4hGg7JztvLI8wKgkU0zNYJ8aAR9zFMh0VUfljEG
H4kJHFRrPHjBxT5pawHddp66VY8LCbkaOHhgQHOUQTg7+4bwUwKis6EqveDJ
eJCXLmpiisxO/oidMidBkKrlclGKguxjCZw4lhKkUH/i+8iQcAAG8R2RkzWt
wrnYvbEY2ZvLCflswWUI54D4f77GfMsv+lokxLhNsHYz23s2j9u/1bEsCXwV
M/tRLC+16BfHYLomGq0Nl7b0zU0FWwxZYPkYTDbrSGNntGiAn7djdp6LQVVV
zAsveZ5aBiag/VUSIEhhiu41DhVtWCtWjMEL7BS68hDYEE0NP+UNkNKaucgz
HQG09sPhGIXtX6mxJBin5dE5tALPPf49wgSrjvJHjvpjGUTljXqgQh/QLpQc
3ZfB2uMeE751Rc3Ucn5nK5C0hgWjJ0K7DiYY7VUdOJHCXbiH41hXPpxor2Fk
d7tko8xqdLvLoolmZ2OOCacKtDjy5v2RteQeTd9z8Il654SvnDac27/x1kqE
tUR2QBcf4ZRWjSrXN45qBtJXYeeMceBVJNjtvniCLwi3KojpuP6SSCJOR5+o
LoH2DszJ5OZKGSdOHwcwxcGpCQ30gFWBshplSVN+lJWwXpX1PaJ9XQNoYvoD
BmSqhoB7Mhj0OpJWySUsltz9xjhfuZV6nl9QSwcIe88zjpYDAAC5BAAAUEsB
Ah4DFAAJAAgAdQvkVIe4VcHICgAA+xEAABIAGAAAAAAAAQAAAICBAAAAAGdu
dXBnLWRvcy9kZWNvbXAtM1VUBQADTnrCYnV4CwABBOgDAAAE6AMAAFBLAQIe
AxQACQAIAHML5FR7zzOOlgMAALkEAAAXABgAAAAAAAAAAACAgSQLAABnbnVw
Zy1kb3MvdGVzdC1rZXkuY2VydFVUBQADSXrCYnV4CwABBOgDAAAE6AMAAFBL
BQYAAAAAAgACALUAAAAbDwAAAAA=

--8e3+PQ47kSDGSyKs--

--FD9TjVXtkJEy3c31
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmLDSswACgkQsoi1X/+c
IsHyPQ/+OwOB/zq9EInCUaN9RMtbsWqOVIbaslzvQJ0lq/avBKhmvSnSy0j7tkid
M/K6rHqB7zKcLwgihCjPFrg+E9t0Mj5f9xrmMUz/O3UznmED+xgQuBsJ7tpyhjFo
bPcR37pLu9jnMxVLOD+/KGeZND72kzLOYkzdfSADo7flRtTvUbpaYp4n6YT8/DE2
rtOHtqeFhw4EF83fii2Gwr/KMaLQgxzMGEhbZxTJlJuAfmrkNi3+D+u3iBPCxSwP
gGkEREEgW1mBe/y74WlsMF5shichZ25QhhJAF9f6sQ2RhsVbqBUkk9SZth2eM+AZ
nGb54vhilVLd3auNrSfPEp/oSnnHnug/Udz3F2c+V8hsUrVJyQZAIxJo7PULYQAF
2Qsktc9rwGwpBGQjKCEDpwwLoT71kAAuofLBT3ZSyolqCaKpum/6ULK+DvasbpEl
SMkqt7XK1ZMngLtJk7jmqylI7eCUTtV6Ceyn+QaZ0OM6/FuEfv5F61RdnsW/Ql1X
NCgSetD+BtmrlXEMtIyOsvj/RWYWNTrV6EL9N/qnonLDJl56lJzBZVfa8mUeA6x4
vi3VG4Icr+V0K4+q/VzUeAsMf5NA/9bwQjtODKX73f8+6gxAv0UgzknUSuhhmUMB
67djzpgVTfXyvKoqx6IumZ6zKJuBnXhoPLSs6jt4YPdZ+o/cWDE=
=yHsG
-----END PGP SIGNATURE-----

--FD9TjVXtkJEy3c31--
