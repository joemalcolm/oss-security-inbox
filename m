X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/30/7
Message-ID: <auRc64v2k2PhSJA1@donburi.himad.notcom.org>
Date: Fri, 30 Oct 2026 11:14:52 +0200
From: Valtteri Vuorikoski <vuori@...com.org>
To: oss-security@...ts.openwall.com
Subject: Non-OSS: Claude Code for VS Code extension compromised
Content-Type: text/plain; charset=utf-8

Apologies for posting a non-open-source item, but since I get the impression
that quite a few open-source maintainers use Anthropic products by various
means nowadays, this might be a compromise vector in such projects:

Reportedly the official Claude Code for VS Code extension on the Open VSX
extension marketplace for VS Code derived editors such as Cursor (but allegedly
not the Microsoft Visual Studio Marketplace which serves apps released by
Microsoft) was compromised to drop a remote access trojan.

The compromised version 2.1.313 was removed, but auto-update may have caused it
to be installed on a large number of machines. Official announcements are
scarce, but based on social media postings some large organizations have
already been attacked through the implant.

An advisory by Phorion at
<https://phorion.io/blog/offical-claude-code-vsx-compromise/> provides further
details, and detection and mitigation steps.

 -valtteri
 
