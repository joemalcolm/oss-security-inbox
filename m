X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["867" "Tuesday" "7" "February" "2017" "13:52:23" "+0100" "Christian Boltz" "oss-security@cboltz.de" "<6796510.KACISFJ7AR@tux.boltz.de.vu>" "33" "[oss-security] CVE request: PostfixAdmin allows to delete protected aliases" nil nil nil "2" "2017020712:52:23" "[oss-security] CVE request: PostfixAdmin allows to delete protected aliases" (number mark "U       oss-security Feb  7   33/867   " thread-indent "\"[oss-security] CVE request: PostfixAdmin allows to delete protected aliases\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5583 invoked by uid 550); 7 Feb 2017 13:18:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31923 invoked from network); 7 Feb 2017 12:52:36 -0000
X-sprachakt.com-SMTP-Auth: no
X-Virus-Scanned: amavisd-new at cboltz.de
From: Christian Boltz <oss-security@cboltz.de>
To: oss-security@lists.openwall.com
Date: Tue, 07 Feb 2017 13:52:23 +0100
Message-ID: <6796510.KACISFJ7AR@tux.boltz.de.vu>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Face: #?nL0}JpqNtLQy@q#bRm?B?pGS8[mx6r.6[91zp@*2DZ?18)haWs5wgvi,,wF/JWMTUh+6x,b7_`pW3)m~0606sDW0&'EKA}_-W+)Bz~d]k>4E9TyU}k@b&1=%yk\
Subject: [oss-security] CVE request: PostfixAdmin allows to delete protected aliases

Hello,

[I'm not subscribed, so please CC me in your replies.]

I'd like to request a CVE ID for Postfixadmin.

Thanks to a missing permission check, domain admins can delete aliases 
they are not allowed to delete (for example abuse@, which the server 
admin might have setup so that he gets all abuse mails).

This can only be exploited by authentificated domain admins.

See https://github.com/postfixadmin/postfixadmin/pull/23 for a detailed 
description.

Affected versions:
- PostfixAdmin 3.0 and 3.0.1
- PostfixAdmin 2.91, 2.92 and 2.93 (which actually are 3.0 beta releases)

Older PostfixAdmin releases (2.3.x and older) are not affected.

PostfixAdmin 3.0.2 will fix this issue - I'll release it in the next days.


Regards,

Christian Boltz
-- 
Immerwieder der gleiche Anfaengerfehler:
/dev/null ist fuer Backup,
/dev/zero ist fuer Restore.
[J. P. Meier]

