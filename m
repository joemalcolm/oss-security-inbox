X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1348" "Wednesday" "5" "July" "2017" "16:00:31" "+0200" "Solar Designer" "solar@openwall.com" "<20170705140031.GA31519@openwall.com>" "27" "[oss-security] LKML thread \"mm: larger stack guard gap, between vmas\" partially CC'ed to linux-distros" "^Date:" nil nil "7" "2017070514:00:31" "[oss-security] LKML thread \"mm: larger stack guard gap, between vmas\" partially CC'ed to linux-distros" (number mark "        solar@openwa Jul  5   27/1348  " thread-indent "\"[oss-security] LKML thread \"mm: larger stack guard gap, between vmas\" partially CC'ed to linux-distros\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16277 invoked by uid 550); 5 Jul 2017 14:01:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15871 invoked from network); 5 Jul 2017 14:00:40 -0000
Message-ID: <20170705140031.GA31519@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Date: Wed, 5 Jul 2017 16:00:31 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] LKML thread "mm: larger stack guard gap, between vmas" partially CC'ed to linux-distros
To: oss-security@lists.openwall.com

Hi,

In the Stack Clash disclosure aftermath, there's a thread "[PATCH] mm:
larger stack guard gap, between vmas" still going on LKML, which is
attempted to be CC'ed to linux-distros (as linux-distros was among the
recipients on similar threads with security@k.o involved prior to the
public disclosure).  Some of these messages get through (those that
include [vs-plain] in the Subject), the rest don't.  (It might as well
be several threads now.)

This makes little sense to me, and it also creates the situation that if
any new security issues are disclosed in that thread (which might or
might not be the case with LibreOffice and Java trying and failing to
install their own stack guard pages after the kernel has been patched,
if I read this right) then per linux-distros list policy we'd need to
bring them specifically to oss-security (but it's tough to do when the
thread doesn't make the issue reports explicit - rather, people are just
discussing things).

On one hand, this is our continuing reminder of just how very wrong we
were with the embargo.  (Of course, some of us will continue to disagree
with this assessment.)  On the other hand, perhaps we should forcibly
kill those CC's now - ask people to stop, or just filter on the server.
I am going to start by asking.  Once again, that content is public on
LKML anyway.

Alexander
