X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1360" "Saturday" "24" "June" "2017" "16:14:42" "+0200" "Solar Designer" "solar@openwall.com" "<20170624141442.GA29443@openwall.com>" "23" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Date:" nil nil "6" "2017062414:14:42" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        solar@openwa Jun 24   23/1360  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<bc61fe61-7d1a-2263-252e-9b0196dfd7c2@redhat.com>" ("<20170619152843.GC7769@localhost.localdomain>" "<14558692.afnJ5aRU9J@wanheda>" "<20170621122526.GA32701@grsecurity.net>" "<20170621135727.GA12852@openwall.com>" "<20170621212742.GA28766@grsecurity.net>" "<90f1cd71-5c5d-83ae-23ce-9f12a9074bd3@redhat.com>" "<bc61fe61-7d1a-2263-252e-9b0196dfd7c2@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16312 invoked by uid 550); 24 Jun 2017 14:15:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16126 invoked from network); 24 Jun 2017 14:14:45 -0000
Message-ID: <20170624141442.GA29443@openwall.com>
References: <20170619152843.GC7769@localhost.localdomain> <14558692.afnJ5aRU9J@wanheda> <20170621122526.GA32701@grsecurity.net> <20170621135727.GA12852@openwall.com> <20170621212742.GA28766@grsecurity.net> <90f1cd71-5c5d-83ae-23ce-9f12a9074bd3@redhat.com> <bc61fe61-7d1a-2263-252e-9b0196dfd7c2@redhat.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bc61fe61-7d1a-2263-252e-9b0196dfd7c2@redhat.com>
User-Agent: Mutt/1.4.2.3i
Date: Sat, 24 Jun 2017 16:14:42 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com

On Fri, Jun 23, 2017 at 08:02:36AM -0600, Kurt Seifried wrote:
> OpenBSD made changes to the then known qsort() issue, and implemented
> what was then thought to be the solution to the stack guard issue, the 1
> megabyte guard pages. Subsequent discussion (without OpenBSD present,
> due to them breaking the embargo) took place and as you know we ended up
> with some pretty significant changes to glibc (I don't know if OpenBSD
> has picked this group of fixes up or not).

I think Kurt's words "without OpenBSD present, due to them breaking the
embargo" are Kurt's (and maybe others') impression only (and maybe these
people's personal decision(s) not to inform OpenBSD going forward, as
Kurt mentioned he did help ping OpenBSD this time when Qualys wasn't
getting a response from them in early May).  No decision on the distros
list at large was made to either inform or not inform OpenBSD of further
issues.  As it happened, we did CC the discussion around Cron to Todd
(although like I said in my posting about Cron in here, there was no
point in having that minor issue embargoed in the first place).  The
glibc issues and fixes are most likely irrelevant to *BSD libc's - in
fact, we should have been more careful not to spam the full distros list
with them (I think some sub-threads correctly went to linux-distros
only, but some did not).

Alexander
