X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["372" "Wednesday" "13" "June" "2018" "10:40:43" "+0300" "Georgi Guninski" "guninski@guninski.com" "<20180613074043.GA1166@sivokote.iziade.m$>" "10" "Re: [oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?" "^Date:" nil nil "6" "2018061307:40:43" "[oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?" (number mark "        guninski@gun Jun 13   10/372   " thread-indent "\"Re: [oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?\"\n") "<20180612113836.6flipg4zlq4fw4ue@jwilk.net>" ("<20180612095613.GC1073@sivokote.iziade.m$>" "<20180612113836.6flipg4zlq4fw4ue@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21704 invoked by uid 550); 13 Jun 2018 08:29:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24309 invoked from network); 13 Jun 2018 07:41:20 -0000
Message-ID: <20180613074043.GA1166@sivokote.iziade.m$>
References: <20180612095613.GC1073@sivokote.iziade.m$>
 <20180612113836.6flipg4zlq4fw4ue@jwilk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180612113836.6flipg4zlq4fw4ue@jwilk.net>
header: best read with a sniffer
Date: Wed, 13 Jun 2018 10:40:43 +0300
From: Georgi Guninski <guninski@guninski.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Are `su user' and/or `sudo -u user sh' considered
 dangerous?
To: oss-security@lists.openwall.com

On Tue, Jun 12, 2018 at 01:38:36PM +0200, Jakub Wilk wrote:
> https://bugzilla.redhat.com/show_bug.cgi?id=173008 (CVE-2005-4890)
> 
> It was last discussed on oss-security in 2017:
> http://seclists.org/oss-sec/2017/q2/412
>
Thanks. The readhat link is fixed in su in 2005.
Is there POC for relatively new distros?
I couldn't make TIOCSTI work at all in debian 8 and 9.
 
