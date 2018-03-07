X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/03/07/2
Message-ID: <20180307054933.mbio725l6wd7a232@lorien.valinor.li>
Date: Wed, 7 Mar 2018 06:49:33 +0100
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Subject: util-linux: CVE-2018-7738: code execution in bash-completion for umount
Content-Type: text/plain; charset=utf-8

Hi

Björn Bosselmann reported to the Debian bugtracker[0], that the umount
bash-completion as provided by the util-linux source does not escape
mount point paths. A user with privileges to mount filesystems can
embbed shell commands in a mountpoint name and taking advantage of
this flaw to gain privilgeges.

The issue was (indirectly) in [1] while adressing another issue.

MITRE has assigned 'CVE-2018-7738' for this issue.

Regards,
Salvatore

 [0] https://bugs.debian.org/892179
 [1] https://github.com/karelzak/util-linux/commit/75f03badd7ed9f1dd951863d75e756883d3acc55
