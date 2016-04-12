X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["658" "Tuesday" "12" "April" "2016" "09:49:37" "+0200" "Sebastian Krahmer" "krahmer@suse.com" "<20160412074937.GA30265@suse.de>" "25" "[oss-security] CVE-Request for brltty auth bypass" nil nil nil "4" "2016041207:49:37" "[oss-security] CVE-Request for brltty auth bypass" (number mark "U       krahmer@suse Apr 12   25/658   " thread-indent "\"[oss-security] CVE-Request for brltty auth bypass\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9576 invoked by uid 550); 12 Apr 2016 07:49:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9556 invoked from network); 12 Apr 2016 07:49:49 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Tue, 12 Apr 2016 09:49:37 +0200
From: Sebastian Krahmer <krahmer@suse.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org, dave@mielke.cc
Message-ID: <20160412074937.GA30265@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: Felix =?utf-8?Q?Imend?=
 =?utf-8?Q?=F6rffer?= =?utf-8?Q?=2C?= Jane Smithard, Graham Norton, HRB 21284
 (AG Nuernberg)
User-Agent: Outlook
Subject: [oss-security] CVE-Request for brltty auth bypass

Hi

brltty is using polkit to control access to system ressources
("Write to the braille display").
It is doing so by using the PID of the process connecting
to the server socket. This is racy. The unix polkit subject
is deprecated, but if its used, the UID should be specified
as well, so it doesnt get looked up in /proc.

I already contacted upstream (Cc) but so far no response.
You can find my (untested) proposed patch at:

https://bugzilla.suse.com/show_bug.cgi?id=967436

Its probably not the worst issue, but should be fixed
nevertheless.

Sebastian

-- 

~ perl self.pl
~ $_='print"\$_=\47$_\47;eval"';eval
~ krahmer@suse.com - SuSE Security Team

