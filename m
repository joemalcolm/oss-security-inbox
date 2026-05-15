Received: (qmail 7284 invoked by uid 550); 15 May 2026 01:17:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5517 invoked from network); 15 May 2026 01:16:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1778807767;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=enMZ9WzpEo9aTnQAH/j35hqIBvm8adcr4yDqX0xE/8g=;
	b=lpRLC9/FyHSubPeRdEWOsM5cgeMjRCKhGauc9DTD3a/U423469BFZAXu0xVZ8yAwtuuI58
	9s9gaBue0tldn5uyIKW2khdlL6cnmXNKGFtbI4DbYRB0ITxQaguNdNo51r4L0B9I3Tg1gk
	YHAa+L+x6J6XYon6iajMddugrB933qr2UQabWS689umB037joVAPyPbUtK0i2/aZSCIWfA
	4LgitbT7HOoFQrsL+uuoWixBzwpxXIO+eH1d5X5kFCHQ2vEo9on8N+MFUI2wvJauq3oLKF
	ILlcJPXrJRECt34WLFKmbR6+VUDCYgFs4pVnFzCwEpiQm2t3BlalbJHLw4DWnA==
From: Stig Palmquist <stig@stig.io>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0
Message-Id: <334FB9C3-E9EA-414B-8F67-5C28DFCE3CA2@stig.io>
Date: Fri, 15 May 2026 03:15:50 +0200
To: cve-announce@security.metacpan.org,
 oss-security@lists.openwall.com
Subject: [oss-security] CVE-2026-8612: WWW::Mechanize::Cached versions before 2.00 for Perl
 deserialize cached HTTP responses from a world-writable on-disk cache,
 enabling local response forgery and code execution

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2026-8612                                        CPAN Security Group
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

        CVE ID:  CVE-2026-8612
  Distribution:  WWW-Mechanize-Cached
      Versions:  before 2.00

      MetaCPAN:  https://metacpan.org/dist/WWW-Mechanize-Cached
      VCS Repo:  https://github.com/libwww-perl/WWW-Mechanize-Cached


WWW::Mechanize::Cached versions before 2.00 for Perl deserialize cached
HTTP responses from a world-writable on-disk cache, enabling local
response forgery and code execution

Description
-----------
WWW::Mechanize::Cached versions before 2.00 for Perl deserialize cached
HTTP responses from a world-writable on-disk cache, enabling local
response forgery and code execution.

With no explicit cache backend, WWW::Mechanize::Cached constructs a
default Cache::FileCache under /tmp/FileCache without overriding the
backend's documented directory_umask of 000, so the cache root and its
subdirectories are created mode 0777 with no sticky bit. Cache entries
are named by sha1_hex of the request and read back through
Storable::thaw on the next cache hit.

A local attacker with write access to the cache tree can replace a
victim's cache entry for a known URL with an arbitrary frozen
HTTP::Response blob, causing the victim's next get() of that URL to
return attacker controlled response bytes. Because the bytes are passed
to Storable::thaw, a victim process that has loaded any class with a
side-effectful STORABLE_thaw, DESTROY, or overload hook can be
escalated to arbitrary code execution.

Problem types
-------------
- CWE-732 Incorrect Permission Assignment for Critical Resource
- CWE-502 Deserialization of Untrusted Data

Solutions
---------
Upgrade to WWW-Mechanize-Cached 2.00 or later.


References
----------
https://github.com/libwww-perl/WWW-Mechanize-Cached/pull/36
https://github.com/libwww-perl/WWW-Mechanize-Cached/commit/b821647deeedf834=
90ebc1db91d959d942300ce0.patch
https://metacpan.org/release/OALDERS/WWW-Mechanize-Cached-2.00/changes

Timeline
--------
- 2026-05-13: Issue reported.
- 2026-05-14: WWW-Mechanize-Cached 2.00 released with fix.


