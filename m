X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2025" "Saturday" "16" "July" "2016" "10:25:08" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160716142508.AAA966C0D8A@smtpvmsrv1.mitre.org>" "45" "[oss-security] Re: CVE Request for KNewStuff/KArchive issue" nil nil nil "7" "2016071614:25:08" "[oss-security] Re: CVE Request for KNewStuff/KArchive issue" (number mark "U       cve-assign@m Jul 16   45/2025  " thread-indent "\"[oss-security] Re: CVE Request for KNewStuff/KArchive issue\"\n") "<86413253.kTlB1PI1Wh@asterixp50>" ("<86413253.kTlB1PI1Wh@asterixp50>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3099 invoked by uid 550); 16 Jul 2016 14:25:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3077 invoked from network); 16 Jul 2016 14:25:20 -0000
From: cve-assign@mitre.org
To: faure@kde.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, kde-security@kde.org
In-Reply-To: <86413253.kTlB1PI1Wh@asterixp50>
Message-Id: <20160716142508.AAA966C0D8A@smtpvmsrv1.mitre.org>
Date: Sat, 16 Jul 2016 10:25:08 -0400 (EDT)
Subject: [oss-security] Re: CVE Request for KNewStuff/KArchive issue

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> When using KNewStuff, one of the KDE Frameworks, to download and install files
> from the internet (e.g. a wallpaper, a plasma applet, etc.), it was possible
> to download a maliciously crafted archive file (e.g. tar.gz or zip) containing
> relative paths leading to outside the extraction directory (say
> "../../../.bashrc" for instance).
> 
> The fix has already been reviewed and submitted:
>    https://git.reviewboard.kde.org/r/128185/
> This fix is one layer below KNewStuff, in the framework called KArchive, which
> handles extraction of .tar.gz / .zip archives. KArchive now prevents files from
> being written outside of the extraction directory, in all cases.

>> Switch to Tar's default behavior to avoid extraction
>> to arbitrary system locations outside of extraction folder. Instead,
>> extract such files to root location in extraction folder.
>> 
>> Submitted with commit 0cb243f64eef45565741b27364cece7d5c349c37 ... to branch master

Use CVE-2016-6232.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXikNtAAoJEHb/MwWLVhi245oP/2iuIOTUeddF7pINd0p9zPom
5OcVSolQNy3gaqYc/XlE36FbfnoLafjxW0NUO6xKWBs+ftbctcYWuCSJ4g8jodbI
+fFzuSCGzVwYbZR3L+Ew2pzs0HM34B4lql1lb8PNl++qXA4pQf1V/XrkaHL7ucUX
T/k/UAN3KNq1yluM+oxNcTajnzMd5rBKMwXgm1zDVx8k2A0NEgmUBbR6Iq5/MZRZ
+SMOFEYR9pJdc8CXjCr7MkvcYY+5/XQ8zQxj53N4yxpaPGPBQ+zbbKK5//IppWa+
AQEQHGn5nIz+FjekWMFm7vKXO61LFgwLFM1ZWD26ovb8NaFW2glgxtq3lB6suw94
8uKSW5YMnEnizcdUmNhHsdWjAGwU5AkEWagh07bd5XkE/4+DWXtfz0uBqrThXytb
9cY1YBth/9FYzac8ldfHxPjsc4dFuqG7Z+EdiR/mz4Emsjgca3YUcRfrz+M4+Xue
+TlpNX4JtraXe/Op2OvQTgJVzkpqNTVlvfxKO+GKJX4NN0wYlQJG8DdcKm0HgtvE
Ne1y/aMrOiB5JdP4I0OCuqGCx7MzGTNuiSXlNfEl0BWLg0Hmp3JIQ8SUMjTxi65N
0oXRxexw5BDw0voT5mHnD7mJjc1xMhtnMGaSmqjUJ8G2IaDf6l0m3l0pRU9WcdxY
fhHlAGOcUjFrFCQPvrv/
=F3ot
-----END PGP SIGNATURE-----
