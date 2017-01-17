X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["911" "Tuesday" "17" "January" "2017" "12:11:07" "+0100" "Moritz Muehlenhoff" "jmm@debian.org" "<20170117111107.GA5591@inutil.org>" "31" "Re: [oss-security] Re: jasper: invalid memory write in dec_clnpass (jpc_t1dec.c)" nil nil nil "1" "2017011711:11:07" "[oss-security] Re: jasper: invalid memory write in dec_clnpass (jpc_t1dec.c)" (number mark "U       jmm@debian.o Jan 17   31/911   " thread-indent "\"Re: [oss-security] Re: jasper: invalid memory write in dec_clnpass (jpc_t1dec.c)\"\n") "<2971422.7a4hKthq7I@blackgate>" ("<6a99e3df9a9449dcb2ea3a4358c469b0@imshyb01.MITRE.ORG>" "<2971422.7a4hKthq7I@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20135 invoked by uid 550); 17 Jan 2017 11:11:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20113 invoked from network); 17 Jan 2017 11:11:19 -0000
Date: Tue, 17 Jan 2017 12:11:07 +0100
From: Moritz Muehlenhoff <jmm@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20170117111107.GA5591@inutil.org>
References: <6a99e3df9a9449dcb2ea3a4358c469b0@imshyb01.MITRE.ORG>
 <2971422.7a4hKthq7I@blackgate>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2971422.7a4hKthq7I@blackgate>
User-Agent: Mutt/1.5.20 (2009-06-14)
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: jmm@inutil.org
X-SA-Exim-Scanned: No (on inutil.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] Re: jasper: invalid memory write in dec_clnpass
 (jpc_t1dec.c)

On Tue, Jan 17, 2017 at 11:33:28AM +0100, Agostino Sarubbo wrote:
> On Monday 16 January 2017 19:08:48 cve-assign@mitre.org wrote:
> > > []
> > > https://blogs.gentoo.org/ago/2017/01/16/jasper-invalid-memory-write-in-de
> > > c_clnpass-jpc_t1dec-c
> > > 
> > > AddressSanitizer: SEGV on unknown address
> > > The signal is caused by a WRITE memory access.
> > > 
> > > dec_clnpass ... jasper-1.900.27/src/libjasper/jpc/jpc_t1dec.c:869:4
> > 
> > Use CVE-2017-5503.
> > 
> > 
> > --
> > CVE Assignment Team
> > M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
> > [ A PGP key is available for encrypted communications at
> >   http://cve.mitre.org/cve/request_id.html ]
> 
> The previous mail clearly state:
> > Timeline:
> > 2016-11-20: bug discovered and reported to upstream
> 
> Why a CVE-2017-* ?

Where was that reported upstream? Please add the bug numbers to your
advisories.

Cheers,
        Moritz
