X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["660" "Friday" "12" "January" "2018" "16:58:13" "+0100" "Jakub Wilk" "jwilk@jwilk.net" "<20180112155812.l3ye6n4ymengrcbc@jwilk.net>" "18" "Re: [oss-security] Libc Realpath Buffer Underflow CVE-2018-1000001" nil nil nil "1" "2018011215:58:13" "[oss-security] Libc Realpath Buffer Underflow CVE-2018-1000001" (number mark "U       jwilk@jwilk. Jan 12   18/660   " thread-indent "\"Re: [oss-security] Libc Realpath Buffer Underflow CVE-2018-1000001\"\n") "<1087-1515706484.393621@m4-w.D8Te.szjC>" ("<1087-1515706484.393621@m4-w.D8Te.szjC>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28269 invoked by uid 550); 12 Jan 2018 15:58:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28250 invoked from network); 12 Jan 2018 15:58:27 -0000
Date: Fri, 12 Jan 2018 16:58:13 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20180112155812.l3ye6n4ymengrcbc@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <1087-1515706484.393621@m4-w.D8Te.szjC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <1087-1515706484.393621@m4-w.D8Te.szjC>
User-Agent: NeoMutt/20171215
X-Ovh-Tracer-Id: 15787087020966139814
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedtuddrledvgdejlecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
Subject: Re: [oss-security] Libc Realpath Buffer Underflow CVE-2018-1000001

* halfdog <me@halfdog.net>, 2018-01-11, 21:34:
>One of the weaknesses of Linux kernel is, that it is not fully POSIX 
>compliant

To clarify, POSIX deliberately doesn't have concepts of "kernel" or 
"system call"[*]. If you're debating POSIX compliance, you should take 
the whole system (kernel, libc, compiler, shell and what not...) into 
account.

That said, it's true that the current behavior of the getcwd() syscall, 
apart from being incredibly stupid, makes building a POSIX-compliant OS 
on top of the Linux kernel harder than it could be.


[*] http://pubs.opengroup.org/onlinepubs/9699919799/xrat/V4_xbd_chap03.html#tag_21_03_00_77

-- 
Jakub Wilk
