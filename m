Received: (qmail 1198 invoked by uid 550); 1 Jun 2026 22:07:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30529 invoked from network); 1 Jun 2026 21:27:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.com;
	s=s31663417; t=1780349266; x=1780954066; i=shvedov@gmx.com;
	bh=dDHmrIYwhnsq2NHNmdFR41kZu5Sz0HlKlJbTLx4jIUw=;
	h=X-UI-Sender-Class:MIME-Version:Message-ID:From:To:Subject:
	 Content-Type:Date:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=jFT4czaa97sXVAUOj2QQRSMXrdGmb1S35JJoN6UC4ZGC82cPc/KfeDx4WdjzrIGX
	 5hkhgNM9dGX8GL3wPNYKiDyF0ZXVdXSUKvSc4VHOyVuqJgrYZqSGjKKaysrKqWF23
	 0AZ3mTafn9XDYA6rns63ofZHVIzcxfifRlt7iEdkEDEYOF5wt4d5wJS0oMf2vzwqg
	 4lb/Hxeh0QU7V5fLpDDiGfX7vEppjLRud49EpkkHhNCzxzSAiLYp9eqSyctzJu5yk
	 rZbusWodXyCcXWWZAI2AGwq2mzhnWK5HIEK3/qvAnRMts9nP6HgTTuOV1keEnMv1M
	 f8tlQwOIXF63dnnxFg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
MIME-Version: 1.0
Message-ID: <trinity-1c74adc1-1144-43fb-a985-458216dfac98-1780349266130@3c-app-mailcom-bs08>
From: "Alexander A. Shvedov" <shvedov@gmx.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Date: Mon, 1 Jun 2026 23:27:46 +0200
Importance: normal
Sensitivity: Normal
Content-Transfer-Encoding: quoted-printable
X-Priority: 3
X-Provags-ID: V03:K1:Ma04IpDFtytTc6j4msY3G0Xq68LjGFQ15g/jhiDa88F5lHEhBKOa+PD9JkfBSb+7lw2OF
 3jJaXxH0sBNYpxVCqCrn/LHUk1CycLO3YWO2yFC0BfycSyYSFJkeREdPY71xkazUh1c9Yx8K9E3Y
 mfSkEHDViZykGPU/gu3Lp9MgcQH6c6e0/j3Mk3nfZUwEvNSKnZQrLY0/yQTdFcXispTygzt+4UBD
 raIHT4K4mhFrLPDLracqCzWEB/3f1sE9C5pdgZBC6FhLZ8vsJq8CbF0qbSetJb6a5KLe/z/8EK8a
 +E=
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:SPjSiKiXhQU=;3NdeqbEvRUCxqPWa7c7O/c3ssPL
 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
Subject: [oss-security] CVE-2025-60495: NULL Pointer Dereference in GPAC/MP4Box via
 gf_media_get_color_info on crafted MP4 with inconsistent sample entry

Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to commit 50b5741f291126b610c59db433fc02e8a17f0c=
5d  (GPAC version 2.5-DEV-rev1780-g50b5741f2-master)
CVE:       CVE-2025-60495
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  The function gf_media_get_color_info in media_tools/isom_tools.c:979 retr=
ieves
  color information from an ISO media sample entry during PID configuration=
 in the
  MP4 muxer pipeline. When a crafted MP4 file contains a video sample entry=
 with an
  inconsistent box structure (e.g., a v210 uncompressed video entry that in=
correctly
  embeds an avcC AVC Decoder Configuration Box), the parser logs an "Unknow=
n box type"
  warning and proceeds without properly initializing the entry's internal s=
tate.

  The function subsequently dereferences a near-null pointer (READ at addre=
ss
  0x000000000008, 8 bytes into a NULL base) without validating the entry st=
ructure,
  terminating the process with SIGSEGV. No evidence of arbitrary code execu=
tion was
  observed; the impact is limited to Denial of Service.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: `CC=3D"gcc -fsanitize=3Daddress -g" CXX=3D"g++ -fsanitize=3D=
address -g"` ;
  -Command: ./MP4Box -split-size 8000 66_gf_media_get_color_info_media_tool=
s_isom_tools_c_979

Asan-log:
=3D=3D3196882=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0x00000=
0000008 (pc 0x7ff47af04f7e bp 0x0ffe8ce234c0 sp 0x7ffca3293ad0 T0)
=3D=3D3196882=3D=3DThe signal is caused by a READ memory access.
    #0 0x7ff47af04f7e in gf_media_get_color_info media_tools/isom_tools.c:9=
79
    #1 0x7ff47b82b690 in mp4_mux_setup_pid filters/mux_isom.c:3673
    #2 0x7ff47b4adde1 in gf_filter_pid_configure filter_core/filter_pid.c:9=
39

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/66/66_gf_media=
_get_color_info_media_tools_isom_tools_c_979

References:
  https://github.com/gpac/gpac/issues/3335
  https://nvd.nist.gov/vuln/detail/CVE-2025-60495
  https://www.cve.org/CVERecord?id=3DCVE-2025-60495

=C2=A0
---
Best regards,
Alexander A. Shvedov
https://github.com/sigdevel
