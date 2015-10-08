X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["602" "Thursday" "8" "October" "2015" "18:19:05" "+0200" "Daniel Stender" "debian@danielstender.com" "<56169779.3060002@danielstender.com>" "26" "[oss-security] CVE request: Gummi" nil nil nil "10" "2015100816:19:05" "[oss-security] CVE request: Gummi" (number mark "U       debian@danie Oct  8   26/602   " thread-indent "\"[oss-security] CVE request: Gummi\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7320 invoked by uid 550); 8 Oct 2015 16:53:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17660 invoked from network); 8 Oct 2015 16:19:24 -0000
X-Spam-DCC: : 
Message-ID: <56169779.3060002@danielstender.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with ClamAV 0.97.3/20956/Wed Oct  7 18:05:39 2015
CC: 756432@bugs.debian.org, 
 Debian Security Team <team@security.debian.org>,
 Salvatore Bonaccorso <carnil@debian.org>
Date: Thu, 08 Oct 2015 18:19:05 +0200
From: Daniel Stender <debian@danielstender.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Gummi
To: oss-security@lists.openwall.com

Hello,

I request a CVE for Gummi (LaTeX editor with preview pane) [1], the current
release is 0.6.5.

The program uses predictable filenames for files in /tmp, which produces a race
condition [2].

I'm Debian maintainer for this software.

Please assign a CVE as appropriate.

Thanks,
Daniel Stender

[1] https://github.com/alexandervdm/gummi

[2] https://bugs.debian.org/756432
    gummi: Uses predictable filenames in /tmp based on basename

-- 
4096R/DF5182C8
46CB 1CA8 9EA3 B743 7676 1DB9 15E0 9AF4 DF51 82C8
LPI certified Linux admin (LPI000329859 64mz6f7kt4)
http://www.danielstender.com/blog/

