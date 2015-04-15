X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["784" "Wednesday" "15" "April" "2015" "09:55:49" "+0200" "Moritz Muehlenhoff" "jmm@debian.org" "<20150415075549.GA10766@pisco.westfalen.local>" "22" "Re: [oss-security] jar(1) -- directory traversal" nil nil nil "4" "2015041507:55:49" "[oss-security] jar(1) -- directory traversal" (number mark "        jmm@debian.o Apr 15   22/784   " thread-indent "\"Re: [oss-security] jar(1) -- directory traversal\"\n") "<54B87F9B.2090902@openwall.com>" ("<54B87F9B.2090902@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9460 invoked by uid 550); 15 Apr 2015 07:56:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9440 invoked from network); 15 Apr 2015 07:56:05 -0000
Message-ID: <20150415075549.GA10766@pisco.westfalen.local>
References: <54B87F9B.2090902@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <54B87F9B.2090902@openwall.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-SA-Exim-Connect-IP: 95.33.46.211
X-SA-Exim-Mail-From: jmm@inutil.org
X-SA-Exim-Scanned: No (on inutil.org); SAEximRunCond expanded to false
Cc: cherepan@mccme.ru
Date: Wed, 15 Apr 2015 09:55:49 +0200
From: Moritz Muehlenhoff <jmm@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] jar(1) -- directory traversal
To: oss-security@lists.openwall.com

On Fri, Jan 16, 2015 at 06:03:55AM +0300, Alexander Cherepanov wrote:
> Hi!
> 
> jar(1) in Debian jessie (openjdk-7-jdk 7u71-2.5.3-2) is susceptible to a
> directory traversal vulnerability via absolute and relative paths. Other
> distros could also be interested in this issue.
> 
> Initial report:
> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=774953
> 
> Not sure if this is just CVE-2005-1080 not fixed or something else. But
> please note that CVE-2005-1080 talks about .. only.
> 
> Debian security team forwarded the report to Oracle Security Team at
> 2015-01-12 11:01 +0100. Thanks!

This appears to have been fixed in the recent Java CPU and was assigned
CVE-2015-0480:
http://www.oracle.com/technetwork/topics/security/cpuapr2015-2365600.html

Cheers,
        Moritz
