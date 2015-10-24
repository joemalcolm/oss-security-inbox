X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["852" "Sunday" "25" "October" "2015" "00:12:38" "+0900" "Mamoru TASAKA" "mtasaka@fedoraproject.org" "<562B9FE6.605@fedoraproject.org>" "28" "[oss-security] CVE request: xscreensaver aborts when unpluging second monitor cable when asking password" nil nil nil "10" "2015102415:12:38" "[oss-security] CVE request: xscreensaver aborts when unpluging second monitor cable when asking password" (number mark "        mtasaka@fedo Oct 25   28/852   " thread-indent "\"[oss-security] CVE request: xscreensaver aborts when unpluging second monitor cable when asking password\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26284 invoked by uid 550); 24 Oct 2015 15:12:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26266 invoked from network); 24 Oct 2015 15:12:54 -0000
Message-ID: <562B9FE6.605@fedoraproject.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-2022-jp
Content-Transfer-Encoding: 7bit
Cc: secalert@redhat.com, Mamoru Tasaka <mtasaka@fedoraproject.org>
Date: Sun, 25 Oct 2015 00:12:38 +0900
From: Mamoru TASAKA <mtasaka@fedoraproject.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: xscreensaver aborts when unpluging second monitor cable
 when asking password
To: oss-security@lists.openwall.com

Hello, all:

I received a Fedora bug report
https://bugzilla.redhat.com/show_bug.cgi?id=1274452
that on XFCE,

* using VGA and HDMI dual monitor (for example)
* lock the screen with $ xscreensaver-command -lock
* move mouse, password dialog appears
* during the time password dialog still appears, unplug HDMI cable

then xscreensaver abort()s (actually it abort()s,
not segv, however I guess it is not important)
(at the line 420 in xscreensaver-5.33/driver/subprocs.c)

100% reproducible. This issue is already in public as
https://twitter.com/Thaolia/status/656823859304398848

I and the upstream developer already tracked down the cause
and the upstream send me a patch, which seems to be
working. hopefully the upstream
will release the new version soon.

Please assign a CVE ID for this.

Best regards,
Mamoru TASAKA <mtasaka@fedoraproject.org>

