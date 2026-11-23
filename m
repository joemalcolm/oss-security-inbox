X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/15
Message-ID: <87o6bfc0to.fsf@gentoo.org>
Date: Mon, 23 Nov 2026 10:13:39 +0000
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Subject: Fwd: Anope services security releases
Content-Type: text/plain; charset=utf-8


-------------------- Start of forwarded message --------------------
Date: Sun, 22 Nov 2026 18:55:42 +0100
Subject: Anope services security releases
To: UnrealIRCd Release Announcements <unreal-notify@...ts.sourceforge.net>
From: Bram Matthys via Unreal-notify <unreal-notify@...ts.sourceforge.net>


Hi everyone,

I know, this is the UnrealIRCd releases mailing list... but I wanted to 
send out this warning, as many UnrealIRCd networks use Anope.

Following the security audit of UnrealIRCd, I have been auditing a few 
other IRC projects (with AI) and reporting my findings to these 
projects. Anope is one of those.

Anope has just put out 2.0.21 
<https://www.anope.org/news/2026/anope-2021-release.html> and 2.1.28 
<https://www.anope.org/news/2026/anope-2128-release.html> which fixes 
10+ security issues. The issues consist of: crashes, hangs, account 
takeover, and command injection under certain conditions (similar to our 
critical UnrealIRCd issue from Nov 7).

If you are running Anope then we suggest you to upgrade ASAP.

Big thanks to Sadie, who fixed all of this within a week of my report.

Best regards,

Bram Matthys (Syzop)


Content of type "text/html" skipped


_______________________________________________
Unreal-notify mailing list
Unreal-notify@...ts.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/unreal-notify


-------------------- End of forwarded message --------------------


Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
