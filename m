Received: (qmail 3445 invoked by uid 550); 7 Apr 2026 16:37:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1049 invoked from network); 7 Apr 2026 16:28:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=openssl.foundation; s=google; t=1775579324; x=1776184124; darn=lists.openwall.com;
        h=mime-version:user-agent:date:to:from:subject:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NV6LP3LrHcsYl+7CBQ1vuh3ov7G1mXwz0rMRV2BigQ4=;
        b=ZKbFxWFMWJuVIl/kpyw96YPpXoNQmTB3oBtAmjGhwXikbqBrvwC8LVuVwiftbBhjBh
         +dwYtBTBia8rzGP8rlBqdSkt8vcW2bd7p7oRK76F4M0uhX3cEGCPO84HWAqnQU2Ei5In
         2CInL9xBQQMixuZWASWq1Qoi7VdeA+zlmY1HWYBZR8AhNXxtbDRnXwrze8O0SV/QkQHp
         kRw57XPUukACqFA1a2geJL70tNTTN4a0Msh4lXGaE1WyIjxETK7aMWRHo5kjN0ie11KI
         KK/XHyNHo+X3/zTUYVhSXPyXpgKvx59TKsaHYDWjfCjCUdtgOM9IbMKETWIV7GENAOmX
         +Xrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775579324; x=1776184124;
        h=mime-version:user-agent:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NV6LP3LrHcsYl+7CBQ1vuh3ov7G1mXwz0rMRV2BigQ4=;
        b=WKLy88mONYOHnMtN5Z+UKpXkiRGOmF4UJtO45iwS9OXWLr4WapNWdvY+LAeDJw/VjV
         s9hMeF1TfAPZrzElahZIRTXJt8y4+3EfaM7bbJl4EuPLOOTq9apc/fGCiQ4kqXo9vxGP
         cIoeroq8r3tdU4BjTP53mYAQvSZVme/lTTgWR7KyphzyrFadLDaD+yFSfBTdGtlbEtsS
         V6mFPGZhwdyP69zn9BWatSUgpd/AgAzonEllBQJgs0Onn67E9vR2ldkGsVU0yhy/wdLa
         VoaJSSwG3/yUPHAODN7pWx8KKICwQ9yjx60xpSzCiK8U3Ti609IQwpCV40jIWFB8Dm7d
         6f2w==
X-Gm-Message-State: AOJu0Yxezvjh+3hu5BflMrxOOu1ksOl8J/3JJYIdb5yO73BvrzLe38tc
	dspZfNkTpLzmGhrIXEQjGFXbkGKJZ/LtvfEX5FNm36zOToMrsH7xV0YGBjQ+BouDjkfTBRCz1Jo
	v0EWpcfM=
X-Gm-Gg: AeBDieuGoMlMR6hbjavo+VVzoDYuVHo7ZMnmoNOJvTrpUSUYIoKnEW6+2QpNkGZCJ5Y
	ea9J+5uawCVhkvxVUFHb8qMz3qpD7GhiUQm7EwdRG7ZvxnDkXD7TB4GfznzF2Uiws/hRIoRigDD
	alZukoicrO1jxP7urU89u/PA3tQdtiIIf8M52pyNK0dSwotyCVXzRnmtyVihR6AtSiA68Ior8Uk
	4hp7Jg1+8B7fxl53oUIHABpt9Rif4THqafj35ZzdaLiaMAFvmoVfrqn0z3ZHkfRJTRPxZ4A+LYF
	A8F1ZlabtRj/Z6zNme0DHGZ6cZJH/DzZ1Q31DSehDjeEKV7cKDYLm0pOts749Dh+oU12bP9FGFi
	mqUXVIvEs4ioyj7pGAg+e3HVanuVP5d8tf1lkeuDtN7rGZvGABd1Hva1QmA9AXoSg5hLWfEHcjC
	F4VT47r7+Gayi9V4ty3HF5XACk5M5bQy7OKB6N
X-Received: by 2002:a5d:5f85:0:b0:43b:3b80:6776 with SMTP id ffacd0b85a97d-43d292dac9cmr26155634f8f.30.1775579323892;
        Tue, 07 Apr 2026 09:28:43 -0700 (PDT)
Message-ID: <2de6e09f877b50b3fd0e5f3141a49473b80e3f29.camel@openssl.foundation>
From: Tomas Mraz <tomas@openssl.foundation>
To: oss-security@lists.openwall.com
Date: Tue, 07 Apr 2026 18:28:42 +0200
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-FnOZGU1Ooa4N47GYsjxs"
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
MIME-Version: 1.0
Subject: [oss-security] OpenSSL Security Advisory

--=-FnOZGU1Ooa4N47GYsjxs
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

OpenSSL Security Advisory [7th April 2026]
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Incorrect Failure Handling in RSA KEM RSASVE Encapsulation (CVE-2026-31790)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: Moderate

Issue summary: Applications using RSASVE key encapsulation to establish
a secret encryption key can send contents of an uninitialized memory buffer=
 to
a malicious peer.

Impact summary: The uninitialized buffer might contain sensitive data from =
the
previous execution of the application process which leads to sensitive data
leakage to an attacker.

RSA_public_encrypt() returns the number of bytes written on success and -1
on error. The affected code tests only whether the return value is non-zero.
As a result, if RSA encryption fails, encapsulation can still return succes=
s to
the caller, set the output lengths, and leave the caller to use the content=
s of
the ciphertext buffer as if a valid KEM ciphertext had been produced.

If applications use EVP_PKEY_encapsulate() with RSA/RSASVE on an
attacker-supplied invalid RSA public key without first validating that key,
then this may cause stale or uninitialized contents of the caller-provided
ciphertext buffer to be disclosed to the attacker in place of the KEM
ciphertext.

As a workaround calling EVP_PKEY_public_check() or
EVP_PKEY_public_check_quick() before EVP_PKEY_encapsulate() will mitigate
the issue.

The FIPS modules in 3.6, 3.5, 3.4, 3.3, 3.1 and 3.0 are affected by this is=
sue.

OpenSSL 1.0.2 and 1.1.1 are not affected by this issue.

OpenSSL 3.6, 3.5, 3.4, 3.3, 3.0 are vulnerable to this issue.

OpenSSL 3.0 users should upgrade to OpenSSL 3.0.20.

OpenSSL 3.3 users should upgrade to OpenSSL 3.3.7.

OpenSSL 3.4 users should upgrade to OpenSSL 3.4.5.

OpenSSL 3.5 users should upgrade to OpenSSL 3.5.6.

OpenSSL 3.6 users should upgrade to OpenSSL 3.6.2.

This issue was reported by Simo Sorce (Red Hat) on 23rd Feburary 2026.
The fix was developed by Nikola Pajkovsky.

Out-of-bounds Read in AES-CFB-128 on X86-64 with AVX-512 Support (CVE-2026-=
28386)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

Severity: Low

Issue summary: Applications using AES-CFB128 encryption or decryption on
systems with AVX-512 and VAES support can trigger an out-of-bounds read
of up to 15 bytes when processing partial cipher blocks.

Impact summary: This out-of-bounds read may trigger a crash which leads to
Denial of Service for an application if the input buffer ends at a memory
page boundary and the following page is unmapped. There is no information
disclosure as the over-read bytes are not written to output.

The vulnerable code path is only reached when processing partial blocks
(when a previous call left an incomplete block and the current call provides
fewer bytes than needed to complete it). Additionally, the input buffer
must be positioned at a page boundary with the following page unmapped.
CFB mode is not used in TLS/DTLS protocols, which use CBC, GCM, CCM, or
ChaCha20-Poly1305 instead. For these reasons the issue was assessed as
Low severity according to our Security Policy.

Only x86-64 systems with AVX-512 and VAES instruction support are affected.
Other architectures and systems without VAES support use different code
paths that are not affected.

OpenSSL FIPS module in 3.6 version is affected by this issue.

OpenSSL 3.0, 3.3, 3.4, 3.5, 1.1.1 and 1.0.2 are not vulnerable to this issu=
e.

OpenSSL 3.6 is vulnerable to this issue.

OpenSSL 3.6 users should upgrade to OpenSSL 3.6.2.

This issue was reported on 6th January 2026 by Stanislav Fort and Pavel Koh=
out
(Aisle Research).
The fix was developed by Stanislav Fort and Pavel Kohout (Aisle Research).
It was independently reported on 10th March 2026 by Alex Gaynor (Anthropic).

Potential Use-after-free in DANE Client Code (CVE-2026-28387)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: Low

Issue summary: An uncommon configuration of clients performing DANE TLSA-ba=
sed
server authentication, when paired with uncommon server DANE TLSA records, =
may
result in a use-after-free and/or double-free on the client side.

Impact summary: A use after free can have a range of potential consequences
such as the corruption of valid data, crashes or execution of arbitrary cod=
e.

However, the issue only affects clients that make use of TLSA records with =
both
the PKIX-TA(0/PKIX-EE(1) certificate usages and the DANE-TA(2) certificate
usage.

By far the most common deployment of DANE is in SMTP MTAs for which RFC7672
recommends that clients treat as "unusable" any TLSA records that have the =
PKIX
certificate usages.  These SMTP (or other similar) clients are not vulnerab=
le
to this issue.  Conversely, any clients that support only the PKIX usages, =
and
ignore the DANE-TA(2) usage are also not vulnerable.

The client would also need to be communicating with a server that publishes=
 a
TLSA RRset with both types of TLSA records.

No FIPS modules are affected by this issue, the problem code is outside the
FIPS module boundary.

OpenSSL 3.6, 3.5, 3.4, 3.3, 3.0 and 1.1.1 are vulnerable to this issue.

OpenSSL 1.0.2 is not affected by this issue.

OpenSSL 3.6 users should upgrade to OpenSSL 3.6.2.

OpenSSL 3.5 users should upgrade to OpenSSL 3.5.6.

OpenSSL 3.4 users should upgrade to OpenSSL 3.4.5.

OpenSSL 3.3 users should upgrade to OpenSSL 3.3.7.

OpenSSL 3.0 users should upgrade to OpenSSL 3.0.20.

OpenSSL 1.1.1 users should upgrade to OpenSSL 1.1.1zg (premium
support customers only).

This issue was reported on the 8th of January 2026 by Igor Morgenstern (Ais=
le
Research).  The fix was developed by Viktor Dukhovni and Alexandr Nedvedick=
y.

NULL Pointer Dereference When Processing a Delta CRL (CVE-2026-28388)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: Low

Issue summary: When a delta CRL that contains a Delta CRL Indicator extensi=
on
is processed a NULL pointer dereference might happen if the required CRL
Number extension is missing.

Impact summary: A NULL pointer dereference can trigger a crash which
leads to a Denial of Service for an application.

When CRL processing and delta CRL processing is enabled during X.509
certificate verification, the delta CRL processing does not check
whether the CRL Number extension is NULL before dereferencing it.
When a malformed delta CRL file is being processed, this parameter
can be NULL, causing a NULL pointer dereference.

Exploiting this issue requires the X509_V_FLAG_USE_DELTAS flag to be enable=
d in
the verification context, the certificate being verified to contain a
freshestCRL extension or the base CRL to have the EXFLAG_FRESHEST flag set,=
 and
an attacker to provide a malformed CRL to an application that processes it.

The vulnerability is limited to Denial of Service and cannot be escalated to
achieve code execution or memory disclosure. For that reason the issue was
assessed as Low severity according to our Security Policy.

The FIPS modules in 3.6, 3.5, 3.4, 3.3 and 3.0 are not affected by this iss=
ue,
as the affected code is outside the OpenSSL FIPS module boundary.

OpenSSL 3.6, 3.5, 3.4, 3.3, 3.0, 1.1.1 and 1.0.2 are vulnerable to this iss=
ue.

OpenSSL 3.6 users should upgrade to OpenSSL 3.6.2.

OpenSSL 3.5 users should upgrade to OpenSSL 3.5.6.

OpenSSL 3.4 users should upgrade to OpenSSL 3.4.5.

OpenSSL 3.3 users should upgrade to OpenSSL 3.3.7.

OpenSSL 3.0 users should upgrade to OpenSSL 3.0.20.

OpenSSL 1.1.1 users should upgrade to OpenSSL 1.1.1zg
(premium support customers only).

OpenSSL 1.0.2 users should upgrade to OpenSSL 1.0.2zp
(premium support customers only).

This issue was reported on 8th January 2026 by Igor Morgenstern (Aisle
Research). The fix was developed by Igor Morgenstern (Aisle Research).

Possible NULL Dereference When Processing CMS KeyAgreeRecipientInfo (CVE-20=
26-28389)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: Low

Issue summary: During processing of a crafted CMS EnvelopedData message
with KeyAgreeRecipientInfo a NULL pointer dereference can happen.

Impact summary: Applications that process attacker-controlled CMS data may
crash before authentication or cryptographic operations occur resulting in
Denial of Service.

When a CMS EnvelopedData message that uses KeyAgreeRecipientInfo is
processed, the optional parameters field of KeyEncryptionAlgorithmIdentifier
is examined without checking for its presence. This results in a NULL
pointer dereference if the field is missing.

Applications and services that call CMS_decrypt() on untrusted input
(e.g., S/MIME processing or CMS-based protocols) are vulnerable.

The FIPS modules in 3.6, 3.5, 3.4, 3.3 and 3.0 are not affected by this
issue, as the affected code is outside the OpenSSL FIPS module boundary.

OpenSSL 3.6, 3.5, 3.4, 3.3, 3.0, 1.1.1 and 1.0.2 are vulnerable to this iss=
ue.

OpenSSL 3.6 users should upgrade to OpenSSL 3.6.2.

OpenSSL 3.5 users should upgrade to OpenSSL 3.5.6.

OpenSSL 3.4 users should upgrade to OpenSSL 3.4.5.

OpenSSL 3.3 users should upgrade to OpenSSL 3.3.7.

OpenSSL 3.0 users should upgrade to OpenSSL 3.0.20.

OpenSSL 1.1.1 users should upgrade to OpenSSL 1.1.1zg.
(premium support customers only).

OpenSSL 1.0.2 users should upgrade to OpenSSL 1.0.2zp.
(premium support customers only).

This issue was reported on 13th February 2026 by Nathan Sportsman
(Praetorian), on 25th February 2026 by Daniel Rhea, on 15th March 2026
by Jaeho Nam (Seoul National University), on 26th March 2026 by
Muhammad Daffa, on 27th March 2026 by Zhanpeng Liu (Tencent Xuanwu Lab),
Guannan Wang (Tencent Xuanwu Lab) and Guancheng Li (Tencent Xuanwu Lab)
and on 30th March 2026 by Joshua Rogers.
The fix was developed by Neil Horman.

Possible NULL Dereference When Processing CMS KeyTransportRecipientInfo (CV=
E-2026-28390)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: Low

Issue summary: During processing of a crafted CMS EnvelopedData message
with KeyTransportRecipientInfo a NULL pointer dereference can happen.

Impact summary: Applications that process attacker-controlled CMS data may
crash before authentication or cryptographic operations occur resulting in
Denial of Service.

When a CMS EnvelopedData message that uses KeyTransportRecipientInfo with
RSA-OAEP encryption is processed, the optional parameters field of
RSA-OAEP SourceFunc algorithm identifier is examined without checking
for its presence. This results in a NULL pointer dereference if the field
is missing.

Applications and services that call CMS_decrypt() on untrusted input
(e.g., S/MIME processing or CMS-based protocols) are vulnerable.

The FIPS modules in 3.6, 3.5, 3.4, 3.3 and 3.0 are not affected by this
issue, as the affected code is outside the OpenSSL FIPS module boundary.

OpenSSL 3.6, 3.5, 3.4, 3.3, 3.0, 1.1.1 and 1.0.2 are vulnerable to this iss=
ue.

OpenSSL 3.6 users should upgrade to OpenSSL 3.6.2.

OpenSSL 3.5 users should upgrade to OpenSSL 3.5.6.

OpenSSL 3.4 users should upgrade to OpenSSL 3.4.5.

OpenSSL 3.3 users should upgrade to OpenSSL 3.3.7.

OpenSSL 3.0 users should upgrade to OpenSSL 3.0.20.

OpenSSL 1.1.1 users should upgrade to OpenSSL 1.1.1zg.
(premium support customers only).

OpenSSL 1.0.2 users should upgrade to OpenSSL 1.0.2zp.
(premium support customers only).

This issue was reported on 26th March 2026 by Muhammad Daffa, on 27th March
2026 by Zhanpeng Liu (Tencent Xuanwu Lab), Guannan Wang (Tencent Xuanwu Lab)
and Guancheng Li (Tencent Xuanwu Lab), on 30th March 2026 by Joshua
Rogers and on 31st March 2026 by Chanho Kim. The fix was developed by
Neil Horman.

Heap Buffer Overflow in Hexadecimal Conversion (CVE-2026-31789)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: Low

Issue summary: Converting an excessively large OCTET STRING value to
a hexadecimal string leads to a heap buffer overflow on 32 bit platforms.

Impact summary: A heap buffer overflow may lead to a crash or possibly
an attacker controlled code execution or other undefined behavior.

If an attacker can supply a crafted X.509 certificate with an excessively
large OCTET STRING value in extensions such as the Subject Key Identifier
(SKID) or Authority Key Identifier (AKID) which are being converted to hex,
the size of the buffer needed for the result is calculated as multiplication
of the input length by 3. On 32 bit platforms, this multiplication may over=
flow
resulting in the allocation of a smaller buffer and a heap buffer overflow.

Applications and services that print or log contents of untrusted X.509
certificates are vulnerable to this issue. As the certificates would have
to have sizes of over 1 Gigabyte, printing or logging such certificates
is a fairly unlikely operation and only 32 bit platforms are affected,
this issue was assigned Low severity.

The FIPS modules in 3.6, 3.5, 3.4, 3.3 and 3.0 are not affected by this
issue, as the affected code is outside the OpenSSL FIPS module boundary.

OpenSSL 3.6, 3.5, 3.4, 3.3 and 3.0 are vulnerable to this issue.

OpenSSL 1.1.1 and 1.0.2 are not affected by this issue.

OpenSSL 3.6 users should upgrade to OpenSSL 3.6.2.

OpenSSL 3.5 users should upgrade to OpenSSL 3.5.6.

OpenSSL 3.4 users should upgrade to OpenSSL 3.4.5.

OpenSSL 3.3 users should upgrade to OpenSSL 3.3.7.

OpenSSL 3.0 users should upgrade to OpenSSL 3.0.20.

This issue was reported on 16th February 2026 by Quoc Tran (Xint.io - US Te=
am).
The fix was developed by Igor Ustinov.

General Advisory Notes
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

URL for this Security Advisory:
https://openssl-library.org/news/secadv/20260407.txt

Note: the online version of the advisory may be updated with additional det=
ails
over time.

Only currently supported releases have been analysed. OpenSSL 3.1 and 3.2 a=
re
out of support and have not been analysed.

For details of OpenSSL severity classifications please see:
https://openssl-library.org/policies/general/security-policy/

--=-FnOZGU1Ooa4N47GYsjxs
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQJNBAABCgA3FiEE3HAyZir4heL0fyQ/UnRmohynnm0FAmnVMLoZHHRvbWFzQG9w
ZW5zc2wuZm91bmRhdGlvbgAKCRBSdGaiHKeebeP6D/0WIDwPbA2aQxWIAF/X2Pla
DwgfwroFX0udYty6vbMvv+f56CbSqoMddYiYJ6PSYvurVSZK2owilWo5xor5owHd
JgCrNHC/mg8c1EBXpNt7w70VkMhwr3jM//dA37JTwaUeejEliBtKKG2wCZX0BHYF
M9zDRtGquybCgrD41AZF8lkBiut3Z5b2Xyz2D4l2zp7SIrE9V4pFE4yRlWxvh+/W
LRCreTkPjlOSEnRkENJMuxBrdDdTdP+QAap73hjl7J0HoYrjP9UBwYmoKJKuRLre
7fFsrRin/FU67wlGY6E3kyA9cOWIIlX8E5DkoHmKN5DVZwvXjyNOlGXgALGvGbgB
8qIaCNlhK78FbqH96d8wTTCdSiu96m13ehtgQFAtEWbTPEMUpiXxzpRkkoJJLhcI
pZmrZYKkPxXIc4kNlcJi32h37ujaDXBBkmrVQINBGc6b+t5dEBlfWdWge7RjwKki
TNUZ+Zh0eT3eYQOHyp2DvRRIMJZBk5y223/ISQS5tXEQbXY2OX4QY6dCbY3jQcpR
Mz6MPomxDFvNvdJOhNonUJ6uTn8YEOa0WWPuPy5KxJNnKu440ZRoBw1oqDNWAfvk
5FadE090L1JDmasVPlzZd6KnVb01OLppL0/o3idLmIoIwcKf5wn18sQ63/lj17Up
Lym3Xst8tM3zrYZYyH2VeQ==
=CYJa
-----END PGP SIGNATURE-----

--=-FnOZGU1Ooa4N47GYsjxs--
