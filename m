X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/28/1
Message-ID: <5bc3b155-a835-46f0-a5c4-301c50a23277@oracle.com>
Date: Tue, 27 Oct 2026 17:17:41 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Three TLS Bugs in GoAhead web server prior to 6.1.1
Content-Type: text/plain; charset=utf-8

EmbedThis GoAhead is an embeddable web server available under GPL or
commercial license (see https://github.com/embedthis/goahead ).

It can be compiled against a choice of TLS backends.

https://foxio.io/blog/choose-your-backend-three-tls-bugs-in-goahead
discloses vulnerabilities in the GoAhead code for three of those
backends: OpenSSL, LibreSSL, and Mbed TLS.

The TLDR section on that page says:
> GoAhead is used in hundreds of millions of IoT, Firewall, OT, and
> Military devices including those from Palo Alto Networks, Comcast,
> D-Link, HP, Canon, Honeywell, GE, Oracle, Siemens, Rockwell, Digi,
> Lockheed Martin, Boeing, and more.
> 
> Three independent bugs in GoAhead's TLS integrations can leave revoked
> client certificates accepted, encrypted sessions recoverable to an
> observer or a configured chain-depth limit unenforced. Exposure
> depends on the TLS library and the verification settings built into
> the device:
> 
> * OpenSSL-compatible backend - Critical, CVSS 9.1 - CRL loaded but not
>   enforced, revoked client certificates are silently accepted.
>   GOAHEAD-SA-2026-0006.
> 
> * LibreSSL legacy verifier - High, CVSS 7.4 - An over-depth client chain
>   is accepted when client certificates are required but issuer checking
>   is disabled. This bypasses the chain-depth restriction.
>   GOAHEAD-SA-2026-0004.
> 
> * Mbed TLS - Medium, CVSS 5.9 - A buffer-length typo reduces a 2048-bit
>   DH modulus to one byte. TLS 1.2 DHE_RSA sessions are decryptable when
>   the client accepts the broken parameters. GOAHEAD-SA-2026-0005.
> 
> 
> TLS build:                      OpenSSL-compatible backend
> GoAhead versions:               >= 3.4.5, <= 6.1.0
> Required configuration:         mTLS enabled with a CRL configured. Revoked
>                                 client certificates remain accepted even with
>                                 issuer verification enabled.
> Fix or mitigation:              Upgrade to 6.1.1 or later.
> 
> 
> TLS build:                      Mbed TLS backend
> GoAhead versions:               >= 4.0.2, <= 6.1.0
> Required configuration:         TLS 1.2 DHE_RSA negotiated with a client
>                                 that accepts the broken DH parameters.
> Fix or mitigation:              Upgrade to 6.1.1 or later, disable finite-field
>                                 DHE suites, or use the OpenSSL backend.
> 
> 
> TLS build:                      LibreSSL legacy verifier — 3.2.x or 3.3.2–3.3.6
> GoAhead versions:               <= 6.1.0
> Required configuration:         VERIFY_PEER=1 and VERIFY_ISSUER=0.
>                                 An over-depth client chain is accepted.
> Fix or mitigation:              Enable VERIFY_ISSUER=1 with a trusted CA bundle,
>                                 or use OpenSSL / LibreSSL 4.x.



The web page then goes into much further detail I've not included here.

These seem to correspond to these GHSA advisories in their repo:

https://github.com/embedthis/goahead/security/advisories/GHSA-5m75-xq69-c3c5
  OpenSSL CRL loaded but not enforced in GoAhead sslOpen() (src/openssl.c):
  revoked client certificates are silently accepted

https://github.com/embedthis/goahead/security/advisories/GHSA-fmvx-2xfx-2gq4
  MbedTLS DH parameter truncation destroys forward secrecy: a length typo in
  sslOpen() (src/mbedtls.c) transmits a 1-byte DH modulus on TLS 1.2 DHE-RSA
  handshakes

https://github.com/embedthis/goahead/security/advisories/GHSA-r392-vqwx-3r4g
  mTLS client-certificate bypass: GoAhead's verifyClientCertificate() depth
  guard is skipped when the verifier reports a prior error, accepting an
  over-depth client chain on LibreSSL legacy-verifier builds

https://github.com/embedthis/goahead/security lists additional vulnerabilities
fixed in their 6.1.1 release.
