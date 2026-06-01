Received: (qmail 26451 invoked by uid 550); 1 Jun 2026 22:07:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24502 invoked from network); 1 Jun 2026 21:14:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.com;
	s=s31663417; t=1780348480; x=1780953280; i=shvedov@gmx.com;
	bh=bjSvxWpWvq5X1CCE9NzC0ZtqOsaIsypN/QMuyTW5vJs=;
	h=X-UI-Sender-Class:MIME-Version:Message-ID:From:To:Subject:
	 Content-Type:Date:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=dF478AqMkHbcDeouRLrPpiFtrO1cS1xvntZyz3IQfSdUVyoz67JVEuyYiloIGwzb
	 Gm2vAtNHAiNt/6g59AqbA784+0xwyC16FinODocwc9DPhrXsfprpbbSZ+93pYhsEz
	 p0tiYnsb/vlITT+AlRw4fiNz8f1XcGoxQlqT2fVifCKfvjCFqb1RnEM7bxjML71hm
	 7T467MOLF7Kfj5QPjG5kKo9L1lUmh58qgntkGoGtIUP1ReL7UlwJ0xgvwkYEBiP5u
	 cvgKEkdgp8mvCutqf0GD54ZLDQuT0AC95t4jL+or92YoGZPEJWDrOOCqD/yFTd4dO
	 DXo9vftxaOCoSLelMQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
MIME-Version: 1.0
Message-ID: <trinity-0fd7d04b-388f-46b9-9342-63310935f199-1780348480303@3c-app-mailcom-bs08>
From: "Alexander A. Shvedov" <shvedov@gmx.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Date: Mon, 1 Jun 2026 23:14:40 +0200
Importance: normal
Sensitivity: Normal
Content-Transfer-Encoding: quoted-printable
X-Priority: 3
X-Provags-ID: V03:K1:a1BC5iJYcO5jdoaUEwViKpbQXakQCCNfRViH8KWaW2XO4KdYoPwZQDntJSdXXBkz4a4qB
 02pTtKNBMu7kq9J5Ld5EY9mNj0112Bqpl6uIPMLXkSlZ6YGhPBj9zadS5pO40sNQTBlyLybzjeSz
 leH4uJwnIJ9eW0bZireJwUmBgX+P/O5/AxtTxqKAdj//WLGDw8SWqozX8oQ3rbF+LX/oZOzGwkHP
 CwffRL6gQCH5wIr57z+xPBJ1t6QCha9aAPvOb7E5YQwPCSOQRZl3nCvecF3TYx+5eWAEn6Bi0o3h
 HE=
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:yG+4KpQJPLY=;JQBUxJyyoLPkcQxeLCSe5MXtvSZ
 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
Subject: [oss-security] CVE-2025-60481: NULL Pointer Dereference in GPAC/MP4Box via
 gf_odf_ac4_cfg_dsi_v1 on crafted AC-4 stream

Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to commit e02d1fd24cdc26acb1b236ab38b3832cffcae2=
1b
CVE:       CVE-2025-60481
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  The function gf_odf_ac4_cfg_dsi_v1 in odf/descriptors.c:2148 parses AC-4
  audio stream descriptor sub-configurations during media import. When
  MP4Box processes a specially crafted AC-4 file via -info, the parsing
  pipeline (ac4dmx_check_pid -> gf_odf_ac4_cfg_write -> gf_odf_ac4_cfg_dsi_=
v1)
  encounters an invalid or missing DSI substructure pointer.

  The code does not validate the pointer before dereferencing it, resulting
  in a null pointer dereference (READ at address 0x000000000000) and an
  immediate fatal crash under AddressSanitizer.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: `--static-build --static-bin --static-modules --enable-debug=
 --extra-cflags=3D"-g -O0"` ;
  -Command: ./MP4Box -info 45_gf_odf_ac4_cfg_dsi_v1_odf_descriptors_c_2148

Asan-log:
=3D=3D1848484=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0x00000=
0000000 (pc 0x7f77c30a5cfa bp 0x000000000000 sp 0x7ffdad34e3d0 T0)
=3D=3D1848484=3D=3DThe signal is caused by a READ memory access.
    #0 0x7f77c30a5cfa in gf_odf_ac4_cfg_dsi_v1 odf/descriptors.c:2148
    #1 0x7f77c30a6ae1 in gf_odf_ac4_cfg_write_bs odf/descriptors.c:2281
    #2 0x7f77c30a6ae1 in gf_odf_ac4_cfg_write odf/descriptors.c:2288

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/45/45_gf_odf_a=
c4_cfg_dsi_v1_odf_descriptors_c_2148

References:
  https://github.com/gpac/gpac/issues/3296
  https://nvd.nist.gov/vuln/detail/CVE-2025-60481
  https://www.cve.org/CVERecord?id=3DCVE-2025-60481

=C2=A0
---
Best regards,
Alexander A. Shvedov
https://github.com/sigdevel
