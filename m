Received: (qmail 3944 invoked by uid 550); 26 Sep 2024 23:50:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1653 invoked from network); 26 Sep 2024 23:49:57 -0000
Date: Fri, 27 Sep 2024 01:49:52 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Simone Margaritelli <evilsocket@gmail.com>,
	Zdenek Dohnal <zdohnal@redhat.com>
Message-ID: <20240926234952.GA12532@openwall.com>
References: <20240926221125.GA10895@openwall.com> <5bf73ba2-d643-40a0-9397-65a2e56dd436@oracle.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5bf73ba2-d643-40a0-9397-65a2e56dd436@oracle.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CUPS printing system vulnerabilities

On Thu, Sep 26, 2024 at 03:43:23PM -0700, Alan Coopersmith wrote:
> On 9/26/24 15:11, Solar Designer wrote:
> >A lot of drama around the disclosure of those issues was going on for
> >maybe a month now, with public tweets about the disclosure process and
> >the issues affecting many distros but excluding detail on the issues
> >(not even CUPS was specifically mentioned until very recently).  Per
> >those tweets, the issues were communicated to some distro vendors via
> >CERT/CC VINCE and a vendor planned to bring them to the distros list on
> >September 30 with public disclosure on October 6.  Unfortunately, the
> >information leaked prematurely and thus Simone decided on full public
> >disclosure today at 20:00 UTC pre-announcing it only 2 hours in advance.
> 
> Once it was learned that the information was leaked, the vendors suggested
> ending the embargo today, and both evilsocket & OpenPrinting agreed to it,
> with the coordinated end at 20:00 UTC.

Thanks Alan!  On Twitter, Alan further clarified that "once it was clear
the info was out there, the distro makers wanted to end the embargo so
they could publish advisories telling users to disable cups-browsed
instead of waiting for patches to be available - those with VINCE access
had hours of prior notice, not just two."

I apologize to Simone for the unnecessary and wrong guess on whose
decision it was.  I didn't have that information and shouldn't have
included a guess.

> OpenPrinting has started publishing fixes as well now:
> 
> CVE-2024-47175: https://github.com/OpenPrinting/libppd/commit/d681747ebf
> CVE-2024-47076: 
> https://github.com/OpenPrinting/libcupsfilters/commit/95576ec3
> 
> and a temporary workaround for CVE-2024-47176 in:
> https://github.com/OpenPrinting/cups-browsed/commit/1debe6b140c

Thanks.  I guess also this from a few days ago? -

https://github.com/OpenPrinting/cups/commit/8361420cbbfa2e729545c4c537c49fc6322c9631

"Escape localized strings in PPDs", which is similar to the last hunk in
"Prevent PPD generation based on invalid IPP response" CVE-2024-47175
libppd commit referenced by Alan above.

Possibly unrelated to today's disclosure but also security-relevant is:

https://github.com/OpenPrinting/cups/commit/e3467edf3be2d20a022495d9726a741e36768caf

"Update httpConnectURI to do X.509 pinning, and use it when doing the IPP"

Zdenek, I hope you will soon clarify which commits fix what issues, to
assist with distro backports.  I understand you're still busy getting
these in now and it's probably night time for you, so follow up when you
have a moment later, please.

Thanks,

Alexander
