X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["405" "Wednesday" "1" "April" "2015" "21:29:20" "+0200" "Florian Weimer" "fw@deneb.enyo.de" "<87fv8jprzj.fsf@mid.deneb.enyo.de>" "11" "[oss-security] CVE request: Buffer overflow in das_watchdog" nil nil nil "4" "2015040119:29:20" "[oss-security] CVE request: Buffer overflow in das_watchdog" (number mark "        fw@deneb.eny Apr  1   11/405   " thread-indent "\"[oss-security] CVE request: Buffer overflow in das_watchdog\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17500 invoked by uid 550); 1 Apr 2015 19:29:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17479 invoked from network); 1 Apr 2015 19:29:32 -0000
Message-ID: <87fv8jprzj.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Date: Wed, 01 Apr 2015 21:29:20 +0200
From: Florian Weimer <fw@deneb.enyo.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Buffer overflow in das_watchdog
To: oss-security@lists.openwall.com

This was privately reported to Debian, but the developer published a
fix before we could assign a CVE ID.

Adam Sampson discovered that das_watchdog, a daemon to detect and
pause real-time processes which are misbehaving, contains an
exploitable buffer overflow in the handling of the XAUTHORITY
environment variable.

Upstream commit:

<https://github.com/kmatheussen/das_watchdog/commit/bd20bb02e75e2c>
