X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1101" "Sunday" "17" "January" "2021" "19:31:05" "-0000" "Tavis Ormandy" "taviso@gmail.com" "<ru239p$147u$1@ciao.gmane.io>" "31" "[oss-security] mutt recipient parsing memory leak" nil nil nil "1" "2021011719:31:05" "[oss-security] mutt recipient parsing memory leak" (number mark "U       taviso@gmail Jan 17   31/1101  " thread-indent "\"[oss-security] mutt recipient parsing memory leak\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] mutt recipient parsing memory leak" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18124 invoked by uid 550); 17 Jan 2021 19:40:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16374 invoked from network); 17 Jan 2021 19:35:14 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Tavis Ormandy <taviso@gmail.com>
Date: Sun, 17 Jan 2021 19:31:05 -0000 (UTC)
Message-ID: <ru239p$147u$1@ciao.gmane.io>
User-Agent: slrn/pre1.0.4-4 (Linux)
Subject: [oss-security] mutt recipient parsing memory leak

Hello, I noticed mutt was leaking memory whenever I opened a particular
mailbox. I tracked down the problem: Using rfc822 groups without the madatory
labels wasn't being parsed properly.

https://tools.ietf.org/html/rfc822#section-6.2.6

(A spammer had just put some junk in there, they weren't deliberately using
exotic addressing schemes.. haha).

It turns out that you can send a small message that leaks a *lot* of memory. A
small message can leak GBs of memory, effectively preventing you from opening
your mailbox. You would need to use a different mail client to clean up the
malformed message before you can use mutt again.

I sent this upstream as a DoS, but they don't want to treat it as a security
isssue. I though I'd just send a FYI here instead in case anyone wants to
backport the patch.

Here's the bug with a repro: https://gitlab.com/muttmua/mutt/-/issues/323

Here's the patch:

https://gitlab.com/muttmua/mutt/-/commit/c059e20ea4c7cb3ee9ffd3500ffe313ae84b2545

Tavis.

-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@sdf.org
_\_V _( ) _( )  @taviso

