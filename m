X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1034" "Saturday" "24" "June" "2017" "16:57:14" "+0200" "Solar Designer" "solar@openwall.com" "<20170624145714.GA30830@openwall.com>" "19" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Date:" nil nil "6" "2017062414:57:14" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        solar@openwa Jun 24   19/1034  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<20170622002605.e4sfvdxi2hugl6o7@dojo.mi.org>" ("<20170619152843.GC7769@localhost.localdomain>" "<14558692.afnJ5aRU9J@wanheda>" "<20170621122526.GA32701@grsecurity.net>" "<20170621135727.GA12852@openwall.com>" "<20170621212742.GA28766@grsecurity.net>" "<20170622002605.e4sfvdxi2hugl6o7@dojo.mi.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3501 invoked by uid 550); 24 Jun 2017 14:57:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3279 invoked from network); 24 Jun 2017 14:57:17 -0000
Message-ID: <20170624145714.GA30830@openwall.com>
References: <20170619152843.GC7769@localhost.localdomain> <14558692.afnJ5aRU9J@wanheda> <20170621122526.GA32701@grsecurity.net> <20170621135727.GA12852@openwall.com> <20170621212742.GA28766@grsecurity.net> <20170622002605.e4sfvdxi2hugl6o7@dojo.mi.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170622002605.e4sfvdxi2hugl6o7@dojo.mi.org>
User-Agent: Mutt/1.4.2.3i
Date: Sat, 24 Jun 2017 16:57:14 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com

On Wed, Jun 21, 2017 at 08:26:05PM -0400, Mike O'Connor wrote:
> In the past, I've proposed that the embargo mailing list archives
> themselves have an "embargo", after which they become public.  That
> way, there's after-the-fact transparency, and it gives the folks who
> care a good idea of what happened.  Is there anything sensitive at
> this point in, say, the March 2017 linux-distros archives??

There shouldn't be anything sensitive in old archives, such as in your
example.  Technically, we can easily extract and make public the message
Subjects.  For full messages, we need a way to mass-decrypt an mbox
containing PGP/MIME messages.  Maybe I should list implementing a
program that would do that(*) as one of the options that a new distros
list member could choose as their contribution back to the community.

(*) Mutt hack maybe?  Mutt processes those messages great, so having it
output them in decrypted form into another mbox and automatically loop
over all messages in the input mbox might do the trick.

Alexander
