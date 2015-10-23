X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["555" "Friday" "23" "October" "2015" "13:44:58" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" "<20151023134457.GA4731@yuggoth.org>" "15" "Re: [oss-security] CVE Request: BusyBox tar directory traversal" nil nil nil "10" "2015102313:44:58" "[oss-security] CVE Request: BusyBox tar directory traversal" (number mark "        fungi@yuggot Oct 23   15/555   " thread-indent "\"Re: [oss-security] CVE Request: BusyBox tar directory traversal\"\n") "<1445603081.14394.5.camel@debian.org>" ("<1445603081.14394.5.camel@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7659 invoked by uid 550); 23 Oct 2015 13:45:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7639 invoked from network); 23 Oct 2015 13:45:11 -0000
Message-ID: <20151023134457.GA4731@yuggoth.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1445603081.14394.5.camel@debian.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Date: Fri, 23 Oct 2015 13:44:58 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: BusyBox tar directory traversal
To: oss-security@lists.openwall.com

On 2015-10-23 14:24:41 +0200 (+0200), Yves-Alexis Perez <corsac@debian.org> wrote:
> On ven., 2015-10-23 at 03:01 -0400, Robert Watson wrote:
> > Remember that tar was created primarily for software distribution
>
> Actually no, it was created to write archives to (magnetic) tapes.
[...]

Stop, you're both right!

The first tar shipped in V7 UNIX as an improved replacement for the
tp utility. Take a guess what archive format AT&T used on the PDP-11
install tapes for V7 (ignoring the self-executing stub they
prepended, of course).
-- 
Jeremy Stanley
