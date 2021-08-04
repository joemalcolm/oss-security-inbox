Received: (qmail 24437 invoked by uid 550); 18 Nov 2025 20:33:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13916 invoked from network); 18 Nov 2025 20:29:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=snkmail.com; s=mail;
	t=1763497744; bh=nroinMfItQhfYe1q+RRALTKaT24oTOScN6+TdljlW+k=;
	h=From:To:Subject:In-Reply-To:References:Date:From;
	b=Bv0dp+gIlqXGNZD7t4VmUTnJV+DVjAUiwRO0ouOs+jGV/N/c3pPkteQx0xbrTRN3/
	 HYdcHS2s86vW6/nAt3CSC+OeDhZrXIoZuT6DK5vdnn+/owRClp0vG0R0IZbpfNgYTf
	 bm3gYgobJHESVZPzarmK+FbLZg1JReXvafz6Rjb+nwfOzq6cl+FLJnea2lfEHG1xa/
	 qL8mcgoyXRy7aSFFbTawguIRhP2+podPJinprZd3jKOM+GTfjASfUd/0HgnOSDKaNn
	 U6KSn1WiDp+wCfOGHm/eXMQMBml7bhTt50oF/xVpDbukfLlTI+Too6cfCMDQcG4T1h
	 G0iGk1EtYLxiQ==
Message-ID: <30678-1763497743-514888@sneakemail.com>
From: "John Hein" <josec-ml0@snkmail.com>
To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
In-Reply-To: <d5189e3b-44e0-4c3d-a36c-18b03f0d9a48@oracle.com>
References: <d5189e3b-44e0-4c3d-a36c-18b03f0d9a48@oracle.com>
Date: Tue, 3 Aug 2021 21:31:46 -0600
X-Mailer: Perl5 Mail::Internet v
Subject: Re: [oss-security] SQLite - Integer Overflow in FTS5 Extension
 [CVE-2025-7709]

Alan Coopersmith wrote at 00:29 +0000 on Sep  6, 2025:
 > https://github.com/google/security-research/security/advisories/GHSA-v2c8-vqqp-hv3g
 > was published on August 15 ...

That posting indicates that the affected sqlite versions are in the
range [3.49.1 - 3.50.2].

Looking back in git history for sqlite, I see the affected code
present back to 3.43.0.

It may be I did not look deep enough, but I don't see any rationale
for declaring versions less that 3.49.1 unaffected.

A question has been posted where GHSA-v2c8-vqqp-hv3g was generated:
https://github.com/google/security-research/issues/278

I could not find a reference to CVE-2025-7709 at sqlite.org (in git or
elsewhere).  So it's not clear how much they agree (or not) with the GHSA-v2c8-vqqp-hv3g advisory.

I think the following blurb in sqlite.org release notes
(https://sqlite.org/releaselog/3_50_3.html) refers to the issue:

========
Changes in this specific patch release, version 3.50.3 (2025-07-17):

27. Fix a possible memory error that can occur if a query is made against against FTS5 index that has been deliberately corrupted in a very specific way. 
========

But that doesn't reference a particular commit nor what range of
versions include this error.

This is the commit I think:

https://www.sqlite.org/src/info/63595b74956a9391f

And the commit message says:

" Optimize allocation of large tombstone arrays in fts5. "

Nothing about this being an overflow of 32 bit values or that
it addresses the CVE.

If that is the fix for CVE-2025-7709 (as GHSA-v2c8-vqqp-hv3g
indicates), then as far as I can see this problem exists back to
sqlite 3.43.0

