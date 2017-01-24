X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1824" "Tuesday" "24" "January" "2017" "09:55:01" "+0100" "Sebastian Krahmer" "krahmer@suse.com" "<20170124085501.GA9322@suse.de>" "55" "[oss-security] Headsup: systemd v228 local root exploit (CVE-2016-10156)" "^Date:" nil nil "1" "2017012408:55:01" "[oss-security] Headsup: systemd v228 local root exploit (CVE-2016-10156)" (number mark "        krahmer@suse Jan 24   55/1824  " thread-indent "\"[oss-security] Headsup: systemd v228 local root exploit (CVE-2016-10156)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5895 invoked by uid 550); 24 Jan 2017 08:55:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5868 invoked from network); 24 Jan 2017 08:55:14 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20170124085501.GA9322@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: Felix =?utf-8?Q?Imend?=
 =?utf-8?Q?=F6rffer?= =?utf-8?Q?=2C?= Jane Smithard, Graham Norton, HRB 21284
 (AG Nuernberg)
User-Agent: Outlook
Date: Tue, 24 Jan 2017 09:55:01 +0100
From: Sebastian Krahmer <krahmer@suse.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Headsup: systemd v228 local root exploit (CVE-2016-10156)
To: oss-security@lists.openwall.com

Hi

This is a heads up for a trivial systemd local root exploit, that
was silently fixed in the upstream git as:

commit 06eeacb6fe029804f296b065b3ce91e796e1cd0e
Author: ....
Date:   Fri Jan 29 23:36:08 2016 +0200

    basic: fix touch() creating files with 07777 mode
    
    mode_t is unsigned, so MODE_INVALID < 0 can never be true.
    
    This fixes a possible DoS where any user could fill /run by writing to
    a world-writable /run/systemd/show-status.

The analysis says that is a "possible DoS", but its a local root
exploit indeed. Mode 07777 also contains the suid bit, so files
created by touch() are world writable suids, root owned. Such
as /var/lib/systemd/timers/stamp-fstrim.timer thats found on a non-nosuid mount.

This is trivially exploited by something like:

http://www.halfdog.net/Security/2015/SetgidDirectoryPrivilegeEscalation/CreateSetgidBinary.c

with minimal changes, so I wont provide a PoC here.

The bug was possibly introduced via:

commit ee735086f8670be1591fa9593e80dd60163a7a2f
Author: ...
Date:   Wed Nov 11 22:54:56 2015 +0100

    util-lib: use MODE_INVALID as invalid value for mode_t everywhere


So we believe that this mostly affects v228 of systemd, but its recommended
that distributors cross-check their systemd versions for vulnerable
touch_*() functions. We requested
a CVE for this issue from MITRE by ourselfs: CVE-2016-10156

We would like to see that systemd upstream retrieves CVE's themself
for their own bugs, even if its believed that its just a local DoS.
This would make distributors life much easier when we read the git logs
to spot potential issues. The systemd git log is really huge, with
lots of commits each week ("new services as a service").

Sebastian

-- 

~ perl self.pl
~ $_='print"\$_=\47$_\47;eval"';eval
~ krahmer@suse.com - SuSE Security Team

