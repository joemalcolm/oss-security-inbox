Received: (qmail 32673 invoked by uid 550); 1 Jun 2026 22:07:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22272 invoked from network); 1 Jun 2026 21:26:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.com;
	s=s31663417; t=1780349152; x=1780953952; i=shvedov@gmx.com;
	bh=+TYbH2w+pxg7OOJomDS7UzwEdbnNtaiFDHRLr6I0Nzk=;
	h=X-UI-Sender-Class:MIME-Version:Message-ID:From:To:Subject:
	 Content-Type:Date:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=FO8QplI7OXbT6d3ToQlwyyDWzFT0bYcjOc4rnh7x7ck0qqpik0aUCIHfrEJe9aga
	 R8tklo0PYcryD5knYUTempK4hRKC388gNnlgfloPUH0ScmajbjNaaXDQXKDMnq/DN
	 MZVzE0p0qugkQh9K0icO4ZPReUucXpojLVU7xiY/f5uEhB/IDWSlk2c2p3U2nlEOB
	 wBmf2NsC7/Ws7EDeVbt7BVDJzWBXC85T3Ne7r7hTVblDcPNfpg/UDtR+53PaxVyLI
	 2GchGGZ9Nulpl0EbJBrDATe1/ZRJt+qnzGN47S8Ue3gEpiZuAOTMR8FCgjGECCJ7A
	 2EhlKP0eO+lGjT7oxg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
MIME-Version: 1.0
Message-ID: <trinity-00f7ac88-5044-4b60-8967-48b956e032be-1780349152227@3c-app-mailcom-bs08>
From: "Alexander A. Shvedov" <shvedov@gmx.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Date: Mon, 1 Jun 2026 23:25:52 +0200
Importance: normal
Sensitivity: Normal
Content-Transfer-Encoding: quoted-printable
X-Priority: 3
X-Provags-ID: V03:K1:P3eaZZT14hQJSxINg0DmR26M479yHQNoJWtDkXNrnk/942kj9YFmqDRWu3NFAscuL/wMq
 gkyREps/HRmgAkfqxr4uGBByTwyauL756oHZ100DK2ZSUW8bxAEJd/LSue0H+N4H2O2d/7i7EbZQ
 bMpVyqR7QY7Xo8ALCilgt/1pSO0YMO4hZ93pN7ZC8xDC/gqNiVGuCGtBFB1SXfE+CvF0GEf8azb2
 MGrXoT3W1oxX6zsLNTzAUD6D2SEe3ck6HRCxo+OOv8ZsGclGMVLe7M7XsjP4qNwY2fJ8BHyVzfHk
 i0=
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:FX2Z4VnLZ90=;e05MFZXeo8v9EQsn0AgdT0S98m/
 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
 28bjRn0NLv6GBzDexiiubHEvIzPgEiQ6SmxHvp
Subject: [oss-security] CVE-2025-60486: Use-After-Free in GPAC/MP4Box via dasher_process on
 crafted MPEG-2 TS file

Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit 3f20eb0cd22116367c036e6ffe6ace299b=
38d686 (GPAC version 2.5-DEV-rev1665-g3f20eb0cd-master)
CVE:       CVE-2025-60486
CWE:       CWE-416 (Use After Free)
CVSS 3.1:  8.8 HIGH (AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  The dasher_configure_pid function in filters/dasher.c frees a PID context
  structure at line 976 when reconfiguring a stream during DASH segmentatio=
n.
  The freed pointer is not cleared after deallocation, and dasher_process
  subsequently accesses the same memory region at line 9445 during the next
  processing cycle, creating a heap use-after-free condition.

  A crafted MPEG-2 TS file with repeated sync marker violations, broken PMT
  descriptor sizes, and conflicting PID assignments triggers the reconfigur=
ation
  sequence that exposes the stale pointer. The subsequent READ of 4 bytes at
  316 bytes into the freed 1096-byte region terminates the process. Code ex=
ecution
  cannot be ruled out; use-after-free vulnerabilities can allow an attacker=
 to
  control freed memory contents and redirect execution flow.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: `--static-build --static-bin --static-modules --enable-debug=
 --extra-cflags=3D"-g -O0"` ;
  -Command: ./MP4Box -dash 100 53_dasher_process_filters_dasher_c_9445

Asan-log:
=3D=3D55065=3D=3DERROR: AddressSanitizer: heap-use-after-free on address 0x=
519000022cbc at pc 0x7f2fc41c3300 bp 0x7ffe86651b00 sp 0x7ffe86651af8
=3D=3D55065=3D=3DThe signal is caused by a READ memory access.
    #0 0x7f2fc41c32ff in dasher_process filters/dasher.c:9445
    #1 0x7f2fc4119440 in gf_filter_process_task filter_core/filter.c:3208
    #2 0x7f2fc40ed45e in gf_fs_thread_proc filter_core/filter_session.c:2393

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/53/53_dasher_p=
rocess_filters_dasher_c_9445

References:
  https://github.com/gpac/gpac/issues/3314
  https://nvd.nist.gov/vuln/detail/CVE-2025-60486
  https://www.cve.org/CVERecord?id=3DCVE-2025-60486

=C2=A0
---
Best regards,
Alexander A. Shvedov
https://github.com/sigdevel
