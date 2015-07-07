X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1366" "Tuesday" "7" "July" "2015" "16:42:22" "+0300" "Solar Designer" "solar@openwall.com" "<20150707134222.GA8667@openwall.com>" "37" "[oss-security] CVE-2015-3281 HAProxy information leak vulnerability" nil nil nil "7" "2015070713:42:22" "[oss-security] CVE-2015-3281 HAProxy information leak vulnerability" (number mark "U       solar@openwa Jul  7   37/1366  " thread-indent "\"[oss-security] CVE-2015-3281 HAProxy information leak vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11738 invoked by uid 550); 7 Jul 2015 13:42:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11575 invoked from network); 7 Jul 2015 13:42:26 -0000
Date: Tue, 7 Jul 2015 16:42:22 +0300
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20150707134222.GA8667@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] CVE-2015-3281 HAProxy information leak vulnerability

Hi,

I think this should be brought in here, from the news section on the
HAProxy website:

http://www.haproxy.org/news.html

"July, 3rd, 2015 : 1.5.14 : fixes an information leak vulnerability
(CVE-2015-3281) 

A vulnerability was found when HTTP pipelining is used.  In some cases,
a client might be able to cause a buffer alignment issue and retrieve
uninitialized memory contents that exhibit data from a past request or
session.  I want to address sincere congratulations to Charlie
Smurthwaite of aTech Media for the really detailed traces he provided
which made it possible to find the cause of this bug.  Every user of
1.5-dev, 1.5.x or 1.6-dev must upgrade to 1.5.14 or latest 1.6-dev
snapshot to fix this issue, or use the backport of the fix provided by
their operating system vendors.  CVE-2015-3281 was assigned to this bug."

Fix:

http://git.haproxy.org/?p=haproxy-1.5.git;a=commit;h=7ec765568883b2d4e5a2796adbeb492a22ec9bd4

CVE:

https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2015-3281

"The buffer_slow_realign function in HAProxy 1.5.x before 1.5.14 and
1.6-dev does not properly realign a buffer that is used for pending
outgoing data, which allows remote attackers to obtain sensitive
information (uninitialized memory contents of previous requests) via a
crafted request."

Debian and Ubuntu have already sent out advisories.

Alexander
