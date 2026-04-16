Received: (qmail 23674 invoked by uid 550); 16 Apr 2026 16:31:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3972 invoked from network); 16 Apr 2026 11:59:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776340740; x=1776945540; darn=lists.openwall.com;
        h=mime-version:content-transfer-encoding:subject:to:from:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=S6mT6cOJ75vDNjQoLjzAFw2KY+5kn2N7D/sbkvnSKek=;
        b=ejwHKduvHcDeAI7P7UQSKezS0MuGiU0lCq4RddsXiguauAmKR/4GvfuS5xVgQO0h1y
         +d+5wQwRSV/q1tL49nHfB9HhYc5uFPLBQoClGTGLe5KgAQVtrDDGIW483fWbm8G9dSZb
         VabmE+czJPnpQeiCCGrBaE8+BrlsEswRvbhK141ebFr5DQWnmDzTRmAJn/6t9fhrnIdv
         sw1fgzOs2MgBemAr/Y3JNnaDthxozIX0kuQnLbuEhfvqCO5I0l2Cd6uOBRgJKLaOBfD1
         Jw79G65pBYo2RqNHzVQIAl4C+JcpBa15HjBknb073hrxxgFzkjitsYDA4sbr1U3+Xi9S
         LBug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776340740; x=1776945540;
        h=mime-version:content-transfer-encoding:subject:to:from:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S6mT6cOJ75vDNjQoLjzAFw2KY+5kn2N7D/sbkvnSKek=;
        b=PV2x3lGdILpOzqIKn3MxUw8YmEQGqRxHDz2wbvUQWwOR3DvhEcbkcXTfjDmy3Lc+R+
         haCiU8bhGpC6tJFJFHqhrhuxmkq4y2mxqOO502Ec5B5UBWqFjwVkhJdlEPGS9XqhOABu
         QMi6pg6OXREfPAY4Mur7lszcWZUqoR1OKoreRAJfydRKeDk1Bu58nN3GKNWWX56JevG6
         468FXGNueHSIP+0BF31n3MdGG+nzQ6CiLbIDSmOUqfLji4kzIRFoep1W8b49E8fA5MEb
         2XPeRo3vWu3G2/kYKTpYPw0SU4gB6j3+sz9cBiqP2jS7br3TZOuGqnJEBP9VSU90HM/W
         dr0A==
X-Gm-Message-State: AOJu0Yx19bJs/4Cj+RoynvRdwwMLPvNr4x7lRSUNnInl6t82QgV59KHZ
	0fHJa4ETfxmSMWlQDqvjfVhtKtWfSK7gjy2L16ylN95yQ6ZYK5Z30cvPgllaZfyw
X-Gm-Gg: AeBDies+Y9YbuDlO6y5eDsK5/sqCe2Tk1xf3zZ9k+tL+egOws0pUPAFIfJLcwD+7tQc
	5aX7ubNChSJ+Fz+Jj3TYTKmEl8k3zoR041NPxXhXFuyWHObmOJOKt0r1uH3oJQsnt5MiSPbvxHQ
	VA3rJrRQ8GJIa31dO4It5o482FhebdPEBZQqXCbfrz5v19D9RCGTrU1Y8SNRXxBFNL0kXXRcCkd
	RiM4Wj88WEVzZnC5NnKixI2jE69G1xqv4srreW1w4/hymjP5vr3VjDPMN/0vwstWIxEzABU/TA5
	4EA0Qm5rE8CXl7JPCA5us92PQJfDAn9AqSOPNT5MQU+FCF+0ySYDIiJy2kV5wqLwA5xQPaEw+mP
	/sTTL6oO+lm0RGOXzFn0AC34FBRwAJyXcnSP8Um7+gC5dVSR5sVCuMuDKURHZkLnsrByjBvY6PY
	05et0HSzTDgDAwROXU/4VgdTxxw5P51+mQF9p9iXTLH5WaQnEBJhcIMQm9ncQkAr6iTRg=
X-Received: by 2002:a05:6a00:2791:b0:82c:f035:6748 with SMTP id d2e1a72fcca58-82f0c253756mr26833293b3a.42.1776340740008;
        Thu, 16 Apr 2026 04:59:00 -0700 (PDT)
Message-ID: <69e0cf03.a70a0220.a47bc.d193@mx.google.com>
Date: Thu, 16 Apr 2026 04:58:59 -0700 (PDT)
From: yangjincheng1998@gmail.com
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-27363: FontForge affected by FreeType heap-buffer-overflow;
 upstream maintainer declines under Community-guidelines #D1

Hello oss-security,

This is an information-only post documenting a downstream impact and
maintainer response for an existing, already-public CVE.

== CVE ==
CVE-2025-27363 -- FreeType <= 2.13.2 heap-buffer-overflow in
load_truetype_glyph(), src/truetype/ttgload.c (~line 1929).
NVD: https://nvd.nist.gov/vuln/detail/CVE-2025-27363
Fix: FreeType 2.13.3, upstream commit a1e5a9df.

== Downstream impact: FontForge ==
FontForge (https://github.com/fontforge/fontforge) links FreeType to
parse and process font files. When built or run against FreeType
<= 2.13.2, FontForge inherits the heap-buffer-overflow when opening
a maliciously crafted TrueType font.

We confirmed the issue with AddressSanitizer against FreeType 2.13.0
(common in distributions that have not backported the fix):

  ==ERROR: AddressSanitizer: heap-buffer-overflow
   WRITE of size 16 at ttgload.c:1929 in load_truetype_glyph
   0 bytes to the right of 16-byte region allocated at ttgload.c:1909

Recommended action for distributors and packagers: ensure FontForge is
built/linked against FreeType >= 2.13.3, or apply the upstream fix
(commit a1e5a9df).

== Upstream maintainer response ==
We reported this downstream impact to FontForge upstream as
https://github.com/fontforge/fontforge/issues/5799 (2026-04-15).
The issue was closed within hours under "Community-guidelines #D1",
which states that the project does not accept security reports without
an accompanying fix PR.

Context: ZDI submitted 12 unrelated FontForge CVEs in 2025-12 and
received the same response
(https://github.com/fontforge/fontforge/issues/5706).

We post here so distributors and downstream packagers have a public,
independent record of the FontForge -> FreeType linkage status, and
can verify their own builds.

== Reproducer ==
Public PoC: https://github.com/francozappa/poc-CVE-2025-27363
Build/run FontForge against FreeType 2.13.0 or 2.13.2 with the PoC
TTF to reproduce.

Regards,
vulgraph
(Academic security research; PhD work on 1-day vulnerability
propagation across forks and downstream consumers.)
