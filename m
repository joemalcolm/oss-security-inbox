X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/34
Message-ID: <arQbCisO5qy7RC3Z@definition.pseudorandom.co.uk>
Date: Wed, 23 Sep 2026 19:31:38 +0100
From: Simon McVittie <smcv@...ian.org>
To: oss-security@...ts.openwall.com
Cc: flatpak@...ts.freedesktop.org
Subject: Re: Flatpak 1.18.1 fixes multiple vulnerabilities
Content-Type: text/plain; charset=utf-8

On Tue, 22 Sep 2026 at 22:48:19 +0100, Simon McVittie wrote:
>On Tue, 11 Aug 2026 at 17:38:45 +0100, Simon McVittie wrote:
>>* Fix local root privilege escalation via revokefs symlink path traversal and
>> commit tampering   (https://github.com/flatpak/flatpak/security/advisories/GHSA-qrwq-7qwx-q9rp,
>> thanks to Ee Yang)

CVE-2026-96808 was allocated for GHSA-qrwq-7qwx-q9rp.

>>* Fix fixed-filename writes to arbitrary locations via symlink attack on .ld.so
>> (https://github.com/flatpak/flatpak/security/advisories/GHSA-99wv-m8rp-g58x,
>> thanks to Sebastian Wick)

CVE-2026-96807 was allocated for GHSA-99wv-m8rp-g58x.

(Thanks to MITRE CNA-LR for these)
