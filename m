X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1039" "Monday" "27" "April" "2020" "13:07:00" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<2033222.irdbgypaU6@spectre>" "29" "[oss-security] re2c: infinite loop" nil nil nil "4" "2020042711:07:00" "[oss-security] re2c: infinite loop" (number mark "U       ago@gentoo.o Apr 27   29/1039  " thread-indent "\"[oss-security] re2c: infinite loop\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] re2c: infinite loop" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1208 invoked by uid 550); 27 Apr 2020 11:07:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1174 invoked from network); 27 Apr 2020 11:07:21 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Mon, 27 Apr 2020 13:07:00 +0200
Message-ID: <2033222.irdbgypaU6@spectre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [oss-security] re2c: infinite loop

Hello all,

re2c is affected by an infinite loop.

It was initially discovered by Sergei Trofimovich (slyfox) and reported by me 
privately to upstream.
The upstream reference is at: https://github.com/skvadrik/re2c/issues/219
There is no CVE assigned.

Here is the additional upstream comment:

I fixed enough recursive functions to make the ASAN-instrumented re2c
pass on this file (but that doesn't fully fix #219, as some other
recursive functions still need rewriting, work in progress).
This is the list of fixes:
fd634998f813340768c333cdad638498602856e5 Rewrite recursion into iteration 
(Tarjan's SCC algorithm and YYFILL states).
637d4e468835690eac102aba83535dfd26afbbdb Rewrite recursion into iteration 
(paths for -Wundefined-control-flow).
e3e43bcbb746dd6692f2d60ed1fa2e26c8cbe987 Rewrite recursion into iteration 
(skeleton max path length computation).
f39b522cd40d04e80b77db926ce2d7d766954852 Rewrite recursion into iteration 
(insertion of negative tags in RE).
They will appear in the next release, re2c-2.0.


Agostino


