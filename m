X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/2
Message-ID: <b3f12f97-bfe8-482d-a7eb-226746350d59@oracle.com>
Date: Mon, 3 Aug 2026 19:04:10 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Bouncy Castle 1.85 release fixes 32 CVEs
Content-Type: text/plain; charset=utf-8

https://www.bouncycastle.org/resources/new-release-bouncy-castle-java-1-85/
announces the July 28 release of Bouncy Castle Java 1.85, "bringing
significant advances in post-quantum cryptography, PKI migration,
electronic signatures, secure messaging, and blockchain support."

It also says the release contains fixes for the following CVEs:

     CVE-2026-8763 - Name Constraints bypass via trailing dot in rfc822Name and URI.
     CVE-2026-12185 - BKS/UBER keystore allocates from untrusted lengths before integrity check.
     CVE-2026-12802 - CMS AuthEnvelopedData fails to enforce tag-length on decryption.
     CVE-2026-12803 - KCCMBlockCipher MAC does not bind nonce when AAD is absent (cross-nonce AEAD forgery).
     CVE-2026-12816 - IESEngine stream-mode MAC forgery via length-dependent KDF split.
     CVE-2026-12817 - OpenPGP AEAD decryption skips final tag on chunk-aligned data.
     CVE-2026-12852 - MLS wire decoder allocates attacker-declared opaque length before bounds check.
     CVE-2026-12860 - RSA PKCS#1 verification skips last two hash bytes in NULL-omitted path.
     CVE-2026-13506 - Lazy ASN.1 sequence forcing resets nesting-depth guard.
     CVE-2026-13586 - PKCS#12 MAC and bag-decryption KDF iteration-count bound (DoS).
     CVE-2026-14682 - Possible OOM from unbounded up-front allocation on a definite-length read.
     CVE-2026-15055 - PKCS#8 / PBES2 decryptors honour unbounded KDF cost from input.
     CVE-2026-58059 - Quadratic-time escaping when stringifying X.500 distinguished names.
     CVE-2026-58060 - HSS public-key level count unbounded, enabling huge allocation on verify.
     CVE-2026-58061 - CCM-family modes write plaintext to caller buffer before tag check.
     CVE-2026-58062 - Stapled OCSP response accepted without binding to the checked certificate.
     CVE-2026-58063 - BCFKS keystore load honours unbounded KDF cost from untrusted file.
     CVE-2026-59638 - JSSE hostname verifier CN-fallback enabled by default despite documented opt-in.
     CVE-2026-59639 - CMS verifySignatures returns true for SignedData with zero signers.
     CVE-2026-59640 - OpenPGP CFB quick-check oracle active on symmetric/session-key paths.
     CVE-2026-59641 - S/MIME validator trusts signer-asserted signingTime for path validation.
     CVE-2026-59642 - CMS AuthenticatedData content not bound to MAC when authAttrs present.
     CVE-2026-59643 - OpenPGP inline-signature policy failures silently ignored.
     CVE-2026-59644 - MLS hash-ratchet honours arbitrary 32-bit generation counter from sender.
     CVE-2026-59645 - OER parser recurses without depth limit on self-referential IEEE 1609.2 schema.
     CVE-2026-59646 - DTLS handshake reassembler allocates buffer from unchecked 24-bit length.
     CVE-2026-59647 - CRMF/CMP password-MAC honours unbounded iteration count.
     CVE-2026-59648 - OpenPGP Argon2 S2K honours attacker-chosen memory and passes.
     CVE-2026-59649 - OpenPGP user-attribute subpacket length bounded only by JVM max memory.
     CVE-2026-59650 - MTI/A0 DH agreement exponentiates unvalidated peer value.
     CVE-2026-59651 - BKS keystore accepts legacy version with 16-bit integrity MAC key.
     CVE-2026-59652 - LDAP filter injection in legacy jdk1.4 LDAPStoreHelper.
