X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["888" "Friday" "25" "November" "2016" "10:09:09" "+1030" "Doran Moppert" "dmoppert@redhat.com" "<20161124233908.GA20286@sin.redhat.com>" "30" "[oss-security] CVE request: icu: stack-based buffer overflow in uloc_getDisplayName" nil nil nil "11" "2016112423:39:09" "[oss-security] CVE request: icu: stack-based buffer overflow in uloc_getDisplayName" (number mark "U       dmoppert@red Nov 25   30/888   " thread-indent "\"[oss-security] CVE request: icu: stack-based buffer overflow in uloc_getDisplayName\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23902 invoked by uid 550); 24 Nov 2016 23:39:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23881 invoked from network); 24 Nov 2016 23:39:25 -0000
Date: Fri, 25 Nov 2016 10:09:09 +1030
From: Doran Moppert <dmoppert@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20161124233908.GA20286@sin.redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Thu, 24 Nov 2016 23:39:13 +0000 (UTC)
Subject: [oss-security] CVE request: icu: stack-based buffer overflow in uloc_getDisplayName


A stack overflow in ICU4C (http://icu-project.org/), fixed some 3 years
ago in 54.1 but affecting versions back to (at least) 3.6, has just been
made public on the ICU tracker.

Upstream bug:

http://bugs.icu-project.org/trac/ticket/10891

Patch:

http://bugs.icu-project.org/trac/changeset/35699

The bug was originally discovered in PHP and a workaround applied there:

https://bugs.php.net/bug.php?id=67397

Note that the PHP bug is exactly the same flaw, but they worked around
it by limiting the length of strings passed to icu.  I don't believe
this needs a separate CVE even though it was "fixed" independently.

While code execution is theoretically possible, bypassing the stack
canary looks extremely difficult.  Most likely impact on platforms
building with SSP is only a crash.

https://bugzilla.redhat.com/show_bug.cgi?id=1383569

-- 
Doran Moppert
Red Hat Product Security
