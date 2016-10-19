X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1202" "Wednesday" "19" "October" "2016" "19:30:04" "-0400" "Rich Felker" "dalias@libc.org" "<20161019233004.GJ19318@brightrain.aerifal.cx>" "30" "[oss-security] Re: CVE Request - TRE & musl libc regex integer overflows in buffer size computations" nil nil nil "10" "2016101923:30:04" "[oss-security] Re: CVE Request - TRE & musl libc regex integer overflows in buffer size computations" (number mark "U       dalias@libc. Oct 19   30/1202  " thread-indent "\"[oss-security] Re: CVE Request - TRE & musl libc regex integer overflows in buffer size computations\"\n") "<20161019213412.5EE6E8BC62F@smtpvmsrv1.mitre.org>" ("<20161018230613.GH19318@brightrain.aerifal.cx>" "<20161019213412.5EE6E8BC62F@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29971 invoked by uid 550); 19 Oct 2016 23:34:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27696 invoked from network); 19 Oct 2016 23:30:22 -0000
Date: Wed, 19 Oct 2016 19:30:04 -0400
From: Rich Felker <dalias@libc.org>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com, ville@laurikari.net
Message-ID: <20161019233004.GJ19318@brightrain.aerifal.cx>
References: <20161018230613.GH19318@brightrain.aerifal.cx>
 <20161019213412.5EE6E8BC62F@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161019213412.5EE6E8BC62F@smtpvmsrv1.mitre.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: Rich Felker <dalias@aerifal.cx>
Subject: [oss-security] Re: CVE Request - TRE & musl libc regex integer overflows in buffer
 size computations

On Wed, Oct 19, 2016 at 05:34:12PM -0400, cve-assign@mitre.org wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
> 
> > Due to incorrect use of integer types and missing overflow checks in
> > the tre_tnfa_run_parallel function's buffer overflow logic, the TRE
> > regex implementation (both original version and the one used in musl
> > libc) are subject to integer overflows in buffer size computation.
> 
> > at least the num_states*num_tags multiplication can clearly
> > overflow in practice. for safety, check them all, and use the proper
> > type, size_t, rather than int.
> 
> Use CVE-2016-8859 for this entire report. We do not see a sensible way
> in which the issue of an incorrect data type could be separated from
> the issue of unchecked multiplication.

Agreed.

> > -    buf = xmalloc((unsigned)total_bytes);
> > +    buf = calloc(total_bytes, 1);
> 
> If this is a security fix, it would need a separate CVE ID.

It's not, just something I did at the same time as fixing the bogus
cast (which would be unsafe after the type fix) in this line. In
musl's version of the code, xmalloc is just malloc, and malloc+memset
was a sloppy way of writing calloc that I cleaned up.

Rich
