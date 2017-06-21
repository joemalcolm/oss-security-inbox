X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["954" "Wednesday" "21" "June" "2017" "23:29:56" "+0200" "PaX Team" "pageexec@freemail.hu" "<594AE554.22038.7198001A@pageexec.freemail.hu>" "19" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Date:" nil nil "6" "2017062121:29:56" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        pageexec@fre Jun 21   19/954   " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<cbf49fff-2cd8-cb8c-59b8-07c2b7c37b0f@redhat.com>" ("<20170619152843.GC7769@localhost.localdomain>" "<14558692.afnJ5aRU9J@wanheda>" "<cbf49fff-2cd8-cb8c-59b8-07c2b7c37b0f@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23888 invoked by uid 550); 21 Jun 2017 22:01:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24179 invoked from network); 21 Jun 2017 21:30:33 -0000
MIME-Version: 1.0
Message-ID: <594AE554.22038.7198001A@pageexec.freemail.hu>
Priority: normal
In-reply-to: <cbf49fff-2cd8-cb8c-59b8-07c2b7c37b0f@redhat.com>
References: <20170619152843.GC7769@localhost.localdomain>, <14558692.afnJ5aRU9J@wanheda>, <cbf49fff-2cd8-cb8c-59b8-07c2b7c37b0f@redhat.com>
X-mailer: Pegasus Mail for Windows (4.72.572)
Content-type: text/plain; charset=US-ASCII
Content-transfer-encoding: 7BIT
Content-description: Mail message body
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-2.1.12 (r00tworld.com [212.85.137.150]); Wed, 21 Jun 2017 23:29:58 +0200 (CEST)
X-Virus-Scanned: r00tworld Anti-Virus System
Date: Wed, 21 Jun 2017 23:29:56 +0200
From: "PaX Team" <pageexec@freemail.hu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com, Agostino Sarubbo <ago@gentoo.org>

On 21 Jun 2017 at 10:22, Jeff Law wrote:

> On 06/21/2017 04:46 AM, Agostino Sarubbo wrote:
> > On Monday 19 June 2017 08:28:43 Qualys Security Advisory wrote:
> >> III. Solutions
> >> - Recompile all userland code (ld.so, libraries, binaries) with GCC's
> >>   "-fstack-check" option, which prevents the stack-pointer from moving
> >>   into another memory region without accessing the stack guard-page (it
> >>   writes one word to every 4KB page allocated on the stack).
> > 
> > For the record, Gentoo Hardened enables by default -fstack-check=specific
> And if you were to look at the generated code, you'll see that it
> happily skips 2-3 pages of probes in prologues as well as within alloca
> spaces.  It's a false sense of security.

Gentoo Hardened uses the grsecurity kernel which enforces a 64kB heap-stack
gap by default (it's also user adjustable). are you saying that the gcc
probes are not sufficient to prevent jumping over that range?

