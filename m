Received: (qmail 31984 invoked by uid 550); 1 Jun 2026 22:07:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14309 invoked from network); 1 Jun 2026 21:24:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.com;
	s=s31663417; t=1780349051; x=1780953851; i=shvedov@gmx.com;
	bh=SOdI80NKtpjM6nw6e5XzYXv7TJTIo+6pD03A8uo3q08=;
	h=X-UI-Sender-Class:MIME-Version:Message-ID:From:To:Subject:
	 Content-Type:Date:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=Th9EhDM2ZPhb/C8csZ8MGcL9W5gFQkduRPmJs9rjd2rnh+bNPh0VGEOz2FCceDNH
	 DvlIz6Amax66BvVPAlszNdERF7UiITek0dzq9lMIMvgTGr0jYoiv7kovkRg64p3uS
	 II0XkOT4lx1/PjThW3jg24BvGrzjPFdsI2033I+SEiem1J9SiX4VR9wP1nYYov8c2
	 +OC06xg3WyOQvSP+6n/+W5lu8wXa/wHs6vAMPPw5KNCTt1w7tJXox+koSX3BPQmsC
	 HmqVlfnuQxBZ0Hk21VrAp7kLY7x+osUOUknp4QJV2WJhTimJ/V22bHjE6ryXGoSlW
	 Sw/kCi9+cD1on0VPaA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
MIME-Version: 1.0
Message-ID: <trinity-69141e17-88ba-4d87-a346-df22a6c4c4a6-1780349051682@3c-app-mailcom-bs08>
From: "Alexander A. Shvedov" <shvedov@gmx.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Date: Mon, 1 Jun 2026 23:24:11 +0200
Importance: normal
Sensitivity: Normal
Content-Transfer-Encoding: quoted-printable
X-Priority: 3
X-Provags-ID: V03:K1:ECS5cSauAugLafw4fr2lvNx4jqLtu08vf4lPbN9WdQLeBAXuBHYHy1ZFpI+uiUf3q2c2E
 ueA/lduAa8lkZfw3zLYYoc2eoIfea30830ODxuci5PLehpdDDEV97q/cOqJzTw4XNJNXFEWtJHNE
 MZQeXGWPRrCjtuQysZEE09zPLWygHWBC/onzzuhIRCwogIMjri3hfc5p/RFoDZTGNkqSiVb7MrfB
 7YWyK9+BwswiL+mgeeNjogCLzicFwkauCGX4GNNb7ldT8fjLF7SwDDmXquDeVFG8ixYCz61vPNLU
 gU=
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:9yr+T1unELs=;cCUgiiLXdnBsOPZkA/ecznKspdi
 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
 YBjr+bei1ia1VJ99fNfsqTWcZhTd1
Subject: [oss-security] CVE-2025-60485: NULL Pointer Dereference in GPAC/MP4Box via
 gf_isom_apple_set_tag_ex on crafted MP4 with corrupted esds box

Product:   GPAC (MP4Box)
Affected:  gpac/MP4Box prior to fix commit e44a4e2b0d193566619ada71599e7025=
5699da94 (GPAC version 2.5-DEV-rev1687-ge44a4e2b0-master)
CVE:       CVE-2025-60485
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  The gf_isom_apple_set_tag_ex function in isomedia/isom_write.c is invoked
  during MP4 muxer tag setup to write Apple metadata into the output file.
  When the input MP4 contains a corrupted esds box (invalid descriptor tag 3
  with truncated size) and an incomplete box structure, the muxer proceeds =
to
  the tag-writing path at line 6309 with an unvalidated NULL pointer.

  The function dereferences the NULL pointer (READ at address 0x00000000000=
0)
  without a prior NULL check, terminating the process with SIGSEGV. No evid=
ence
  of arbitrary code execution was observed; the impact is limited to Denial=
 of Service.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: `--static-build --static-bin --static-modules --enable-debug=
 --extra-cflags=3D"-g -O0"` ;
  -Command: ./MP4Box -add 52_gf_isom_apple_set_tag_ex_isomedia_isom_write_c=
_6309

Asan-log:
=3D=3D3348634=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0x00000=
0000000 (pc 0x7fbb82e01a73 bp 0x000000000000 sp 0x7ffd85af26e0 T0)
=3D=3D3348634=3D=3DThe signal is caused by a READ memory access.
    #0 0x7fbb82e01a73 in gf_isom_apple_set_tag_ex isomedia/isom_write.c:6309
    #1 0x7fbb83801731 in mp4_mux_set_tags filters/mux_isom.c:841
    #2 0x7fbb83820909 in mp4_mux_setup_pid filters/mux_isom.c:4184

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/52/52_gf_isom_=
apple_set_tag_ex_isomedia_isom_write_c_6309

References:
  https://github.com/gpac/gpac/issues/3323
  https://nvd.nist.gov/vuln/detail/CVE-2025-60485
  https://www.cve.org/CVERecord?id=3DCVE-2025-60485

=C2=A0
---
Best regards,
Alexander A. Shvedov
https://github.com/sigdevel
