X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["809" "Wednesday" "19" "April" "2017" "11:21:24" "+0200" "Sebastian Krahmer" "krahmer@suse.com" "<20170419092124.GA9609@suse.de>" "30" "[oss-security] CVE-2017-7874 versus CVE-2009-1185 ?" nil nil nil "4" "2017041909:21:24" "[oss-security] CVE-2017-7874 versus CVE-2009-1185 ?" (number mark "U       krahmer@suse Apr 19   30/809   " thread-indent "\"[oss-security] CVE-2017-7874 versus CVE-2009-1185 ?\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1810 invoked by uid 550); 19 Apr 2017 09:21:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1789 invoked from network); 19 Apr 2017 09:21:36 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Wed, 19 Apr 2017 11:21:24 +0200
From: Sebastian Krahmer <krahmer@suse.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20170419092124.GA9609@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: Felix =?utf-8?Q?Imend?=
 =?utf-8?Q?=F6rffer?= =?utf-8?Q?=2C?= Jane Smithard, Graham Norton, HRB 21284
 (AG Nuernberg)
User-Agent: Outlook
Subject: [oss-security] CVE-2017-7874 versus CVE-2009-1185 ?

Hi


I stumbled across https://twitter.com/info_dox/status/854372066228932609
that is curious about an udev+kernel exploit
(https://packetstormsecurity.com/files/142152/Linux-Kernel-4.8.0-udev-232-Privilege-Escalation.html)

which claims to exploit a missing sender-check within udev. That makes
me wonder, as kernel 4.8.0 (and even earlier) no longer allow users
to send NETLINK_KOBJECT_UEVENT messages. Our testcases fail,
as they should:

https://bugzilla.suse.com/show_bug.cgi?id=1034330


However, MITRE apparently assigned a valid CVE for it:

http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-7874

So either we miss some weird corner case or the CVE is invalid
and should be withdrawn?

Sebastian

-- 

~ perl self.pl
~ $_='print"\$_=\47$_\47;eval"';eval
~ krahmer@suse.com - SuSE Security Team

