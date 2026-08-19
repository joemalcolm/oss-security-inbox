X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/19/4
Message-ID:  <SA0PR15MB4062AAD83AF50DA2AA5A729FB9A52@SA0PR15MB4062.namprd15.prod.outlook.com>
Date: Wed, 19 Aug 2026 18:41:31 +0000
From: Sage McTaggart <sagemct@....com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Ceph 20.2.4 and Ceph 19.2.6 are released with 4 security fixes. 
Content-Type: text/plain; charset=utf-8

Today, August 19th 2026, the Ceph project has released Tentacle 20.2.4<https://github.com/ceph/ceph/releases/tag/v20.2.4>  and Squid 19.2.6<https://github.com/ceph/ceph/releases/tag/v19.2.6>.

These releases include 4 security fixes.

*CVE-2025-30156 AES-CBC misuse in CephX facilitating authentication bypass

CVE-2025-30156[1][2] stems from a broken cryptographic implementation in CephX, similar to the vulnerability class described in the Perils paper[3] on Kerberos 4. CephX used AES-CBC without authentication and with a hardcoded initialization vector. As a result, identical plaintexts produced identical ciphertexts, and an attacker with any compromised credentials on the Ceph network could exploit this in two ways: by observing ciphertext patterns to infer plaintext, and by flipping bits in the ciphertext to alter data undetected, including expanding the scope of their own credentials. No user interaction is required. The impact to confidentiality and integrity is high; the impact to availability is low. The CVSS score is 8.9 (CVSS:3.1/AV:A/AC:L/PR:L/UI:N/S:C/C:H/I:H/A:L). Ceph has replaced AES-CBC with AES-256-CTS-HMAC-SHA384-192. This required substantial changes across userspace daemons and drew on significant upstream Linux kernel work. This vulnerability was reported by Erin Shepherd of e43.eu and later independently by David Mohren and Mark Nelson of CLYSO as well as and David Korczynski of Ada Logics.


*CVE-2026-50152 Ceph MON config-key store improper authorization

CVE-2026-50152[6][7] is an improper authorization flaw in the Ceph Monitor subscription handler. Any CephX user with mon allow r caps can read the entire Monitor config-key store by sending a single crafted MMonSubscribe message. This exposes OSD LUKS passphrases and, on cephadm-managed clusters, the SSH private key cephadm uses to access every host; yielding root access under the default cephadm configuration. The attacker must have access to the Ceph cluster and a compromised account with mon allow r permissions. No user interaction is required. The scope may change depending on cluster management configuration. The impact to confidentiality and integrity is high. The CVSS score is 8.2 (CVSS:3.1/AV:A/AC:L/PR:L/UI:N/S:C/C:H/I:L/A:L). This vulnerability was reported independently by David Mohren and Mark Nelson of CLYSO and David Korczynski of Ada Logics.

*CVE-2026-54330 Ceph RGW SigV4 verifier error allows attachment of arbitrary x-amz-* headers resulting in privilege escalation

CVE-2026-54330[6] involves improper verification of cryptographic signatures within Ceph RGW’s SigV4 handler. Anyone with a presigned PUT URL can attach arbitrary x-amz* headers that RGW will then apply, granting more capabilities than the signer intended. AWS S3 requires every x-amz-* header on SigV4 requests to be signed, and ensures any request carrying additional headers is rejected, but RGW does not check if new unsigned headers are present, only verifying the validity of the headers listed in X-Amz-SignedHeaders, bypassing the signature check. With minimal permissions, simply a pre-signed PUT URL, an attacker can escalate their privileges, and create a high impact to confidentiality and integrity. The CVSS score is 8.2(CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:C/C:H/I:H/A:N). This vulnerability was reported by David Mohren and Mark Nelson of CLYSO.

*CVE-2026-39944 Ceph RGW STS tokens vulnerable to CBC bit-flip privilege escalation to RGW admin

CVE-2026-39944[8][9] is an improper verification of a cryptographic signature in Ceph RGW's STS session tokens. The tokens use the same unauthenticated AES-128-CBC handler as the CephX flaw in CVE-2025-30156, and share its lack of integrity protection. An attacker holding any valid STS token can use the attack chain to obtain full RGW admin access. Unlike the CephX attack (CVE-2025-30156), which runs on the internal messenger network and relies on the attacker having access to the Ceph monitor, this one is a self-contained modification of a token the attacker already holds. It requires only a single valid, unprivileged STS token and STS enabled (rgw_s3_auth_use_sts = true). The CVSS score is 8.5 (CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:C/C:H/I:H/A:H). This vulnerability was reported by Erin Shepherd of e43.eu and later independently by David Mohren and Mark Nelson of CLYSO as well.

Please see our published advisories for more information on each CVE. Thank You to our open-source reporters and contributors for their work on this!

[1] https://github.com/ceph/ceph/security/advisories/GHSA-rmjq-ffrm-j6vj
[2]https://docs.ceph.com/en/latest/security/CVE-2025-30156/
[3] <https://web.mit.edu/tlyu/papers/krb4peril-ndss04.pdf> https://web.mit.edu/tlyu/papers/krb4peril-ndss04.pdf
[4] <https://github.com/ceph/ceph/security/advisories/GHSA-rg9p-5xcp-wm8h> https://github.com/ceph/ceph/security/advisories/GHSA-rg9p-5xcp-wm8h
[5]https://docs.ceph.com/en/latest/security/CVE-2026-50152/
[6]https://github.com/ceph/ceph/security/advisories/GHSA-rmjq-ffrm-j6vj <https://github.com/ceph/ceph/security/advisories/GHSA-rmjq-ffrm-j6vj>
[7] https://docs.ceph.com/en/latest/security/CVE-2026-54330
[8] https://github.com/ceph/ceph/security/advisories/GHSA-j73r-qrgx-jvq2
[9] <https://docs.ceph.com/en/latest/security/CVE-2026-39944> https://docs.ceph.com/en/latest/security/CVE-2026-39944

Best,
Sage McTaggart
My work hours may not be your work hours. Please don’t feel obligated to reply outside your normal schedule.


