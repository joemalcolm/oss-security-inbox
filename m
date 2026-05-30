Received: (qmail 5275 invoked by uid 550); 30 May 2026 12:17:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32677 invoked from network); 30 May 2026 09:09:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.com;
	s=s31663417; t=1780132144; x=1780736944; i=shvedov@gmx.com;
	bh=19BrX0TDzFw5p1eCeiYUVo5izoIi5l4fQTkXvbtTgqw=;
	h=X-UI-Sender-Class:MIME-Version:Message-ID:From:To:Subject:
	 Content-Type:Date:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=nSeLUemFt9/h3ekhvwUgypjXLYAutdO34SChvJ4lb9r+V/ZqYnJ5eBh84SEK1Va0
	 QC3gHmLq/oM6nU3RS3Uhqq8Ul6szSphqA0usZY/DCT1HcXXvXRusIsu9Ptf4vth7v
	 8LJgJcHf7h5R6PiUfdMoVb11qELKVxrltG/OYmA5O++6fHx+WtZP+JLZkDFiNecwp
	 ys4y9y52DH1l6pU8HYXdQFoEyyJDysR4UDYon0BIyZWb4JCQPOyNlXQM19PA754UY
	 RbNaaYCIWtbD3o6xNdYTDKhNwGNY+OLwg7ufoOxrg2I2wc524YND/8rHja7BCkhtA
	 VqbNU89ggpYjzFntaA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
MIME-Version: 1.0
Message-ID: <trinity-68af9225-0938-49ad-a403-2d536c900333-1780132144672@3c-app-mailcom-bs06>
From: Alexander <shvedov@gmx.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Date: Sat, 30 May 2026 11:09:04 +0200
Importance: normal
Sensitivity: Normal
Content-Transfer-Encoding: quoted-printable
X-Priority: 3
X-Provags-ID: V03:K1:/Tc+8S1NuVkw7eUm+3IV9wH1lxG48qF4fi0fRQoKQvhwsGo1+Ucu4DJsCw8YwYSBQgUHt
 IgplTROVTSPaF0X31l2zZ/NPaABiojNMZIZnQAhUu1NzJn0Zu9HNF+R8k74FXjPQGZZ6brD64ABO
 C04yEloVQEVvyfY/qvplES7tYvv69m+GAZ2D9gOHHxGnGoXjGO+I+joOE3aia5zMZOWsfpEU6RtN
 Jo+rlc3EEO/xV8PNOdnyNGyo/NVm8NA3wVTjUzoZAAvP3jbwOWu87PPHI1FdpL995GiydOkJIi7N
 Bs=
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:2MzmvhkD3/c=;APw+eNLan02h5qb5N4u/3NfAVog
 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
 9A5NgmU9DBJBEpnjg=
Subject: [oss-security] CVE-2025-70116: NULL Pointer Dereference in GPAC/MP4Box via
 gf_media_map_esd on truncated MP4 input

Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (see References)
CVE:       CVE-2025-70116
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  When MP4Box processes a truncated or malformed MP4 file containing
  an unknown/invalid stsd (SampleDescription) box entry, codec
  descriptor fields (codec name, MIME type, profile string) may not
  be initialized and remain NULL. The function gf_media_map_esd() in
  media_tools/isom_tools.c:1364 subsequently calls strlen() on one
  of these NULL pointers without a prior NULL-check, triggering an
  ASan SEGV / NULL pointer dereference.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: `CC=3D"gcc -fsanitize=3Daddress -g" CXX=3D"g++ -fsanitize=3D=
address -g"` ;
  -Command: ./MP4Box -split-size 8000 68_gf_media_map_esd_media_tools_isom_=
tools_c_1364

Asan-log:
=3D=3D3660073=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0x00000=
000001d (pc 0x7fc0abb79c59 bp 0x7ffcecd750a0 sp 0x7ffcecd74848 T0)
=3D=3D3660073=3D=3DThe signal is caused by a READ memory access.=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20
=3D=3D3660073=3D=3DHint: address points to the zero page.
    #0 0x7fc0abb79c59 in __strlen_avx2_rtm ../sysdeps/x86_64/multiarch/strl=
en-avx2.S:76
    #1 0x7fc0ada78ee9 in strlen ../../../../src/libsanitizer/sanitizer_comm=
on/sanitizer_common_interceptors.inc:389
    #2 0x7fc0ac4e9ece in gf_media_map_esd media_tools/isom_tools.c:1364

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/68/68_gf_media=
_map_esd_media_tools_isom_tools_c_1364

References:
  https://github.com/gpac/gpac/issues/3345
  https://nvd.nist.gov/vuln/detail/CVE-2025-70116
  https://infosec.exchange/@sigdevel/116624563750949972
=C2=A0
---
Best regards,
Alexander A. Shvedov
https://github.com/sigdevel
