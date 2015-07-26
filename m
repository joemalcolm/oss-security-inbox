X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1172" "Sunday" "26" "July" "2015" "16:33:02" "+0300" "gremlin@gremlin.ru" "gremlin@gremlin.ru" "<20150726133302.GD12150@gremlin.ru>" "31" "Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser" nil nil nil "7" "2015072613:33:02" "[oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser" (number mark "U       gremlin@grem Jul 26   31/1172  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser\"\n") "<20150723170954.GA17931@localhost.localdomain>" ("<20150723170954.GA17931@localhost.localdomain>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32641 invoked by uid 550); 26 Jul 2015 13:33:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32612 invoked from network); 26 Jul 2015 13:33:16 -0000
Message-ID: <20150726133302.GD12150@gremlin.ru>
References: <20150723170954.GA17931@localhost.localdomain>
Mime-Version: 1.0
Content-Type: text/plain; charset=koi8-r
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20150723170954.GA17931@localhost.localdomain>
OpenPGP: id=8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8
X-PGP-PubKey: 0xEF3B1FA8
X-PGP-Fingerprint: 8832 FE9F A791 F796 8AC9 6E4E 909D AC45 EF3B 1FA8
Date: Sun, 26 Jul 2015 16:33:02 +0300
From: gremlin@gremlin.ru
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser
To: oss-security@lists.openwall.com

On 2015-07-23 10:09:54 -0700, Qualys Security Advisory wrote:

 > We discovered a bug in userhelper, a setuid-root program from
 > the usermode package

That's the requirement #1.

 > userhelper's chfn() function verifies that the fields it was
 > given on the command-line are sane (i.e., contain no forbidden
 > characters).  Unfortunately, these forbidden characters (":,=")
 > do not include '\n' and allow local attackers to inject newline
 > characters into /etc/passwd and alter this file in unexpected ways.

Here comes the requirement #2: adding the line to /etc/passwd must
be sufficient for the user to log in.

 > Our ultimate goal is to inject an arbitrary line into /etc/passwd
 > (for example, the a-line "\na::0:0::/:\n")

In my tests, I used "a::0:0::/:/bin/sh"

Obviously enough, these tests have failed with the "Authentication
service cannot retrieve authentication info" error as the requirement
#2 was not satisfied - all my hosts use TCB password shadowing.

Anyway, thank you for a nice catch :-)


-- 
Alexey V. Vissarionov aka Gremlin from Kremlin <gremlin נעי gremlin פ‏כ ru>
GPG: 8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8 @ hkp://keys.gnupg.net
