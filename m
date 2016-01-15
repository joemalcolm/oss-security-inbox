X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1482" "Friday" "15" "January" "2016" "16:58:28" "-0500" "Rich Felker" "dalias@libc.org" "<20160115215828.GI238@brightrain.aerifal.cx>" "33" "Re: [oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" "^Date:" nil nil "1" "2016011521:58:28" "[oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" (number mark "        dalias@libc. Jan 15   33/1482  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778\"\n") "<1452862593.9500.48.camel@opteya.com>" ("<20160114171301.GH28298@localhost.localdomain>" "<5698D299.6020202@redhat.com>" "<1452862593.9500.48.camel@opteya.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3320 invoked by uid 550); 15 Jan 2016 21:58:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3299 invoked from network); 15 Jan 2016 21:58:41 -0000
Message-ID: <20160115215828.GI238@brightrain.aerifal.cx>
References: <20160114171301.GH28298@localhost.localdomain>
 <5698D299.6020202@redhat.com>
 <1452862593.9500.48.camel@opteya.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1452862593.9500.48.camel@opteya.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Fri, 15 Jan 2016 16:58:28 -0500
From: Rich Felker <dalias@libc.org>
Reply-To: oss-security@lists.openwall.com
Sender: Rich Felker <dalias@aerifal.cx>
Subject: Re: [oss-security] Qualys Security Advisory - Roaming through the
 OpenSSH client: CVE-2016-0777 and CVE-2016-0778
To: oss-security@lists.openwall.com

On Fri, Jan 15, 2016 at 01:56:33PM +0100, Yann Droneaud wrote:
> Hi,
> 
> Le vendredi 15 janvier 2016 à 12:06 +0100, Florian Weimer a écrit :
> > On 01/14/2016 06:13 PM, Qualys Security Advisory wrote:
> > > Internal stdio buffering is the most severe of the three problems
> > > discussed in this section, although GNU/Linux is not affected
> > > because the glibc mmap()s and munmap()s (and therefore cleanses)
> > > stdio buffers.
> > 
> > This will change in glibc 2.23, stdio will use regular malloc and
> > free for its buffers.  I did not expect this change to have security
> > implications.  Considering that the actual bug lies elsewhere, and
> > stdio usage is based on copying out of the buffer (so leaks can still
> > happen elsewhere), I do not wish to revert this change.
> > 
> 
> Would setvbuf(stream, NULL, _IONBF, 0); be used to disable buffer
> before reading/writting sensible data to a stream ?

Yes. Or preferably you could provide a custom buffer pointer for the
stdio FILE to use and clear it safely yourself after calling fclose.

> What about a buffering flag (_IOSBF) that would enable "secure" 
> handling of the buffer, that is, on fclose() and fflush(), write
> back and cleanse buffer on output stream, cleanse buffer on input
> stream ?

This sounds undesirable when there is already a portable fix (above).
There are also some issues with compatibility for such a feature
between versions and what symbol versioning might be needed.

Rich
