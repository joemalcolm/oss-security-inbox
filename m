X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/1
Message-ID: <arMe186AmwjPYg3d@ryzen.an3e.de>
Date: Wed, 23 Sep 2026 02:35:35 +0200
From: Matthias Andree <matthias.andree@....de>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-94184: some builds of fetchmail 6.6.6 and older vulnerable to remote code execution in NTLM authentication client (revised fetchmail-SA-2026-01)
Content-Type: text/plain; charset=utf-8

I have released fetchmail 6.6.8 which predominantly corrects
the security announcement fetchmail-SA-2026-01 (corrected version 
attached) and the NEWS file that was shipping with fetchmail 6.6.7 
because they ruled out an exploitability, which turns out to be
inaccurate, but also tweaks autoconf-based configuration and
adds two translations (sr, zh_TW) to NLS-enabled default installs,
so is not only a documentation update, strictly speaking.

While the fetchmail 6.6.7 release did indeed fix the vulnerable NTLM 
authentication client code and check buffer sizes to avoid overflowing 
its end by several dozen bytes, the inaccurate documentation needs
to be corrected to avoid confusion.

Tristan Madani, the original reporter, pointed out that in some 
circumstances, NTLM-enabled builds of fetchmail may be exploitable and
worst case suffer remote code execution, so let's advise caution.

The revised security announcement is attached.

-- 
Matthias Andree
fetchmail maintainer

View attachment "fetchmail-SA-2026-01.txt" of type "text/plain" (8047 bytes)
