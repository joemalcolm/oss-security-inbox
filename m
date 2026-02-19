Received: (qmail 15489 invoked by uid 550); 19 Feb 2026 19:32:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3795 invoked from network); 19 Feb 2026 18:35:31 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1771526122; cv=none;
        d=google.com; s=arc-20240605;
        b=GmJXSceeT0fK2sv6hf/LGf7Dy397W00KzaRzGdE/jc7wjfGlgYNf+vjUO5sY35AlOg
         vBg8oWZ+XIP28Ok5vtfReF1yJxx08+h/XR/0YhH0gRtmBtquxcD3NEKLDenqnx12q4Sy
         723IPEPTfgtr9rRYXOzdxwcvcPH72gShTjEVG6Arsw4p7qn7jDr/fZ8XDKAmur9hVUAB
         9kBKyR1v3tRt5uYMlFS6RRllzfJjBUZbp+b2aPJ3ezQISfUQBi83s91FKfy7F2612F/H
         YdiemCgvgE3a1PneiEUIkNbd/QHLe1DX6ybYIbM0auKv5xfesyGlrptn4BTsmKD+e6OC
         D4Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=C6nBmMasb+EB3GhBuv+O1ZThI1fzh/oLZxYOg+TLEno=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=RSB5EkLETamEySWTWRDmrJHNWiR7wqqJToNfDWfdSqE8rZR4KE8j0oBjDKKkF0lyqU
         bIgBfUBtwx9WH+U0riGTOY1DpymB5yKOikjAm81blOOEJAB/Q5R2mc9YShXvO1HoKSOv
         AsMa1e2GxPYmkorsNdz8BRd0ok0psyiUTTCcG7FrqSzEzsarfex/jhA4sPq02Nqplw5X
         2RSBJpv/3WSqXUcJlZyxzgPFAeedKZi3TjaavJEaJF+VWJmmBDvl2y/ArR4sZto8SL17
         pDWrqhLbg+FXsMBAasTeHsVaS+GW05xB869wlRA3xOIWle3lPyBpahBfn7eqIpJ0PAUc
         fGAA==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771526122; x=1772130922; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C6nBmMasb+EB3GhBuv+O1ZThI1fzh/oLZxYOg+TLEno=;
        b=B5qBPTXG8lm04iDxsJOg93o/Csb9NDKBdsWVxP0TKUp8PSsj6YWcYaN0WC68Dn+clx
         qUoAjWNakgT2RadtKF8xm0Wk0xbDCvw7x+rqFLPr9dap9qhFqwSn4jDW0FHHD804/Qdn
         2CYWktvRK1WUsbZ9nnc2h/K8XdRdOgmiSSc+2w2jH0BRu3zHzhTkv7SuYFCsR6jtTdnY
         68xadKxFUZqiVZDzxsHSfgEdi6nAyRYnnDtkqGa2mSszSGH4foDTJJE+XLWpiTxRQqhw
         MyWdrf1GLrTX0RJz8K3DHa917tlMcNAYeor+2ZsxYTRWzf8SP6ZLxGXdlebgB/3/RsI9
         jk5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771526122; x=1772130922;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C6nBmMasb+EB3GhBuv+O1ZThI1fzh/oLZxYOg+TLEno=;
        b=U+KGvIEZyEdDwaHV6n6v5M40FWBRGTZS14nCuCENslfSMStFpkFMtLu4giuBoDIOZC
         9gmmWQCHoUuLl/pBztY6UYBKbTaHPTgdTTcPy8LDua/B25cPMwBT4Xb94fFVIFV7XeLS
         xScpXdVGBkTnpuqZbB6SXNlR4adJMHskVahI8O8FLEqaDK2TdQ+EOKbWKfbA7ZAzdC/G
         f1E2IT7ipQhCgcm/bSOQGqjad6GDpSrUssjDR5YlCxUNxHkgN6C6nBE/CeHzIUiA32xl
         /J0wJhc8bNd9OQHkLgQpJWq1hjfwlxMg6nW3XWnhFiynJitMkssPOHBKGbU8m9WPol7w
         xrGw==
X-Gm-Message-State: AOJu0YxaRdoIqT5Uskm1YoCTndNduD3NYisAk6i8QVuBnw/k8Krakmvz
	EMxqSaiLdO4O4sV0CulWAY3fC209F7dVpccobACwlJDPq3LPKWcXg29YRW7B3wK73J5Lz5cg7zV
	TWVwvTzLxYFBTNG+eTdfEpnEM15/wBIYnZpkGNEUSsw==
X-Gm-Gg: AZuq6aJ6IKr8Q2abnOuQe8Q+1naJoemVbawBuyI5pq126Xn9HB6IZcVhupsi2o1EZ4g
	K5GD38RhUq+0mom7dCaiAjubfv67gSYU1orKzixRK7O5Cy5pFPdqYt4yirX3+Rg+Ly7+UOeRkGD
	+Rus8XJkdAOGmD7vWbrTWdKc7vF13snaLi3FoIgrwqaaECuwvFXSe0eMis/R9rwbBKgTbpDlUds
	ht51C/jVK9zuktH4u5Tm0sRR8+r5YWkoT+yQsNyoUFuvlW3ofH9AmfEdVgWaB8qLdkjJHu6FdGX
	eW+8OzOr27jLe5Rm0Kgn453rJoxx8tADyQrcAZZrWaTzNDoaxV85A0ARWuz+ypEx1ucjl/BO+51
	T5TtIXOM3UoUYlR4KYbXtLyo7DOzcGVI9ct9Eml+g2mLA7sj6sdNh5yU=
X-Received: by 2002:ac2:4c49:0:b0:59e:49f8:c678 with SMTP id
 2adb3069b0e04-59f6d3590c2mr6299294e87.22.1771526121789; Thu, 19 Feb 2026
 10:35:21 -0800 (PST)
MIME-Version: 1.0
References: <2e0fe4b0-8508-428f-9472-34c0421326a7@oracle.com>
In-Reply-To: <2e0fe4b0-8508-428f-9472-34c0421326a7@oracle.com>
From: Soatok Dreamseeker <soatok.dhole@gmail.com>
Date: Thu, 19 Feb 2026 13:35:10 -0500
X-Gm-Features: AaiRm50QDs03DbPtYmo9Sn-cPXF6qDvrA7JJhadi0xA7BqNiCOFQ2twp1cRipZw
Message-ID: <CAOvwWh1b_Bhpn6cuqb7pQn1hbhj6F1Bn2tjLUJqjwr7fySrvPQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000331ef6064b3191d0"
Subject: Re: [oss-security] Default IV & other issues in aes-js & pyaes
 modules, & strongMan VPN manager

--000000000000331ef6064b3191d0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alan,

On Thu, Feb 19, 2026 at 1:27=E2=80=AFPM Alan Coopersmith <alan.coopersmith@=
oracle.com> wrote:
> https://blog.trailofbits.com/2026/02/18/carelessness-versus-craftsmanship=
-in-cryptography/
> reports:
> > Two popular AES libraries, aes-js and pyaes, =E2=80=9Chelpfully=E2=80=
=9D provide a default IV
> > in their AES-CTR API, leading to a large number of key/IV reuse bugs. T=
hese
> > bugs potentially affect thousands of downstream projects.

> > strongMan is a web-based management tool for folks using the strongSwan=
 VPN
> > suite. It allows for credential and user management, initiation of VPN
> > connections, and more. It=E2=80=99s a pretty slick piece of software; i=
f you=E2=80=99re into
> > IPsec VPNs, you should definitely give it a look.

> > There will be a security advisory for strongMan issued in conjunction w=
ith this
> > fix, outlining the nature of the problem, its severity, and the measure=
s taken
> > to address it. Everything will be out in the open, with full transparen=
cy for
> > all strongMan users.

That strongMan patch is refreshing to see:

The latest version fixes the issue by switching to AES-GCM-SIV encryption
> with a random nonce and an individually derived encryption key, using HKD=
F,
> for each encrypted value. Database migrations are provided to automatical=
ly
> re-encrypt all credentials.


The patch is also pretty small:

diff --git a/requirements.txt b/requirements.txt
index 6cf1caa..111fa76 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -1,6 +1,7 @@
 Django=3D=3D4.2.28
 git+https://github.com/wbond/oscrypto.git@1547f535001ba568b239b87974655367=
59c742a3
 asn1crypto=3D=3D1.5.1
+cryptography=3D=3D46.0.3
 pyaes=3D=3D1.6.1
 django-tables2=3D=3D2.3.4
 vici=3D=3D5.8.4
diff --git a/strongMan/helper_apps/encryption/fields.py
b/strongMan/helper_apps/encryption/fields.py
index f574782..3af11eb 100644
--- a/strongMan/helper_apps/encryption/fields.py
+++ b/strongMan/helper_apps/encryption/fields.py
@@ -1,11 +1,16 @@
 '''
 https://github.com/orcasgit/django-fernet-fields
 '''
+import os
+
 from django.conf import settings
 from django.core.exceptions import FieldError, ImproperlyConfigured
 from django.db import models
 from django.utils.encoding import force_bytes, force_str
 from django.utils.functional import cached_property
+from cryptography.hazmat.primitives import hashes
+from cryptography.hazmat.primitives.ciphers.aead import AESGCMSIV
+from cryptography.hazmat.primitives.kdf.hkdf import HKDF
 from pyaes import aes as aeslib

 __all__ =3D [
@@ -20,7 +25,7 @@


 class EncryptedField(models.Field):
-    """A field that encrypts values using Fernet symmetric encryption."""
+    """A field that encrypts values using AES-GCM-SIV symmetric encryption=
."""
     _internal_type =3D 'BinaryField'

     def __init__(self, *args, **kwargs):
@@ -42,12 +47,24 @@ def __init__(self, *args, **kwargs):
         super(EncryptedField, self).__init__(*args, **kwargs)

     def encrypt(self, value):
-        aes =3D aeslib.AESModeOfOperationCTR(self.key)
-        return aes.encrypt(value)
+        # we use a random nonce for the encryption and to generate an
individual encryption key, which is
+        # then concatenated and separated by a : from the ciphertext
+        nonce =3D os.urandom(12)
+        # leave the salt intentionally blank
+        hkdf =3D HKDF(algorithm=3Dhashes.SHA256(), length=3D32, salt=3Db'',
info=3Dnonce + b'EncryptedField')
+        aesgcmsiv =3D AESGCMSIV(hkdf.derive(self.key))
+        return nonce + b':' + aesgcmsiv.encrypt(nonce, value, None)

     def decrypt(self, value):
-        aes =3D aeslib.AESModeOfOperationCTR(self.key)
-        return aes.decrypt(value)
+        # decrypt unsafe legacy values if we don't find a nonce
+        if len(value) < 13 or value[12] !=3D b':'[0]:
+            aes =3D aeslib.AESModeOfOperationCTR(self.key)
+            return aes.decrypt(value)
+        # <12-byte nonce>:<ciphertext>
+        nonce =3D value[:12]
+        hkdf =3D HKDF(algorithm=3Dhashes.SHA256(), length=3D32, salt=3Db'',
info=3Dnonce + b'EncryptedField')
+        aesgcmsiv =3D AESGCMSIV(hkdf.derive(self.key))
+        return aesgcmsiv.decrypt(nonce, value[13:], None)

     @cached_property

     def key(self):


Hell, it even uses HKDF correctly
<https://soatok.blog/2021/11/17/understanding-hkdf/>. Most people screw
HKDF up in a way that only security proof authors really care about, and
they didn't.

Just wanted to say: As awful as pyaes and aes-js are, seeing this high
quality work in response to the disclosure is a little heartwarming.

--000000000000331ef6064b3191d0--
