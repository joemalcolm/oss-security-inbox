Received: (qmail 3102 invoked by uid 550); 1 Jun 2026 04:36:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7484 invoked from network); 31 May 2026 19:50:12 -0000
Date: Sun, 31 May 2026 21:50:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pjcj.net; s=dkim;
	t=1780257003;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=zrdGgS4m9mMHapiSBCb5txqhkwzjKE15PUR1T+/aJ9c=;
	b=cXTPEHkuLxlxYA2jnYwGeH2SCiA72ikHvNPZtXtFKxNCeelPkMXzlT/jzguSt4DdGO6SsL
	OTEiaePQ/kLnsOQu1f9RlkoyszUC99+9To/pheit3BF6yIaG0fptVpTEEcsA7WN0YNEVus
	7FU/K1glw6UQcweBP3EcqiKnfBMO1BPBPvkYaudRNTVNs/qWlxNyJdb7KOZieSiyq+Fu2I
	wKTkVm+XCUsR21qUkCGgcVUeSqj4Bmm9pPmaNaMXoNSMpz4jCxpmVRA81+sBzmRvRHZ1ug
	47D7gnM3vpAId94fPUwS9CdChMizKp5tlnG2oPsyDpu217Hccd3/IkNSSjENSQ==
Authentication-Results: pjcj.com;
	auth=pass smtp.mailfrom=paul@pjcj.net
From: Paul Johnson <paul@pjcj.net>
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Message-ID: <ahyQUB4ccRjl5ZAI@pjcj.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [oss-security] CVE-2026-8796: Sereal::Decoder versions before 5.005 for Perl allow
 heap out-of-bounds read via crafted input

========================================================================
CVE-2026-8796                                        CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-8796
  Distribution:  Sereal-Decoder
      Versions:  before 5.005

      MetaCPAN:  https://metacpan.org/dist/Sereal-Decoder
      VCS Repo:  https://github.com/Sereal/Sereal


Sereal::Decoder versions before 5.005 for Perl allow heap out-of-bounds
read via crafted input

Description
-----------
Sereal::Decoder versions before 5.005 for Perl allow heap out-of-bounds
read via crafted input.

In Perl/Decoder/srl_decoder.c, srl_read_object() and srl_read_hash()
process a COPY tag, a back-reference whose target byte the decoder
re-decodes as a fresh tag. When that target byte matches the
SHORT_BINARY pattern (an inline string whose length is encoded in the
low bits of the tag), the resulting read is not bounded to precede the
COPY tag's own offset and can run past the end of the input buffer. An
attacker controlled COPY offset can land inside a previously decoded
value rather than on a tag boundary, planting a byte that the decoder
reads as a SHORT_BINARY tag and consuming up to 31 following bytes from
the heap as a class name (OBJECT path) or hash key (HASH path).

Problem types
-------------
- CWE-125 Out-of-bounds Read

Solutions
---------
Upgrade to Sereal::Decoder 5.005 or later.


References
----------
https://github.com/Sereal/Sereal/commit/303a2c69cdba80bf37a3ff43461e0aa78198a7a3.patch
https://metacpan.org/release/YVES/Sereal-Decoder-5.005/changes

Timeline
--------
- 2026-05-13: Issue reported.
- 2026-05-19: Fix released in Sereal::Decoder 5.005.
- 2026-05-20: Fix verified against proofs of concept.

-- 
Paul Johnson - paul@pjcj.net
