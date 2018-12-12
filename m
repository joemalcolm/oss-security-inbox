X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2317" "Wednesday" "12" "December" "2018" "16:27:02" "+0100" "=?UTF-8?B?U2FsdmEgUGVpcsOz?=" "speirofr@gmail.com" "<CA+NXwpT9J40mJe_=h-R==qJBc=9PA+-80b8p4gdaJ=uy_JhMJg@mail.gmail.com>" "80" "[oss-security] CVE Request: mini-httpd (<= v1.30) is affected by a response discrepancy information exposure (CWE-204)" "^Cc:" nil nil "12" "2018121215:27:02" "[oss-security] CVE Request: mini-httpd (<= v1.30) is affected by a response discrepancy information exposure (CWE-204)" (number mark "U       speirofr@gma Dec 12   80/2317  " thread-indent "\"[oss-security] CVE Request: mini-httpd (<= v1.30) is affected by a response discrepancy information exposure (CWE-204)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22375 invoked by uid 550); 12 Dec 2018 15:40:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1151 invoked from network); 12 Dec 2018 15:27:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=+vgoc5/m77CAUU2NxK/iWj8e5UdoGSTXayjfthkIw3Q=;
        b=tdH87arqKHoH/pLivum3PCERcGSk4VL1W+Y3PbHcuxZoBQ+3ZY3JYwxO/HYlKQV0Vv
         yJdNS3ACps9BdgD+cCNfd4DkKPoJc+UjgJldqsxV3vmJoTjVHtjElBEetN4h72PcL62m
         ZTfE3dqPcgpd9+pI6ypA8S/J0BZWDQr5g3cY/ivpTCylcg8ZaNgKdoypHQ/pEMWfBO2T
         9DyWmT2T9EWvxVZ/IFu57A3ybNiw9eFaghOfZyy1rcDfslUWi9cSQiWrSb9lsh2W2KTe
         o3BjWE/8HlNVSqOCfBt/ZGMn6HeHH0maQxN4+yo7oFQyqXTQFIswsfZNwlfUJb/8wzD8
         TAsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=+vgoc5/m77CAUU2NxK/iWj8e5UdoGSTXayjfthkIw3Q=;
        b=pzVHazrNLVUZ1WO2MW7Ia1MIEPEVMTdyv3jWqz85IUmsxNYv2AhTV0ht7jYfqULBiP
         rHrF4ExGK3LXH/eluruDNhGc4yD1VHJvNysVxeTEnIdUha2j/JY3ouR3ngymfArveRPM
         D2yao5pwzYVfxP8Gh1+Td3dmihcrNqqOI8N8yWiO3U0kfB0ABVwry0MQuAYuwP2THOPR
         k2xcc5BtrFCskLbwU2arqVADgl92toa0+pD9JYX6o2j8FwftH/BDw9pu8CWbS+fR5W09
         kSCsMlgeJvmRsU9/dAuUDLu2ZiNt6ayNtlM/1breSiwiR8F/9LpssAdvyZiDjXg+ORR5
         6szg==
X-Gm-Message-State: AA+aEWbwZczZPl3RVeASmge7zyj03Ee/VHo7ISz/GmOKqFjUAW8aOHdT
	efsnZ4o/pq/6pUGSfP6meU1+V3RwvvkvzPrTIgJ+rkoY
X-Google-Smtp-Source: AFSGD/UNURwUbVCVpB4hz+md7IHBFbjk0P4Mh9M5Pur5lKtgh4EPLIeclizKtezsBz0bo6JEuQ8QvslQP0TP0wQJdP8=
X-Received: by 2002:a37:360a:: with SMTP id d10mr18437685qka.40.1544628433210;
 Wed, 12 Dec 2018 07:27:13 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CA+NXwpT9J40mJe_=h-R==qJBc=9PA+-80b8p4gdaJ=uy_JhMJg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000125310057cd4d572"
Cc: security@debian.org
Date: Wed, 12 Dec 2018 16:27:02 +0100
From: =?UTF-8?B?U2FsdmEgUGVpcsOz?= <speirofr@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: mini-httpd (<= v1.30) is affected by a response
 discrepancy information exposure (CWE-204)
To: oss-security@lists.openwall.com

--000000000000125310057cd4d572
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

The mini-httpd daemon (version <=3D v1.30) shipped in Debian/Ubuntu from [1]
is affected by a response discrepancy information exposure (CWE-204) that
enables an attacker to remotely enumerate valid htpasswd usernames (RFC
7617).

A more detailed advisory can be found at:
https://speirofr.appspot.com/files/advisory/SPADV-2018-01.md
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D916190

Is there a CVE for this? If not, could one be assigned, please?

[1] http://www.acme.com/software/mini_httpd/

Best Regards,
--
Salva Peir=C3=B3. Software Engineer
https://speirofr.appspot.com

##  Description

Requesting an .htpasswd protected URL with a valid username part without
providing the corresponding password eg, "user:" per (RFC 7617)
causes the mini-httpd to unexpectedly terminate.

~~~
user@box $ curl http://user:@127.0.0.1:8000/auth/
curl: (52) Empty reply from server
~~~

The problem is that the mini_httpd.c:2407 contains a NULL pointer
dereference bug
that allows a remote attacker to enumerate valid htpasswd usernames (RFC
7617).

## Proposed Fix

~~~
=46rom 62eff179b34cd1435017438ab99ed1906b6cc6c8 Mon Sep 17 00:00:00 2001
From: =3D?UTF-8?q?Salva=3D20Peir=3DC3=3DB3?=3D <speirofr@gmail.com>
Date: Wed, 5 Dec 2018 18:46:46 +0100
Subject: [PATCH] Fix NULL pointer dereference at mini_httpd.c:2407
(SPADV-2018-01)

---
 mini_httpd.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/mini_httpd.c b/mini_httpd.c
index 03d0cdd..77f030f 100644
--- a/mini_httpd.c
+++ b/mini_httpd.c
@@ -2404,7 +2404,8 @@ auth_check( char* dirname )
         /* Yes. */
         (void) fclose( fp );
         /* So is the password right? */
-        if ( strcmp( crypt( authpass, cryp ), cryp ) =3D=3D 0 )
+        char *cryptpass =3D crypt( authpass, cryp );
+        if ((cryptpass !=3D NULL) && (strcmp(cryptpass, cryp ) =3D=3D 0) )
         {
         /* Ok! */
         remoteuser =3D line;
--
2.11.0
~~~

## Versions affected

All versions of mini-httpd below <=3D v1.30.
    http://www.acme.com/software/mini_httpd/

Debian: https://packages.debian.org/stretch/mini-httpd
Ubuntu: https://launchpad.net/ubuntu/+source/mini-httpd

--000000000000125310057cd4d572--
