X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1112" "Monday" "6" "July" "2015" "22:04:04" "+0100" "Simon McVittie" "smcv@debian.org" "<559AED44.2050307@debian.org>" "27" "Re: [oss-security] TR : CVE request for dash 0.5.7-3  x86-64 local buffer overflow" nil nil nil "7" "2015070621:04:04" "[oss-security] TR : CVE request for dash 0.5.7-3 x86-64 local buffer overflow" (number mark "        smcv@debian. Jul  6   27/1112  " thread-indent "\"Re: [oss-security] TR : CVE request for dash 0.5.7-3  x86-64 local buffer overflow\"\n") "<F19FF46A5F9A584F817BC291F2EE2EBB519D23@server.exchange.local>" ("<F19FF46A5F9A584F817BC291F2EE2EBB5199AD@server.exchange.local>" "<F19FF46A5F9A584F817BC291F2EE2EBB519D23@server.exchange.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19926 invoked by uid 550); 6 Jul 2015 21:04:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19900 invoked from network); 6 Jul 2015 21:04:16 -0000
Message-ID: <559AED44.2050307@debian.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
References: <F19FF46A5F9A584F817BC291F2EE2EBB5199AD@server.exchange.local> <F19FF46A5F9A584F817BC291F2EE2EBB519D23@server.exchange.local>
In-Reply-To: <F19FF46A5F9A584F817BC291F2EE2EBB519D23@server.exchange.local>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
Date: Mon, 06 Jul 2015 22:04:04 +0100
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] TR : CVE request for dash 0.5.7-3  x86-64 local
 buffer overflow
To: oss-security@lists.openwall.com

On 06/07/15 13:58, jean-marie.bourbon@armaturetech.com wrote:
> I discover it using bash who sent me a SIGKILL (no real crash) and
> closed my shell in certain circumstances:
> 
> kmkz@kmkz:/tmp$  `perl -e '$i=0;while($i<= 500){print"DEAD"x10;}'`
> bash: xrealloc : ../bash/subst.c:5184 : impossible d'allouer 2097152
> octets (4460544 octets alloués)
> 
> So I wanted to try using my /bin/dash and... I had a local crash !

You told dash to interpret a command 2 gigabytes long, and it failed to
do so; additionally, the failure was a crash, not a deterministic
semi-graceful exit. That sounds like a bug.

However, to be a security vulnerability rather than "just a bug", a
buffer overflow is not enough; to be a security vulnerability, it would
have to be an *attacker-triggerable* buffer overflow.

Is there any circumstance under which an attacker - not you - can cause
this to happen, other than via an arbitrary-code-execution vulnerability
in some other component?

(If you are already vulnerable to attacker-controlled arbitrary code
execution, then dash crashing is the least of your worries.)

    S

