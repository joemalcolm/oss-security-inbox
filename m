X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["668" "Sunday" "9" "May" "2021" "21:38:23" "+0200" "Gabriel Corona" "gabriel.corona@enst-bretagne.fr" nil "20" "[oss-security] Code execution through Thunar" nil nil nil "5" nil nil (number mark "U       gabriel.coro May  9   20/668   " thread-indent "\"[oss-security] Code execution through Thunar\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Code execution through Thunar" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32696 invoked by uid 550); 9 May 2021 19:42:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32054 invoked from network); 9 May 2021 19:38:35 -0000
To: oss-security@lists.openwall.com
From: Gabriel Corona <gabriel.corona@enst-bretagne.fr>
Message-ID: <2d1bd340-fac1-b16a-c046-494c2d58f369@enst-bretagne.fr>
Date: Sun, 9 May 2021 21:38:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Code execution through Thunar

When called with a regular file as command line argument, Thunar
would delegate to some other program without user confirmation
based on the file type. This could be exploited to trigger code
execution in a chain of vulnerabilities.

This is fixed in 4.16.7 and 4.17.2. When called with a regular
file, Thunar now opens the containing directory and selects the
file.

A CVE ID has been requested.

Reference:

https://gitlab.xfce.org/xfce/thunar/-/commit/9165a61f95e43cc0b5abf9b98eee2818a0191e0b

Note: the fix introduced a regression which is fixed in 4.16.8 and 4.17.3.

https://gitlab.xfce.org/xfce/thunar/-/commit/3b54d9d7dbd7fd16235e2141c43a7f18718f5664

Gabriel
