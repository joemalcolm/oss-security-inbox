X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["562" "Tuesday" "12" "June" "2018" "13:17:43" "+0300" "Georgi Guninski" "guninski@guninski.com" "<20180612095613.GC1073@sivokote.iziade.m$>" "19" "[oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?" "^Date:" nil nil "6" "2018061210:17:43" "[oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?" (number mark "        guninski@gun Jun 12   19/562   " thread-indent "\"[oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26124 invoked by uid 550); 12 Jun 2018 10:49:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30154 invoked from network); 12 Jun 2018 10:18:19 -0000
Message-ID: <20180612095613.GC1073@sivokote.iziade.m$>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
header: best read with a sniffer
Date: Tue, 12 Jun 2018 13:17:43 +0300
From: Georgi Guninski <guninski@guninski.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?
To: oss-security@lists.openwall.com

 From
https://j.ludost.net/blog/archives/2018/06/12/are_su_user_andor_sudo_-u_user_sh_considered_dangerous/index.html

Per vague memory I discussed half of this with some linux crowd and
they said "won't fix" long ago.

`su user' and `sudo -u user sh' give the user the fd of root's tty
and it is readable and writable. After closing the session, the
user can keep it and on root's tty potentially do:

1. inject keypresses via ioctl()
and/or
2. read the output of root's tty, probably with some analogue of
tee(1).

Is this really a concern?

Any workarounds?

