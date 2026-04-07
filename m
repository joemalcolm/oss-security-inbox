Received: (qmail 11588 invoked by uid 550); 7 Apr 2026 14:31:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9227 invoked from network); 7 Apr 2026 03:23:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775532188;
	bh=jvHrV2jAFByGifmmmhf+4dum/0xcHPtctPphsJTdkb8=;
	h=From:Date:Subject:To:From;
	b=vM7l83SLCpSGEjV6AHg9h3Px5VVDeDsRD6cU2YKNq1/TMPPDjir1YN6bPM+kNRJ+3
	 Ez1KWxTX5O1KzPWIChLM1QfPyqXnqdXTqqHNcsPcXw00FzfWmhIKw3YL8zcBlrLOmk
	 nHqw0isRnequ41TP+Lr7/WKDbmyekPV0y+q7qCku6NshR+LbrS//aEeA2llHGM9BGo
	 teXWwUktk+dDuOuZo01I3x0xboKrI5tdCVYwucPzPNCUXjqZ/risEWtTlSyhJ8I/EY
	 T4emOtaFhzPt/8CJA+tGPS/BZisoPvcrs8LBiw57jWfr3jDucgxaXZwd/FEAPaWVTp
	 hGX+qk4fu8lYg==
X-Gm-Message-State: AOJu0YxfjBQgT83UfSV1YmKkZEKWopd793hWz38rx036Fa/q6YWfRT9A
	UiTdiDBz7v29ZwRCv9xxVXI5y3zZLZpcSMAXyijk570Uq+PzVHGTo0MUf2bzotuilgwYnFunZIf
	WdjYhmnEEZd3YVYncSAvO4GDqwTmz4gI=
X-Received: by 2002:a17:903:2c03:b0:2b2:ac6f:f87 with SMTP id
 d9443c01a7336-2b2ac6f1261mr26532405ad.44.1775532188068; Mon, 06 Apr 2026
 20:23:08 -0700 (PDT)
MIME-Version: 1.0
From: "Andrew G. Morgan" <morgan@kernel.org>
Date: Mon, 6 Apr 2026 20:22:56 -0700
X-Gmail-Original-Message-ID: <CACmP8U+CbkozUQ1OqxsXMxLgMYvQS85QsWaGtVGBD8BFox34=w@mail.gmail.com>
X-Gm-Features: AQROBzCyAmkrNMb3luF7TRZqC2EPPN5I11clDT0AcX_JEai3WzgxhqiqpOTVXTc
Message-ID: <CACmP8U+CbkozUQ1OqxsXMxLgMYvQS85QsWaGtVGBD8BFox34=w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] libcap-2.77 (since libcap-2.04) has TOCTOU privilege escalation issue

Hi,

I've just released libcap-2.78 which includes a fix for a TOCTOU issue
in libcap.

The issue has been allocated the following code: CVE-2026-4878. It is
the subject of this private bug:
https://bugzilla.redhat.com/show_bug.cgi?id=2447554 and is also
written up in a github.com advisory which I will publish on Wednesday
(this week). The github advisory tool characterizes the issue as
CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:H/I:H/A:H (Severity: Moderate 7 /
10).

The fix for pretty much that whole range of libcap releases is this commit:

https://git.kernel.org/pub/scm/libs/libcap/libcap.git/commit/?id=286ace1259992bd0c5d9016715833f2e148ac596

As the code is publicly available, there is no embargo in place for
releasing fixes.

Cheers

Andrew

PS I tried a few times to post to the private openwall list about this
issue 9 days ago, but my email bounced (likely because I couldn't
effectively follow the mail formatting requirements). I might have
realized that the emails were bounced if gmail hadn't silently placed
the bounced replies in my SPAM folder. Sorry about that.
