X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["903" "Saturday" "15" "August" "2015" "13:52:45" "+0200" "=?UTF-8?B?TW9yaXR6IE3DvGhsZW5ob2Zm?=" "jmm@inutil.org" "<20150815115245.GB6223@pisco.westfalen.local>" "27" "Re: [oss-security] CVE request: 2 issues in inspircd" nil nil nil "8" "2015081511:52:45" "[oss-security] CVE request: 2 issues in inspircd" (number mark "        jmm@inutil.o Aug 15   27/903   " thread-indent "\"Re: [oss-security] CVE request: 2 issues in inspircd\"\n") "<20150415172201.GA8061@eldamar.local>" ("<20150329122044.GX1846@frisco.mine.nu>" "<20150415172201.GA8061@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30673 invoked by uid 550); 15 Aug 2015 19:55:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30651 invoked from network); 15 Aug 2015 19:55:39 -0000
Message-ID: <20150815115245.GB6223@pisco.westfalen.local>
References: <20150329122044.GX1846@frisco.mine.nu>
 <20150415172201.GA8061@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20150415172201.GA8061@eldamar.local>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-SA-Exim-Connect-IP: 141.70.75.12
X-SA-Exim-Mail-From: jmm@inutil.org
X-SA-Exim-Scanned: No (on inutil.org); SAEximRunCond expanded to false
Cc: cve-assign@mitre.org
Date: Sat, 15 Aug 2015 13:52:45 +0200
From: =?UTF-8?Q?Moritz_M=C3=BChlenhoff?= <jmm@inutil.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: 2 issues in inspircd
To: oss-security@lists.openwall.com

On Wed, Apr 15, 2015 at 07:22:01PM +0200, Salvatore Bonaccorso wrote:
> Hi,
> 
> On Sun, Mar 29, 2015 at 02:20:44PM +0200, Sébastien Delafond wrote:
> > Hi,
> > 
> > the Debian Security Team is requesting 2 CVEs for inspircd.
> > 
> >   * the fix that was included in Debian for CVE-2012-1836 is incomplete,
> >     and does not solve the original remote code execution problem. See:
> > 
> >       https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=780880#5
> > 
> >   * a DoS can be triggered by invalid DNS packets. See:
> > 
> >       https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=780880#5
> >       https://github.com/inspircd/inspircd/commit/58c893e834ff20495d007709220881a3ff13f423
> 
> For reference, this has been fixed via DSA-3226-1 in Debian:
> https://lists.debian.org/debian-security-announce/2015/msg00114.html

*ping*

These never ended up in CVE assignments.

Cheers,
        Moritz
