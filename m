X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/24/5
Message-ID: <3df7e2a7-2c9d-41c8-88aa-2a478e51f553@oracle.com>
Date: Fri, 24 Apr 2026 16:09:34 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: rust-openssl-v0.10.78 fixes 5 CVEs
Content-Type: text/plain; charset=utf-8

https://github.com/rust-openssl/rust-openssl/releases/tag/openssl-v0.10.78
was released on April 19, with a number of fixes, including these 5
security advisories:

https://github.com/rust-openssl/rust-openssl/security/advisories/GHSA-pqf5-4pqq-29f5 advises:
> Deriver::derive and PkeyCtxRef::derive can overflow short buffers on
> OpenSSL 1.1.1
> 
> Moderate
> alex published GHSA-pqf5-4pqq-29f5 Apr 19, 2026
> 
> Package:           openssl (Rust)
> Affected versions: >=0.9.27
> Patched versions:  0.10.78
> 
> Description:
> 
> Deriver::derive (and PkeyCtxRef::derive) sets len = buf.len() and passes it
> as the in/out length to EVP_PKEY_derive, relying on OpenSSL to honor it.
> On OpenSSL 1.1.x, X25519, X448, DH and HKDF-extract ignore the incoming
> *keylen, unconditionally writing the full shared secret (32/56/prime-size
> bytes). A caller passing a short slice gets a heap/stack overflow from safe
> code. OpenSSL 3.x providers do check, so this only impacts older OpenSSL.
> 
> Severity: Moderate
> CVE ID:   CVE-2026-41676

https://github.com/rust-openssl/rust-openssl/security/advisories/GHSA-xmgf-hq76-4vx2 states:
> Out-of-bounds read in PEM password callback when user callback returns
> an oversized length
> 
> Low
> alex published GHSA-xmgf-hq76-4vx2 Apr 19, 2026
> 
> Package:           openssl (Rust)
> Affected versions: >=0.9.0
> Patched versions:  0.10.78
> 
> Description:
> 
> The *_from_pem_callback APIs did not validate the length returned by the
> user's callback. A password callback that returns a value larger than the
> buffer it was given can cause some versions of OpenSSL to over-read this
> buffer. OpenSSL 3.x is not affected by this.
> 
> Severity: Low
> CVE ID:   CVE-2026-41677

https://github.com/rust-openssl/rust-openssl/security/advisories/GHSA-8c75-8mhr-p7r9 cautions:
> Incorrect bounds assertion in aes key wrap
> 
> Moderate
> alex published GHSA-8c75-8mhr-p7r9 Apr 19, 2026
> 
> Package:           openssl (Rust)
> Affected versions: >=0.10.24
> Patched versions:  0.10.78
> 
> Summary:
> 
> aes::unwrap_key() has an incorrect bounds assertion on the out buffer size,
> which can lead to out-of-bounds write.
> 
> Details:
> 
> aes::unwrap_key() contains an incorrect assertion: it checks that
> `out.len() + 8 <= in_.len()`, but this condition is reversed.
> The intended invariant is `out.len() >= in_.len() - 8`, ensuring
> the output buffer is large enough.
> 
> Because of the inverted check, the function only accepts buffers at
> or below the minimum required size and rejects larger ones. If a
> smaller buffer is provided the function will write past the end of `out` by
> `in_.len() - 8 - out.len()` bytes, causing an out-of-bounds write from a
> safe public function.
> 
> Impact:
> 
> Vulnerable applications using AES keywrap and allowing attacker controlled
> buffer sizes could have an attacker trigger an out-of-bounds write.
> 
> Severity: Moderate
> CVE ID:   CVE-2026-41678

https://github.com/rust-openssl/rust-openssl/security/advisories/GHSA-ghm9-cr32-g9qj alerts:
> MdCtxRef::digest_final() writes past caller buffer with no length check
> 
> Moderate
> alex published GHSA-ghm9-cr32-g9qj Apr 19, 2026
> 
> Package:           openssl (Rust)
> Affected versions: >v0.10.39
> Patched versions:  0.10.78
> 
> Description:
> 
> EVP_DigestFinal() always writes EVP_MD_CTX_size(ctx) to the out buffer.
> If out is smaller than that, MdCtxRef::digest_final() writes past its end,
> usually corrupting the stack. This is reachable from safe Rust.
> 
> Severity: Moderate
> CVE ID:   CVE-2026-41681

https://github.com/rust-openssl/rust-openssl/security/advisories/GHSA-hppc-g8h3-xhp3 warns:
> Unchecked callback-returned length in PSK and cookie generate trampolines
> can cause OpenSSL to leak adjacent memory to the network peer
> 
> Moderate
> alex published GHSA-hppc-g8h3-xhp3 Apr 19, 2026
> 
> Package:           openssl (Rust)
> Affected versions: >=0.9.24
> Patched versions:  0.10.78
> 
> Description:
> 
> The FFI trampolines behind SslContextBuilder::set_psk_client_callback,
> set_psk_server_callback, set_cookie_generate_cb, and
> set_stateless_cookie_generate_cb forwarded the user closure's returned
> usize directly to OpenSSL without checking it against the &mut [u8] that
> was handed to the closure. This can lead to buffer overflows and other
> unintended consequences.
> 
> Severity: Moderate
> CVE ID:   CVE-2026-41898
