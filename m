X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["890" "Wednesday" "28" "October" "2015" "11:42:18" "+0100" "Sebastian Krahmer" "krahmer@suse.com" "<20151028104218.GA14987@suse.de>" "32" "[oss-security] csd-datetime forgets to authorize users" nil nil nil "10" "2015102810:42:18" "[oss-security] csd-datetime forgets to authorize users" (number mark "U       krahmer@suse Oct 28   32/890   " thread-indent "\"[oss-security] csd-datetime forgets to authorize users\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30523 invoked by uid 550); 28 Oct 2015 10:42:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30470 invoked from network); 28 Oct 2015 10:42:30 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20151028104218.GA14987@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: Felix =?utf-8?Q?Imend?=
 =?utf-8?Q?=F6rffer?= =?utf-8?Q?=2C?= Jane Smithard, Graham Norton, HRB 21284
 (AG Nuernberg)
User-Agent: Outlook
Cc: clement.lefebvre@linuxmint.com
Date: Wed, 28 Oct 2015 11:42:18 +0100
From: Sebastian Krahmer <krahmer@suse.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] csd-datetime forgets to authorize users
To: oss-security@lists.openwall.com


Hi

The csd-datetime-setting SetDate DBUS function apparently forgets
to check the polkit authorization for the caller. Unlike SetTime.
At least I couldnt find any restriction that its not callable by
users.

Bug and patch proposal is here:

https://bugzilla.suse.com/show_bug.cgi?id=951830


I am not big fan of calling binaries from inside DBUS functions, but
seems to be state of the art in desktop programming and doesnt
look exploitable. Yet, w/o authorization you may run into vulnerabilities
like the sudo time-ticket stuff.

csd seems to be fork of gnome-settings-daemon but to my knowledge
they dont offer a set_date(), at least in the version I looked at.
So this issue seems to be introduced by csd itself.

If upstream (cc) confirms, can someone please assign a CVE?

Sebastian

-- 

~ perl self.pl
~ $_='print"\$_=\47$_\47;eval"';eval
~ krahmer@suse.com - SuSE Security Team

