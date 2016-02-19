X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1536" "Friday" "19" "February" "2016" "15:11:03" "-0500" "Rich Felker" "dalias@libc.org" "<20160219201103.GI9349@brightrain.aerifal.cx>" "33" "Re: [oss-security] Address Sanitizer local root" "^Date:" nil nil "2" "2016021920:11:03" "[oss-security] Address Sanitizer local root" (number mark "        dalias@libc. Feb 19   33/1536  " thread-indent "\"Re: [oss-security] Address Sanitizer local root\"\n") "<1455764639.23773.4.camel@gmail.com>" ("<20160217221921.GB24130@port70.net>" "<CAGQ9bdw_kcv84s+mzevpBnNfhTN9idGRf_JJM7Tw8jk5Jsji_Q@mail.gmail.com>" "<1455764639.23773.4.camel@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16062 invoked by uid 550); 19 Feb 2016 20:11:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16037 invoked from network); 19 Feb 2016 20:11:16 -0000
Message-ID: <20160219201103.GI9349@brightrain.aerifal.cx>
References: <20160217221921.GB24130@port70.net>
 <CAGQ9bdw_kcv84s+mzevpBnNfhTN9idGRf_JJM7Tw8jk5Jsji_Q@mail.gmail.com>
 <1455764639.23773.4.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1455764639.23773.4.camel@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Fri, 19 Feb 2016 15:11:03 -0500
From: Rich Felker <dalias@libc.org>
Reply-To: oss-security@lists.openwall.com
Sender: Rich Felker <dalias@aerifal.cx>
Subject: Re: [oss-security] Address Sanitizer local root
To: oss-security@lists.openwall.com

On Wed, Feb 17, 2016 at 10:03:59PM -0500, Daniel Micay wrote:
> On Wed, 2016-02-17 at 17:24 -0800, Konstantin Serebryany wrote:
> > Sadly MPX is too slow, too memory-hungry, and does not protect from
> > use-after-free at all.
> 
> MPX is definitely problematic (performance, memory usage, false
> positives with some atomic data structures, false positives without
> using it everywhere - essentially a new ABI) but I don't think the lack
> of coverage for lifetime issues is a major issue.
> 
> The malloc implementation can do a good job at mitigating lifetime
> issues though. It can't detect 100% of UAF issues, but it can force
> usage of pointers to fault (via proper junk filling) and detect write
> after free via a comparable quarantine technique + validating that the
> junk data is unaltered when allocations leave the quarantine. It can be
> just as good at detecting double-free.
> 
> See the follow-up email:
> 
> http://www.openwall.com/lists/oss-security/2016/02/18/3
> 
> It's extremely painful to actually debug the aborts and faults produced
> from this kind of hardening, so it doesn't really displace ASan at all
> even for the bits where it can be as reliable, and it doesn't cover the
> read-after-free case in the same way.

As long as the aborts/faults happen at the earliest point where the
wrong program behavior can be detected, I see no way they are "more
painful to debug" than having ASan or similar introspectively print
crash info. Attaching a debugger should get you equally useful
information.

Rich
