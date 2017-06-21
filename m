X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1965" "Wednesday" "21" "June" "2017" "15:57:27" "+0200" "Solar Designer" "solar@openwall.com" "<20170621135727.GA12852@openwall.com>" "39" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Date:" nil nil "6" "2017062113:57:27" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        solar@openwa Jun 21   39/1965  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<20170621122526.GA32701@grsecurity.net>" ("<20170619152843.GC7769@localhost.localdomain>" "<14558692.afnJ5aRU9J@wanheda>" "<20170621122526.GA32701@grsecurity.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26385 invoked by uid 550); 21 Jun 2017 13:58:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24317 invoked from network); 21 Jun 2017 13:57:40 -0000
Message-ID: <20170621135727.GA12852@openwall.com>
References: <20170619152843.GC7769@localhost.localdomain> <14558692.afnJ5aRU9J@wanheda> <20170621122526.GA32701@grsecurity.net>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170621122526.GA32701@grsecurity.net>
User-Agent: Mutt/1.4.2.3i
Date: Wed, 21 Jun 2017 15:57:27 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com

On Wed, Jun 21, 2017 at 08:25:26AM -0400, Brad Spengler wrote:
> Finally, one thing I noted was missing from Solar's timeline is that
> on May 18th, the day after the private distros list was notified with
> details, this commit appeared in public:
> https://github.com/openbsd/src/commit/4ed6bfeac112229466414b94cdbd983fb8017796

IIRC, they also committed a relevant fix to their qsort().

> OpenBSD publishing this commit, in combination with Solar making repeated
> mentions here on oss-sec about a cross-OS issue being worked on was enough
> for me to know that the underlying issue being discussed was what we had
> widely discussed publicly in 2010 on LWN and elsewhere.  What's the official
> explanation for this, and is any action being taken for what I assume is a
> member of the private list breaking the embargo?

OpenBSD isn't a member of the distros list - they were notified by
Qualys separately.  This matter was discussed, and some folks were
unhappy about OpenBSD's action, but in the end it was decided that
since, as you correctly say, the underlying issue was already publicly
known, OpenBSD's commits don't change things much.  Sure this draws
renewed attention to the problem, but probably not to the extent and in
the many specific ways the Qualys findings cover.  So it was decided to
keep the embargo on the detail.

Ditto for the "move mmap_area and PIE binaries away from the stack"
patch series posted to LKML and CC'ed to kernel-hardening on June 2:

http://www.openwall.com/lists/kernel-hardening/2017/06/02/

which might have been inspired by Qualys work known to Red Hat engineers
internally.  A difference is that Red Hat is a member of the distros
list.  I brought this up on the distros list, and another Red Hat person
said "We'll deal with this internally."  Given the circumstances, I find
this response satisfactory.

I am far more concerned about the total embargo duration here than about
these two semi-leaks.

Alexander
