X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1149" "Monday" "17" "May" "2021" "17:33:48" "+0300" "def" "def@huumeet.info" nil "25" "Re: [oss-security] rxvt terminal (+bash) remoteish code execution 0day" nil nil nil "5" nil nil (number mark "U       def@huumeet. May 17   25/1149  " thread-indent "\"Re: [oss-security] rxvt terminal (+bash) remoteish code execution 0day\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] rxvt terminal (+bash) remoteish code execution 0day" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19959 invoked by uid 550); 17 May 2021 14:36:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15766 invoked from network); 17 May 2021 14:33:59 -0000
Date: Mon, 17 May 2021 17:33:48 +0300
From: def <def@huumeet.info>
To: oss-security@lists.openwall.com
Message-ID: <20210517143348.GB24667@huumeet.info>
References: <20210517134904.GA24667@huumeet.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210517134904.GA24667@huumeet.info>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] rxvt terminal (+bash) remoteish code execution
 0day

Some minor clarifications.

The bug is not technically a 0day for rxvt-unicode and has been known at
least since 2017-05-01 when it was discussed publicly in oss-security:

    https://www.openwall.com/lists/oss-security/2017/05/01/20

The issue was quietly fixed in rxvt-unicode upstream in 2017. Most Linux
distributions ship unpatched rxvt-unicode 9.22 (2016-01-23) because the
first official fixed release version is rxvt-unicode 9.25 (2021-05-14).
Yes, version numbers 9.23 & 9.24 were skipped in upstream. In any case,
the vulnerability still counts as 0day against non-unicode rxvt 2.7.10,
and forks such as mrxvt 0.5.4 and Enlightenment's eterm 0.9.7 terminal.

Finally, the vulnerability can be exploited in any context in which the
attacker can plant payload scripts in a subdirectory of CWD and trigger
code execution by writing (unescaped) ANSI escape sequences to stdout or
stderr. Suitable target programs besides `scp` include popular CLI tools
such as `unrar` and `busybox tar` as demonstrated in the PoCs here:

    https://huumeet.info/~def/rxvt0day/

Note that GNU tar is not exploitable due to properly escaped filenames.

- def
