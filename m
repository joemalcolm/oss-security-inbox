Received: (qmail 22125 invoked by uid 550); 27 Jan 2026 17:17:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1142 invoked from network); 27 Jan 2026 15:20:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=openssl.org; s=google; t=1769527203; x=1770132003; darn=lists.openwall.com;
        h=mime-version:user-agent:date:to:from:subject:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RtA5MvOIbtqRSWoGgkYb/QZIF+ha6IZwPxcWtW9ZnXI=;
        b=SvrulndmT+sbwJE8T6ffhfiILOYb51pG0fb4WjiQPW8z+Z3zlceGmitnYlevTt2UbT
         ++MdouNWr7ZNWqnnSDomLedyJgsu6iZOipXTiQ7BTnotJ6foX6dYC3kndqm2CNj54SWn
         I8cpX/6Nm17nhHgsFXOlM6mpC2b5BGOGFKc2Q4qem5kaYYvSgco55z/mNOFJAgZRPGmZ
         Nj60BnHnAuETUJHOSEoxsBrj3e4r2c9WXTtXxp+/VLYAdrCETLOLb19eGdgTwlzj0AS9
         NIA8D+YAjlWZYP9esfkJ1pulSAFnP+Us1EPSMaUES+bJJIWFX1oSW3KaFwclrQhAwJN7
         /DjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769527203; x=1770132003;
        h=mime-version:user-agent:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RtA5MvOIbtqRSWoGgkYb/QZIF+ha6IZwPxcWtW9ZnXI=;
        b=Cv9sWSp9ByRLblU+Une+/voKhjKPJlgo2wU1jxArDYX0k+opoBCR28kPiqk2y7RSiI
         pjUFQziVAdu6+ipAPetBRItIofLlG6jGBxkLCNciMgSzGIrXmutpkFbCttpdQpLDLICa
         a9n5ThP6NHDj/IfsrAHetkSgOKb2aEH7KY2hNu9SeeUpmm5qlo99l4bXWQXbwvEJuuvY
         Ov1DJ7Q3psZLrlwUkRXyfBF+n3hw57XMYmigJIM4nyMIOvo4wv6ztuC7RsQMEkY8joby
         lux44tIRX4SY6GM3kOR7FFXprjKxe8tdBF6Cjs/KSxqC1XXdzrRdunBLcxXWfpcqe2U9
         LVXw==
X-Gm-Message-State: AOJu0YzC9zCNG4VI54u495sIJBz+MVQ4c7jr41/fr7osXxRg9xcBcqh4
	VuCvemPZG3IaQVb53pSnrb3bo6UWHCbVTkd1mnbk2M6FNrU1AE5wQ/TKW7ZUnlfFiuE2y+XBGa1
	EcJymoHDkIA==
X-Gm-Gg: AZuq6aK95MDg8oHhUzr5P2V7lY2cMfgcoH2m5GWdrxHc3wB47/lCGQ+IJCIlH3jEJmY
	iOvsSnvayjH4bcbRuuVdF3P4s/5qIUGuhVhHJLh/xP0F7G1V/SnRgbC9IXTql/RFzCN35gwOeT5
	nofY5V5cskszllnpfLznPtIQQ65xOIhnlpWhbmpHWg8V3EfeoqdZbMxoRriARF7S+rOHP8IEb1G
	0Ko3ypP2dznKQWh/TBqpFfXW/Jd5x4EpfUaPXi7D/5m/p0XYQM2l/YcDcFOJSKLMvNf4ds3Wcon
	nyd2MIrdgiQqHeqcnxe0pwWRZEHI//ysjN5+PwVGKhuNTs4xbJo/0mB5dXDGNKbIevuixBe8moE
	QD9/pxDhcdwKmDF5b4YOaf5rFh95QqDhl5p8tKkgv1WyQIbVvEWdcrzCW0xynR4yQXR5yTbUHyQ
	s8XlB6h/MO56Z3RWPfarR8amKPEQ==
X-Received: by 2002:a05:600c:8b22:b0:47e:e61d:b8d2 with SMTP id 5b1f17b1804b1-48069c7c4d7mr27497715e9.27.1769527202462;
        Tue, 27 Jan 2026 07:20:02 -0800 (PST)
Message-ID: <4549d0a97c7749169071027e20355b373e2ed893.camel@openssl.org>
From: Tomas Mraz <tomas@openssl.org>
To: oss-security@lists.openwall.com
Date: Tue, 27 Jan 2026 16:20:01 +0100
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-P52WTeM/jja5TWbhxfZ3"
User-Agent: Evolution 3.54.3 (3.54.3-2.fc41) 
MIME-Version: 1.0
Subject: [oss-security] OpenSSL Security Advisory

--=-P52WTeM/jja5TWbhxfZ3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

OpenSSL Security Advisory [27th January 2026]
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Improper validation of PBMAC1 parameters in PKCS#12 MAC verification (CVE-2=
025-11187)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: Moderate

Issue summary: PBMAC1 parameters in PKCS#12 files are missing validation
which can trigger a stack-based buffer overflow, invalid pointer or NULL
pointer dereference during MAC verification.

Impact summary: The stack buffer overflow or NULL pointer dereference may
cause a crash leading to Denial of Service for an application that parses
untrusted PKCS#12 files. The buffer overflow may also potentially enable
code execution depending on platform mitigations.

When verifying a PKCS#12 file that uses PBMAC1 for the MAC, the PBKDF2
salt and keylength parameters from the file are used without validation.
If the value of keylength exceeds the size of the fixed stack buffer used
for the derived key (64 bytes), the key derivation will overflow the buffer.
The overflow length is attacker-controlled. Also, if the salt parameter is
not an OCTET STRING type this can lead to invalid or NULL pointer
dereference.

Exploiting this issue requires a user or application to process
a maliciously crafted PKCS#12 file. It is uncommon to accept untrusted
PKCS#12 files in applications as they are usually used to store private
keys which are trusted by definition. For this reason the issue was assessed
as Moderate severity.

The FIPS modules in 3.6, 3.5 and 3.4 are not affected by this issue, as
PKCS#12 processing is outside the OpenSSL FIPS module boundary.

OpenSSL 3.6, 3.5 and 3.4 are vulnerable to this issue.

OpenSSL 3.3, 3.0, 1.1.1 and 1.0.2 are not affected by this issue as they do
not support PBMAC1 in PKCS#12.

OpenSSL 3.6 users should upgrade to OpenSSL 3.6.1.

OpenSSL 3.5 users should upgrade to OpenSSL 3.5.5.

OpenSSL 3.4 users should upgrade to OpenSSL 3.4.4.

This issue was reported on 11th September 2025 by Stanislav Fort
(Aisle Research) with a follow up report on 21st November 2025 by
Stanislav Fort and Petr =C5=A0ime=C4=8Dek (Aisle Research).
It was also independently reported on 14th October 2025 by Hamza
(Metadust).
The fix was developed by Tomas Mraz.

Stack buffer overflow in CMS AuthEnvelopedData parsing (CVE-2025-15467)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: High

Issue summary: Parsing CMS AuthEnvelopedData message with maliciously
crafted AEAD parameters can trigger a stack buffer overflow.

Impact summary: A stack buffer overflow may lead to a crash, causing Denial
of Service, or potentially remote code execution.

When parsing CMS AuthEnvelopedData structures that use AEAD ciphers such as
AES-GCM, the IV (Initialization Vector) encoded in the ASN.1 parameters is
copied into a fixed-size stack buffer without verifying that its length fits
the destination. An attacker can supply a crafted CMS message with an
oversized IV, causing a stack-based out-of-bounds write before any
authentication or tag verification occurs.

Applications and services that parse untrusted CMS or PKCS#7 content using
AEAD ciphers (e.g., S/MIME AuthEnvelopedData with AES-GCM) are vulnerable.
Because the overflow occurs prior to authentication, no valid key material
is required to trigger it. While exploitability to remote code execution
depends on platform and toolchain mitigations, the stack-based write
primitive represents a severe risk.

The FIPS modules in 3.6, 3.5, 3.4, 3.3 and 3.0 are not affected by this
issue, as the CMS implementation is outside the OpenSSL FIPS module
boundary.

OpenSSL 3.6, 3.5, 3.4, 3.3 and 3.0 are vulnerable to this issue.

OpenSSL 1.1.1 and 1.0.2 are not affected by this issue.

OpenSSL 3.6 users should upgrade to OpenSSL 3.6.1.

OpenSSL 3.5 users should upgrade to OpenSSL 3.5.5.

OpenSSL 3.4 users should upgrade to OpenSSL 3.4.4.

OpenSSL 3.3 users should upgrade to OpenSSL 3.3.6.

OpenSSL 3.0 users should upgrade to OpenSSL 3.0.19.

This issue was reported on 14th December 2025 by Stanislav Fort (Aisle
Research). The fix was developed by Igor Ustinov.

NULL dereference in SSL_CIPHER_find() function on unknown cipher ID (CVE-20=
25-15468)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: Low

Issue summary: If an application using the SSL_CIPHER_find() function in
a QUIC protocol client or server receives an unknown cipher suite from
the peer, a NULL dereference occurs.

Impact summary: A NULL pointer dereference leads to abnormal termination of
the running process causing Denial of Service.

Some applications call SSL_CIPHER_find() from the client_hello_cb callback
on the cipher ID received from the peer. If this is done with an SSL object
implementing the QUIC protocol, NULL pointer dereference will happen if
the examined cipher ID is unknown or unsupported.

As it is not very common to call this function in applications using the QU=
IC=20
protocol and the worst outcome is Denial of Service, the issue was assessed
as Low severity.

The vulnerable code was introduced in the 3.2 version with the addition
of the QUIC protocol support.

The FIPS modules in 3.6, 3.5, 3.4 and 3.3 are not affected by this issue,
as the QUIC implementation is outside the OpenSSL FIPS module boundary.

OpenSSL 3.6, 3.5, 3.4 and 3.3 are vulnerable to this issue.

OpenSSL 3.0, 1.1.1 and 1.0.2 are not affected by this issue.

OpenSSL 3.6 users should upgrade to OpenSSL 3.6.1.

OpenSSL 3.5 users should upgrade to OpenSSL 3.5.5.

OpenSSL 3.4 users should upgrade to OpenSSL 3.4.4.

OpenSSL 3.3 users should upgrade to OpenSSL 3.3.6.

This issue was reported on 13th December 2025 by Stanislav Fort (Aisle Rese=
arch).
The fix was developed by Stanislav Fort (Aisle Research).

"openssl dgst" one-shot codepath silently truncates inputs >16MB (CVE-2025-=
15469)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

Severity: Low

Issue summary: The "openssl dgst" command-line tool silently truncates input
data to 16MB when using one-shot signing algorithms and reports success ins=
tead
of an error.

Impact summary: A user signing or verifying files larger than 16MB with
one-shot algorithms (such as Ed25519, Ed448, or ML-DSA) may believe the ent=
ire
file is authenticated while trailing data beyond 16MB remains unauthenticat=
ed.

When the "openssl dgst" command is used with algorithms that only support
one-shot signing (Ed25519, Ed448, ML-DSA-44, ML-DSA-65, ML-DSA-87), the inp=
ut
is buffered with a 16MB limit. If the input exceeds this limit, the tool
silently truncates to the first 16MB and continues without signaling an err=
or,
contrary to what the documentation states. This creates an integrity gap wh=
ere
trailing bytes can be modified without detection if both signing and
verification are performed using the same affected codepath.

The issue affects only the command-line tool behavior. Verifiers that proce=
ss
the full message using library APIs will reject the signature, so the risk
primarily affects workflows that both sign and verify with the affected
"openssl dgst" command. Streaming digest algorithms for "openssl dgst" and
library users are unaffected.

The FIPS modules in 3.5 and 3.6 are not affected by this issue, as the
command-line tools are outside the OpenSSL FIPS module boundary.

OpenSSL 3.5 and 3.6 are vulnerable to this issue.

OpenSSL 3.4, 3.3, 3.0, 1.1.1 and 1.0.2 are not affected by this issue.

OpenSSL 3.6 users should upgrade to OpenSSL 3.6.1.

OpenSSL 3.5 users should upgrade to OpenSSL 3.5.5.

This issue was reported on 13th December 2025 by Stanislav Fort (Aisle
Research). The fix was developed by Viktor Dukhovni.

TLS 1.3 CompressedCertificate excessive memory allocation (CVE-2025-66199)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: Low

Issue summary: A TLS 1.3 connection using certificate compression can be
forced to allocate a large buffer before decompression without checking
against the configured certificate size limit.

Impact summary: An attacker can cause per-connection memory allocations of
up to approximately 22 MiB and extra CPU work, potentially leading to
service degradation or resource exhaustion (Denial of Service).

In affected configurations, the peer-supplied uncompressed certificate
length from a CompressedCertificate message is used to grow a heap buffer
prior to decompression. This length is not bounded by the max_cert_list
setting, which otherwise constrains certificate message sizes. An attacker
can exploit this to cause large per-connection allocations followed by
handshake failure. No memory corruption or information disclosure occurs.

This issue only affects builds where TLS 1.3 certificate compression is
compiled in (i.e., not OPENSSL_NO_COMP_ALG) and at least one compression
algorithm (brotli, zlib, or zstd) is available, and where the compression
extension is negotiated. Both clients receiving a server CompressedCertific=
ate
and servers in mutual TLS scenarios receiving a client CompressedCertificate
are affected. Servers that do not request client certificates are not
vulnerable to client-initiated attacks.

Users can mitigate this issue by setting SSL_OP_NO_RX_CERTIFICATE_COMPRESSI=
ON
to disable receiving compressed certificates.

The FIPS modules in 3.6, 3.5, 3.4 and 3.3 are not affected by this issue,
as the TLS implementation is outside the OpenSSL FIPS module boundary.

OpenSSL 3.6, 3.5, 3.4 and 3.3 are vulnerable to this issue.

OpenSSL 3.0, 1.1.1 and 1.0.2 are not affected by this issue.

OpenSSL 3.6 users should upgrade to OpenSSL 3.6.1.

OpenSSL 3.5 users should upgrade to OpenSSL 3.5.5.

OpenSSL 3.4 users should upgrade to OpenSSL 3.4.4.

OpenSSL 3.3 users should upgrade to OpenSSL 3.3.6.

This issue was reported on 8th November 2025 by Tomas Dulka (Aisle Research)
and Stanislav Fort (Aisle Research). The fix was developed by Tomas Dulka
(Aisle Research) and Stanislav Fort (Aisle Research).

Heap out-of-bounds write in BIO_f_linebuffer on short writes (CVE-2025-6816=
0)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D

Severity: Low

Issue summary: Writing large, newline-free data into a BIO chain using the
line-buffering filter where the next BIO performs short writes can trigger
a heap-based out-of-bounds write.

Impact summary: This out-of-bounds write can cause memory corruption which
typically results in a crash, leading to Denial of Service for an applicati=
on.

The line-buffering BIO filter (BIO_f_linebuffer) is not used by default in
TLS/SSL data paths. In OpenSSL command-line applications, it is typically
only pushed onto stdout/stderr on VMS systems. Third-party applications that
explicitly use this filter with a BIO chain that can short-write and that
write large, newline-free data influenced by an attacker would be affected.
However, the circumstances where this could happen are unlikely to be under
attacker control, and BIO_f_linebuffer is unlikely to be handling non-curat=
ed
data controlled by an attacker. For that reason the issue was assessed as
Low severity.

The FIPS modules in 3.6, 3.5, 3.4, 3.3 and 3.0 are not affected by this iss=
ue,
as the BIO implementation is outside the OpenSSL FIPS module boundary.

OpenSSL 3.6, 3.5, 3.4, 3.3, 3.0, 1.1.1 and 1.0.2 are vulnerable to this iss=
ue.

OpenSSL 3.6 users should upgrade to OpenSSL 3.6.1.

OpenSSL 3.5 users should upgrade to OpenSSL 3.5.5.

OpenSSL 3.4 users should upgrade to OpenSSL 3.4.4.

OpenSSL 3.3 users should upgrade to OpenSSL 3.3.6.

OpenSSL 3.0 users should upgrade to OpenSSL 3.0.19.

OpenSSL 1.1.1 users should upgrade to OpenSSL 1.1.1ze
(premium support customers only).

OpenSSL 1.0.2 users should upgrade to OpenSSL 1.0.2zn
(premium support customers only).

This issue was reported on 1st December 2025 by Petr Simecek (Aisle Researc=
h)
and Stanislav Fort (Aisle Research). The fix was developed by Stanislav Fort
(Aisle Research) and Neil Horman.

Unauthenticated/unencrypted trailing bytes with low-level OCB function call=
s (CVE-2025-69418)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: Low

Issue summary: When using the low-level OCB API directly with AES-NI or
other hardware-accelerated code paths, inputs whose length is not a multiple
of 16 bytes can leave the final partial block unencrypted and unauthenticat=
ed.

Impact summary: The trailing 1-15 bytes of a message may be exposed in
cleartext on encryption and are not covered by the authentication tag,
allowing an attacker to read or tamper with those bytes without detection.

The low-level OCB encrypt and decrypt routines in the hardware-accelerated
stream path process full 16-byte blocks but do not advance the input/output
pointers. The subsequent tail-handling code then operates on the original
base pointers, effectively reprocessing the beginning of the buffer while
leaving the actual trailing bytes unprocessed. The authentication checksum
also excludes the true tail bytes.

However, typical OpenSSL consumers using EVP are not affected because the
higher-level EVP and provider OCB implementations split inputs so that full
blocks and trailing partial blocks are processed in separate calls, avoiding
the problematic code path. Additionally, TLS does not use OCB ciphersuites.
The vulnerability only affects applications that call the low-level
CRYPTO_ocb128_encrypt() or CRYPTO_ocb128_decrypt() functions directly with
non-block-aligned lengths in a single call on hardware-accelerated builds.
For these reasons the issue was assessed as Low severity.

The FIPS modules in 3.6, 3.5, 3.4, 3.3, 3.2, 3.1 and 3.0 are not affected
by this issue, as OCB mode is not a FIPS-approved algorithm.

OpenSSL 3.6, 3.5, 3.4, 3.3, 3.0 and 1.1.1 are vulnerable to this issue.

OpenSSL 1.0.2 is not affected by this issue.

OpenSSL 3.6 users should upgrade to OpenSSL 3.6.1.

OpenSSL 3.5 users should upgrade to OpenSSL 3.5.5.

OpenSSL 3.4 users should upgrade to OpenSSL 3.4.4.

OpenSSL 3.3 users should upgrade to OpenSSL 3.3.6.

OpenSSL 3.0 users should upgrade to OpenSSL 3.0.19.

OpenSSL 1.1.1 users should upgrade to OpenSSL 1.1.1ze.
(premium support customers only).

This issue was reported on 16th December 2025 by Stanislav Fort (Aisle Rese=
arch).
The fix was developed by Stanislav Fort (Aisle Research).

Out of bounds write in PKCS12_get_friendlyname() UTF-8 conversion (CVE-2025=
-69419)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D

Severity: Low

Issue summary: Calling PKCS12_get_friendlyname() function on a maliciously
crafted PKCS#12 file with a BMPString (UTF-16BE) friendly name containing
non-ASCII BMP code point can trigger a one byte write before the allocated
buffer.

Impact summary: The out-of-bounds write can cause a memory corruption
which can have various consequences including a Denial of Service.

The OPENSSL_uni2utf8() function performs a two-pass conversion of a PKCS#12
BMPString (UTF-16BE) to UTF-8. In the second pass, when emitting UTF-8 byte=
s,
the helper function bmp_to_utf8() incorrectly forwards the remaining UTF-16
source byte count as the destination buffer capacity to UTF8_putc(). For BMP
code points above U+07FF, UTF-8 requires three bytes, but the forwarded
capacity can be just two bytes. UTF8_putc() then returns -1, and this negat=
ive
value is added to the output length without validation, causing the
length to become negative. The subsequent trailing NUL byte is then written
at a negative offset, causing write outside of heap allocated buffer.

The vulnerability is reachable via the public PKCS12_get_friendlyname() API
when parsing attacker-controlled PKCS#12 files. While PKCS12_parse() uses a
different code path that avoids this issue, PKCS12_get_friendlyname() direc=
tly
invokes the vulnerable function. Exploitation requires an attacker to provi=
de
a malicious PKCS#12 file to be parsed by the application and the attacker
can just trigger a one zero byte write before the allocated buffer.
For that reason the issue was assessed as Low severity according to our
Security Policy.

The FIPS modules in 3.6, 3.5, 3.4, 3.3 and 3.0 are not affected by this iss=
ue,
as the PKCS#12 implementation is outside the OpenSSL FIPS module boundary.

OpenSSL 3.6, 3.5, 3.4, 3.3, 3.0 and 1.1.1 are vulnerable to this issue.

OpenSSL 1.0.2 is not affected by this issue.

OpenSSL 3.6 users should upgrade to OpenSSL 3.6.1.

OpenSSL 3.5 users should upgrade to OpenSSL 3.5.5.

OpenSSL 3.4 users should upgrade to OpenSSL 3.4.4.

OpenSSL 3.3 users should upgrade to OpenSSL 3.3.6.

OpenSSL 3.0 users should upgrade to OpenSSL 3.0.19.

OpenSSL 1.1.1 users should upgrade to OpenSSL 1.1.1ze
(premium support customers only).

This issue was reported on 16th December 2025 by Stanislav Fort (Aisle Rese=
arch).
The fix was developed by Norbert Pocs.

Missing ASN1_TYPE validation in TS_RESP_verify_response() function (CVE-202=
5-69420)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D

Severity: Low

Issue summary: A type confusion vulnerability exists in the TimeStamp Respo=
nse
verification code where an ASN1_TYPE union member is accessed without first
validating the type, causing an invalid or NULL pointer dereference when
processing a malformed TimeStamp Response file.

Impact summary: An application calling TS_RESP_verify_response() with a
malformed TimeStamp Response can be caused to dereference an invalid or
NULL pointer when reading, resulting in a Denial of Service.

The functions ossl_ess_get_signing_cert() and ossl_ess_get_signing_cert_v2()
access the signing cert attribute value without validating its type.
When the type is not V_ASN1_SEQUENCE, this results in accessing invalid mem=
ory
through the ASN1_TYPE union, causing a crash.

Exploiting this vulnerability requires an attacker to provide a malformed
TimeStamp Response to an application that verifies timestamp responses. The
TimeStamp protocol (RFC 3161) is not widely used and the impact of the
exploit is just a Denial of Service. For these reasons the issue was
assessed as Low severity.

The FIPS modules in 3.5, 3.4, 3.3 and 3.0 are not affected by this issue,
as the TimeStamp Response implementation is outside the OpenSSL FIPS module
boundary.

OpenSSL 3.6, 3.5, 3.4, 3.3, 3.0 and 1.1.1 are vulnerable to this issue.

OpenSSL 1.0.2 is not affected by this issue.

OpenSSL 3.6 users should upgrade to OpenSSL 3.6.1.

OpenSSL 3.5 users should upgrade to OpenSSL 3.5.5.

OpenSSL 3.4 users should upgrade to OpenSSL 3.4.4.

OpenSSL 3.3 users should upgrade to OpenSSL 3.3.6.

OpenSSL 3.0 users should upgrade to OpenSSL 3.0.19.

OpenSSL 1.1.1 users should upgrade to OpenSSL 1.1.1ze.
(premium support customers only).

This issue was reported on 16th December 2025 by Luigino Camastra (Aisle Re=
search).
The fix was developed by Bob Beck.

NULL Pointer Dereference in PKCS12_item_decrypt_d2i_ex function (CVE-2025-6=
9421)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

Severity: Low

Issue summary: Processing a malformed PKCS#12 file can trigger a NULL point=
er
dereference in the PKCS12_item_decrypt_d2i_ex() function.

Impact summary: A NULL pointer dereference can trigger a crash which leads =
to
Denial of Service for an application processing PKCS#12 files.

The PKCS12_item_decrypt_d2i_ex() function does not check whether the oct
parameter is NULL before dereferencing it. When called from
PKCS12_unpack_p7encdata() with a malformed PKCS#12 file, this parameter can
be NULL, causing a crash. The vulnerability is limited to Denial of Service
and cannot be escalated to achieve code execution or memory disclosure.

Exploiting this issue requires an attacker to provide a malformed PKCS#12 f=
ile
to an application that processes it. For that reason the issue was assessed=
 as
Low severity according to our Security Policy.

The FIPS modules in 3.6, 3.5, 3.4, 3.3 and 3.0 are not affected by this iss=
ue,
as the PKCS#12 implementation is outside the OpenSSL FIPS module boundary.

OpenSSL 3.6, 3.5, 3.4, 3.3, 3.0, 1.1.1 and 1.0.2 are vulnerable to this iss=
ue.

OpenSSL 3.6 users should upgrade to OpenSSL 3.6.1.

OpenSSL 3.5 users should upgrade to OpenSSL 3.5.5.

OpenSSL 3.4 users should upgrade to OpenSSL 3.4.4.

OpenSSL 3.3 users should upgrade to OpenSSL 3.3.6.

OpenSSL 3.0 users should upgrade to OpenSSL 3.0.19.

OpenSSL 1.1.1 users should upgrade to OpenSSL 1.1.1ze
(premium support customers only).

OpenSSL 1.0.2 users should upgrade to OpenSSL 1.0.2zn
(premium support customers only).

This issue was reported on 21st December 2025 by Luigino Camastra (Aisle Re=
search).
The fix was developed by Luigino Camastra (Aisle Research).

General Advisory Notes
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

URL for this Security Advisory:
https://openssl-library.org/news/secadv/20260127.txt

Note: the online version of the advisory may be updated with additional det=
ails
over time.

Only currently supported releases have been analysed. OpenSSL 3.1 and 3.2 a=
re
out of support and have not been analysed.

For details of OpenSSL severity classifications please see:
https://openssl-library.org/policies/general/security-policy/


--=-P52WTeM/jja5TWbhxfZ3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQJGBAABCAAwFiEE3HAyZir4heL0fyQ/UnRmohynnm0FAml416ESHHRvbWFzQG9w
ZW5zc2wub3JnAAoJEFJ0ZqIcp55t61MP/0shjiInG5ivZFx8GbZTJ9XG3cLSCwNz
5Q0vSgj0etUj8b4sDx70PQ+o0OwLG5Wozzzc5bCku+1Hm4njEQCEw2mf3S0f95FT
Saj2tnNpK3QZPdwK9w7bfTo1+jj1VkuXnZZZQWjqoi+hhHj9XBfmy1JeYBQMyOn/
ziHLCFFJNBL9FzLjk13pgie3GVujUfo2agELe0FDwLHmDThEA+FCgmqJOBPrHopf
YLGaUesbJGJ6V9GK30PUUYfrttx7N1N3X0SOzPWTU9cyPSNXsI/nGnHHYYxuVhAY
wp+m5iZNFf5wOeLc84/1yQO15SrEmvjcUJRcRrMNdRq1Wnk473jpRKr/+xoC2QLD
9OlrMPD+ROPSby6mcFyegYYaAPt+zrbvqSMnv28kBlEnsIDA9MJQrIG3B1C+r7iw
vn9kfs60nQ00rqk40R8Y6j5s2hEJni9W0QtjyAhUIlj4fJKzszG2fIZPqSd+XDXW
l/h9zlWMqqvpgNbzv9FKkhd6M8s/QaoeaiwAQzkzvCRDln2Sg6lUt7F7PH4Ht7di
ZntcOtE+PwfoKFQycA1sAzQn0MJ8LxMe1OkQ7GKtqZt6pAw0gvdvB+P3ZYtqQz7s
p9AJV4mKoCL0OJKnayBv4h1X794rhRoN2sjs8CV9Y6Jc2zlGJblkky75lt89qAFp
b7rwK6KMa3kv
=Fgeq
-----END PGP SIGNATURE-----

--=-P52WTeM/jja5TWbhxfZ3--
