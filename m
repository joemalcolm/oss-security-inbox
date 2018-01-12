X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1807" "Friday" "12" "January" "2018" "14:58:10" "+0000" "halfdog" "me@halfdog.net" "<709-1515769090.506949@wqD9.dJCP.oT_Z>" "46" "[oss-security] On reading, thinking, copying" "^Date:" nil nil "1" "2018011214:58:10" "[oss-security] On reading, thinking, copying" (number mark "        me@halfdog.n Jan 12   46/1807  " thread-indent "\"[oss-security] On reading, thinking, copying\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28422 invoked by uid 550); 12 Jan 2018 14:58:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28384 invoked from network); 12 Jan 2018 14:58:43 -0000
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Message-ID: <709-1515769090.506949@wqD9.dJCP.oT_Z>
Date: Fri, 12 Jan 2018 14:58:10 +0000
From: halfdog <me@halfdog.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] On reading, thinking, copying
To: oss-security@lists.openwall.com

Hello list,

After getting home from work (and after fixing my emulated server
that could not handle the SSL handshakes any more), I was quite
amused reading the references around yesterday's CVE-2018-1000001.

Derived from that, here some hints to improve quality in security
information handling:


1) The first link in an article usually is not the most important
one. This is due to probability theory and correlates with the
number of citations in the article. It even is less likely to
be relevant, when the article starts citing the historic context
- unless you are a software archeologist.

2) If the resource behind the first reference has some well-known
name in the first few lines, you should not conclude, that this
prooves the argument, you want to have prooven. You should still
read, what this source says and put it in the context of the current
argument. Otherwise you might end up at crap-press quality level:
cite Harvard in the first line (no one will check the reference
anyway) and the claim whatever you want.

3) There are quite some differences between an errant lxstat call
and a buffer overflow. SOC members should know that. While the
first by itself is just a bug and has zero security relevance
when triggered in a fully user-controlled directory structure
(proove me wrong), still the later might have quite severe security
implications.

4) Just because someone else copied crap without thinking, you
should not do the same.


Here is a suboptimal Google dork to get an approximate ranking
of the most popular copy-without-thinking sites related to this
issue (and subtract automated feed forwarding and correct context
citations by hand).

https://www.google.com/search?q=3D%22CVE-2018-1000001%22+%22sourceware.org/=
bugzilla/show_bug.cgi%3Fid%3D18203%22&filter=3D0

hd


