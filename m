Received: (qmail 25644 invoked by uid 550); 4 Jun 2026 02:29:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16260 invoked from network); 4 Jun 2026 02:09:10 -0000
Date: Thu, 4 Jun 2026 04:09:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pjcj.net; s=dkim;
	t=1780538941;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=xtHo6Fi2/DDd0Gjl0PHqFekIKX1VTiYh1Fy4T7q7PlU=;
	b=BMOb+2YVRSD5oIPsJ+t+TC/xt11QhEEIW8htikqGc07zv7IbOyyYfrCJXEBI/Jg5Ye6DFP
	gNU37CftgJni4veBn3sI2mPdcP72tyjCmyxd1YK/yBQzsQcp/oMorB63EQCupG04lBqetn
	hST8MLd4pdlvmr53dpxD7cfWx2x9mu++inJK9FtgW1pjUMMcM59bOSpWZAVOfTpaTQeEs/
	FFatwO4fSaRwyVs4HkpEJ+lmTleqb2ICiXJy5n5c4pjQZ5nwd9yDTsfFYr1vJopxXtisE0
	oYOh6WAl6OJbDjF4N3E8VV+q7Q5kMAON9Zqw9D8D3KL9xMud0RUjA1EFkLFltg==
Authentication-Results: pjcj.com;
	auth=pass smtp.mailfrom=paul@pjcj.net
From: Paul Johnson <paul@pjcj.net>
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Message-ID: <aiDdcEmfzgURIFfh@pjcj.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [oss-security] CVE-2026-8829: HTML::Entities versions before 3.84 for Perl read
 freed heap memory in _decode_entities

========================================================================
CVE-2026-8829                                        CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-8829
  Distribution:  HTML-Parser
      Versions:  before 3.84

      MetaCPAN:  https://metacpan.org/dist/HTML-Parser
      VCS Repo:  https://github.com/libwww-perl/HTML-Parser


HTML::Entities versions before 3.84 for Perl read freed heap memory in
_decode_entities

Description
-----------
HTML::Entities versions before 3.84 for Perl read freed heap memory in
_decode_entities.

The XS routine backing HTML::Entities::_decode_entities cached a
pointer (repl) into the entity-value SV returned by hv_fetch on the
entity2char hash. When the input SV was identical to a value SV in that
hash, and that value contained its own key as an entity reference, a
later call to grow_gap() reallocated the SV's PV buffer and freed the
backing allocation that repl still pointed into. The subsequent copy
loop read repl_len bytes from the freed allocation.

The read may disclose adjacent heap contents into the destination SV.

Problem types
-------------
- CWE-416 Use After Free

Solutions
---------
Upgrade to HTML-Parser 3.84 or later.


References
----------
https://github.com/libwww-perl/HTML-Parser/pull/56
https://github.com/libwww-perl/HTML-Parser/commit/6922552b0778c90a9587a3894e248be4d3a25e1c.patch

Timeline
--------
- 2026-05-12: Issue reported.
- 2026-05-19: HTML-Parser 3.84 released.

-- 
Paul Johnson - paul@pjcj.net
