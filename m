Received: (qmail 30003 invoked by uid 550); 1 Jun 2026 22:07:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21958 invoked from network); 1 Jun 2026 21:17:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.com;
	s=s31663417; t=1780348624; x=1780953424; i=shvedov@gmx.com;
	bh=fSlwu9MhWF/PviGYlg8N4FZVHcNUZyMU5oHregARpQ0=;
	h=X-UI-Sender-Class:MIME-Version:Message-ID:From:To:Subject:
	 Content-Type:Date:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=aViZBdUClUbW55xyFbdn1ICLGgq7KQ5EpjXB2z/Ax5m1bS4BUr8qcACvDT812XKN
	 /IAd6PZhLlYCgb45b2VYoR63OIvlbOvzPUUFVMle9tNQ8Z2yGj9NV0f4Aduket6yM
	 KujRoMpUyLvP7biYvMR0C1Nba4mF3/rsEC8AShasUA6qO1cbW3LBCk1YD9JSa6Bcd
	 iW/mPcQA0oExLIA3GAy9+oCwhtTspIfHBRpzQfvwz9FAbu2UlW7TPqSrvsBCZ9A6V
	 FIK7byLAs9IAsG/ZZoSMCa68jWCysyzy2sHRRBX6T7MM5QJFoRIiglEVpzdDZda7g
	 teyjHVIYIZjCqIT9rQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
MIME-Version: 1.0
Message-ID: <trinity-a59c8e18-a159-4078-8428-c09bec142c2d-1780348624451@3c-app-mailcom-bs08>
From: "Alexander A. Shvedov" <shvedov@gmx.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Date: Mon, 1 Jun 2026 23:17:04 +0200
Importance: normal
Sensitivity: Normal
Content-Transfer-Encoding: quoted-printable
X-Priority: 3
X-Provags-ID: V03:K1:YB6VHAz0JzxARh2xxU2VuuA2fyGzzNjPpLifA69LdEZa3Hzq20H+pFIm6Msb/O1tylBKY
 Vo/QRumpgcLBeBIeWe1SlF4WnO7NhcldkCqO/0I4aOiewjY/oUePJntNMGzlvzVZ2657j7pXRCx9
 eJXC3Podtqrexjm8vHV2rnpsHZqZw2JM7HS8ARPGkTIRco+Id2CYR01Dklb6efuE/wE2JHhFOhZc
 RisC4KAI1ZVsdgOxFxnD9CzBgRCsnwPd4djbbaFuIQ9W9/V5LUlhOwnph0Iw5uAwHQJFsYJEMQLm
 uk=
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:pJw9xOFa4Fc=;zYe6q41CeucJ2JXsqtkw3DM9z6Y
 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
 6I+cXVl0=
Subject: [oss-security] CVE-2025-60483: NULL Pointer Dereference in GPAC/MP4Box via
 gf_ac4_pres_b_4_back_channels_present on crafted AC-4 stream

Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (see References)
CVE:       CVE-2025-60483
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  The gf_ac4_pres_b_4_back_channels_present function in media_tools/av_pars=
ers.c
  accesses presentation substream group data using an index derived from th=
e AC-4
  stream. When a crafted AC-4 file specifies an invalid substream group ind=
ex
  (e.g., group 4 that does not exist for presentation 0), the parser reaches
  line 15703 without first validating the index against the available group=
 count.

  The invalid index causes a dereference of pres->substream_groups at a 72-=
byte
  offset from a NULL or uninitialized base pointer (READ at address 0x00000=
0000048),
  terminating the process with SIGSEGV. No evidence of arbitrary code execu=
tion
  was observed; the impact is limited to Denial of Service.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: `--static-build --static-bin --static-modules --enable-debug=
 --extra-cflags=3D"-g -O0"` ;
  -Command: ./MP4Box -dash 100 49_gf_ac4_pres_b_4_back_channels_present_med=
ia_tools_av_parsers_c_15703

Asan-log:
=3D=3D56315=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0x0000000=
00048 (pc 0x7f3ff4b7f8d1 bp 0x0a100000018e sp 0x7ffcf2d7c730 T0)
=3D=3D56315=3D=3DThe signal is caused by a READ memory access.
    #0 0x7f3ff4b7f8d1 in gf_ac4_pres_b_4_back_channels_present media_tools/=
av_parsers.c:15703
    #1 0x7f3ff4b7f8d1 in gf_ac4_raw_frame media_tools/av_parsers.c:15999
    #2 0x7f3ff4b7f8d1 in gf_ac4_parser_bs media_tools/av_parsers.c:16141

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/49/49_gf_ac4_p=
res_b_4_back_channels_present_media_tools_av_parsers_c_15703

References:
  https://github.com/gpac/gpac/issues/3302
  https://nvd.nist.gov/vuln/detail/CVE-2025-60483
  https://www.cve.org/CVERecord?id=3DCVE-2025-60483

=C2=A0
---
Best regards,
Alexander A. Shvedov
https://github.com/sigdevel
