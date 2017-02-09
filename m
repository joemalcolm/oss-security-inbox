X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["998" "Thursday" "9" "February" "2017" "19:45:30" "+0100" "Jakub Wilk" "jwilk@jwilk.net" "<20170209184530.darj47kpt4sg3mrw@jwilk.net>" "24" "Re: [oss-security] Multiple DoS parsing and executing extended regex expressions in GNU libc" nil nil nil "2" "2017020918:45:30" "[oss-security] Multiple DoS parsing and executing extended regex expressions in GNU libc" (number mark "U       jwilk@jwilk. Feb  9   24/998   " thread-indent "\"Re: [oss-security] Multiple DoS parsing and executing extended regex expressions in GNU libc\"\n") "<CACn5sdQ4SaFqZDxhE5_s6x2L68Gf66Hq0MWjfN4=0T9zb3rSxw@mail.gmail.com>" ("<CACn5sdQ4SaFqZDxhE5_s6x2L68Gf66Hq0MWjfN4=0T9zb3rSxw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19746 invoked by uid 550); 9 Feb 2017 18:45:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19725 invoked from network); 9 Feb 2017 18:45:46 -0000
Date: Thu, 9 Feb 2017 19:45:30 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20170209184530.darj47kpt4sg3mrw@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CACn5sdQ4SaFqZDxhE5_s6x2L68Gf66Hq0MWjfN4=0T9zb3rSxw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <CACn5sdQ4SaFqZDxhE5_s6x2L68Gf66Hq0MWjfN4=0T9zb3rSxw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Ovh-Tracer-Id: 13316581150563096486
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelgedrkeehgdelvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
Subject: Re: [oss-security] Multiple DoS parsing and executing extended regex
 expressions in GNU libc

* Gustavo Grieco <gustavo.grieco@gmail.com>, 2017-02-09, 14:24:
>We found a few extended regex expressions in GNU libc that will crash or abort 
>the execution of regcomp or regexec. For instance:
>
>\a?{1,32767}
>
>will immediately exhaust the stack calling calc_eclosure_iter in the 
>compilation.

FWIW, glibc's policy seems to be that DoS via crafted regexp is not considered 
a security problem: https://sourceware.org/glibc/wiki/Security%20Exceptions

"[...] resource exhaustion issues which can be triggered only with crafted 
patterns (either during compilation or execution) are not treated as security 
bugs. (This does not mean we do not intend to fix such issues as regular bugs 
if possible.)

However, during execution, crashes, infinite loops, buffer overflows and 
reading past buffers (read-only buffer overruns), memory leaks and other, 
similar bugs should be treated as security vulnerabilities, assuming that the 
pattern is trusted and reasonably structured."

-- 
Jakub Wilk
