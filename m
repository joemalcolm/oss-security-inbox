Received: (qmail 30403 invoked by uid 550); 1 Jun 2026 22:07:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30066 invoked from network); 1 Jun 2026 21:20:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.com;
	s=s31663417; t=1780348835; x=1780953635; i=shvedov@gmx.com;
	bh=4ZVQJD5e3IEwA1uQwPQiFdRt09aE0kjbs29dxyCfvGM=;
	h=X-UI-Sender-Class:MIME-Version:Message-ID:From:To:Subject:
	 Content-Type:Date:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=fl6nxfreqi2GV6K7HjI+lntZ5Or8wjss/VM4ufqpRPLcaOcEHAh73OFxhHnrG00e
	 aekdtAngsepx4mLNVHBI1fSm5PhDyLHlm1LFkjFdT8hgp1ejZ9Cgqoja1YuANNG7n
	 7nPlD//HXjp4ucwcOcdn/urQPLWLLqQHhrgevNKY5+dKmH/452et1aVzhYwRkajMt
	 QMLNNjOMcCHLd1wfU5Zo/2y/yREK4PmD3eSvc2XOEqT6x6271pTSW4Pf7+bT5nMYu
	 bD7opu06Ccp4QNesJwtahnSlNYqEhUO09Tcgv5n8MfCPdyt7eEnypKxgox1IYuaWV
	 dV2TX9wPgbFz1x5pGg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
MIME-Version: 1.0
Message-ID: <trinity-73d3b99b-f98c-433f-9274-d9929ce5b558-1780348835736@3c-app-mailcom-bs08>
From: "Alexander A. Shvedov" <shvedov@gmx.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Date: Mon, 1 Jun 2026 23:20:35 +0200
Importance: normal
Sensitivity: Normal
Content-Transfer-Encoding: quoted-printable
X-Priority: 3
X-Provags-ID: V03:K1:6+F7660ZCf9Uj5/h7XGeNFxuTgvkV6E+496KBYZ1IFJsjJ3O2nKUAyQ+Ky/MYyPtoj796
 lu3FUNzZmPGAktbOKs+918cecl4O9evF0tjpVgxuADarIxEOPUaNwtCZiHExXQdYQYYBbSL6NHpc
 mGoJHOLGRWx2zlOX69oiF3TiRmlNjyq3UlHDGEZTvnddevbNFjfGSvXlaUUh2eAfXpjWwG9VA8OV
 wFAC7lAsT3KBmXgyS0J0QL4I5L5YCWrW1TDvV00Zej1bNL38+AwFKsRuDiVqdTZuOOfDiNcR1nIb
 Kg=
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:Rqmsc7kA9r0=;f9TlqjlT2Qdf8WXO5T1FI42JhLl
 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
 wsuqmHaBrZIvC/qttIgT548slBNxH
Subject: [oss-security] CVE-2025-55664: Heap-based Buffer Overflow in GPAC/MP4Box via
 m2tsdmx_send_packet on crafted MPEG-2 TS file

Product:   GPAC (MP4Box)
Affected:  gpac/MP4Box prior to fix commit 8e3b5e1dde7b9ea041dbdc14456a5bb7=
4a9851ea (GPAC version 2.5-DEV-rev1644-g8e3b5e1dd-master)
CVE:       CVE-2025-55664
CWE:       CWE-122 (Heap-based Buffer Overflow)
CVSS 3.1:  8.8 HIGH (AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  The m2tsdmx_send_packet function in filters/dmx_m2ts.c performs a memcpy =
whose
  size argument is derived from stream-controlled PES packet data without
  validation. A crafted MPEG-2 TS file with missing sync markers (0x47), co=
rrupted
  PMT descriptor sizes, PID conflicts, and packet discontinuities causes the
  computed copy size to wrap to 4294967295 (0xFFFFFFFF) at line 916.

  The resulting memcpy reads and writes starting one byte past the end of a
  183-byte heap-allocated region, resulting in a heap buffer overflow. Due =
to the
  write-capable nature of the oversized memcpy, arbitrary code execution ca=
nnot
  be ruled out.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: `--static-build --static-bin --static-modules --enable-debug=
 --extra-cflags=3D"-g -O0"` ;
  -Command: ./MP4Box -dash 100 51_m2tsdmx_send_packet_filters_dmx_m2ts_c_916

Asan-log:
=3D=3D294950=3D=3DERROR: AddressSanitizer: heap-buffer-overflow on address =
0x5100000006f8 at pc 0x7fc5766f2956 bp 0x7ffde8b91e70 sp 0x7ffde8b91630
=3D=3D294950=3D=3DThe signal is caused by a READ memory access.
    #0 0x7fc5766f2955 in memcpy ../../../../src/libsanitizer/sanitizer_comm=
on/sanitizer_common_interceptors_memintrinsics.inc:115
    #1 0x7fc57582aec6 in m2tsdmx_send_packet filters/dmx_m2ts.c:916
    #2 0x7fc57582aec6 in m2tsdmx_on_event filters/dmx_m2ts.c:1164

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/51/51_m2tsdmx_=
send_packet_filters_dmx_m2ts_c_916

References:
  https://github.com/gpac/gpac/issues/3310
  https://nvd.nist.gov/vuln/detail/CVE-2025-55664
  https://www.cve.org/CVERecord?id=3DCVE-2025-55664

=C2=A0
---
Best regards,
Alexander A. Shvedov
https://github.com/sigdevel
