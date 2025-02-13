Received: (qmail 11431 invoked by uid 550); 13 Feb 2025 22:33:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11380 invoked from network); 13 Feb 2025 22:33:55 -0000
Date: Thu, 13 Feb 2025 17:33:47 -0500
From: Rich Felker <dalias@libc.org>
To: Daniel Gutson <danielgutson@gmail.com>
Cc: musl@lists.openwall.com, oss-security@lists.openwall.com,
	Nick Wellnhofer <wellnhofer@aevum.de>
Message-ID: <20250213223346.GF10433@brightrain.aerifal.cx>
References: <20250213171546.GA3976@brightrain.aerifal.cx>
 <CAFdMc-1uX4X1HNrR-hj0iGASCfRL6PfVdNsynOs4BdoS+QrGSw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAFdMc-1uX4X1HNrR-hj0iGASCfRL6PfVdNsynOs4BdoS+QrGSw@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] Re: [musl] CVE-2025-26519: musl libc: input-controlled out-of-bounds
 write primitive in iconv()

On Thu, Feb 13, 2025 at 07:28:29PM -0300, Daniel Gutson wrote:
> Curious: is there any info about how this was discovered?

The reporter emailed me off-list with two iconv bug findings, out of
caution in case they turned out to be security relevant, but didn't
think they were big. I worked out that the EUC-KR one would allow
controlled writes by advancing the output pointer back past the start
without writing anything until the next valid conversion.

I'm not sure if any tools were used, but IMO both were definitely
things you could find with an in-depth manual read of the source
looking for mistakes. CC'ing Nick Wellnhofer in case he has more to
add on this.

Rich


> El jue, 13 feb 2025, 14:16, Rich Felker <dalias@libc.org> escribió:
> 
> > Vulnerability description:
> >
> > A vulnerability has been identified in musl libc's implementation of
> > iconv that can result in out-of-bounds memory writes in applications
> > which process untrusted input using iconv and where the input charset
> > for the conversion is input-controlled.
> >
> > In order for the vulnerability to be exposed, an application must call
> > iconv_open with an output encoding of UTF-8 and and input encoding of
> > EUC-KR, and must subsequently process untrusted input using the
> > resulting conversion descriptor. The most common scenario in which
> > this occurs is using the declared MIME charset of untrusted input (for
> > example, in XML, HTML, or MIME-encoded email) as input to iconv_open
> > for converting arbitrary-encoding input to UTF-8.
> >
> > This issue was discovered and reported by Nick Wellnhofer. It arose as
> > a combination of incorrect input byte validation in the EUC-KR
> > decoder, and the fact that the UTF-8 output encoder assumed an
> > invariant that the input decoder never produces character codes which
> > are not valid Unicode Scalar Values.
> >
> >
> >
> > Affected versions:
> >
> > The vulnerable code has been present since EUC-KR support was added to
> > iconv in musl 0.9.13. All versions in the range 0.9.13 through 1.2.5
> > are affected.
> >
> > Future releases beginning with 1.2.6 will ship with the bug fixed.
> >
> >
> >
> > Mitigation:
> >
> > All users should apply the source patches included/attached below. The
> > first fixes the bug (incorrect input byte validation) responsible for
> > the vulnerability, and the second closes off the vector by which this
> > class of bug escalated to an out-of-bounds write. These patches should
> > apply cleanly to all versions affected by the bug.
> >
> > Users of musl libc based distributions should obtain an updated
> > package with the patch applied through their distributon's update
> > channels.
> >
> > Static-linked binaries that cannot easily be relinked may be patched
> > to inhibit the vulnerability, at the cost of disabling support for
> > decoding EUC-KR text, by searching the binary, using a
> > binary-clean/hex editor, for the byte sequence:
> >
> >         "euckr\0ksc5601\0ksx1001\0cp949\0"
> >
> > and replacing it with:
> >
> >         "-----\0-------\0-------\0-----\0"
> >
> > Since non-alphanumeric-ASCII characters are stripped from the charset
> > name by iconv_open, this change will render EUC-KR and all aliases for
> > it unmatchable, thereby making the vulnerable code unreachable.
> >
> >
> >
