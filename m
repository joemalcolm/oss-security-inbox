Received: (qmail 14074 invoked by uid 550); 13 Feb 2025 21:03:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14008 invoked from network); 13 Feb 2025 21:03:27 -0000
Date: Thu, 13 Feb 2025 16:03:19 -0500
From: Rich Felker <dalias@libc.org>
To: musl@lists.openwall.com
Cc: oss-security@lists.openwall.com
Message-ID: <20250213210318.GE10433@brightrain.aerifal.cx>
References: <20250213171546.GA3976@brightrain.aerifal.cx>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="p/1JFEOz/hVXxMAZ"
Content-Disposition: inline
In-Reply-To: <20250213171546.GA3976@brightrain.aerifal.cx>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] Re: [musl] CVE-2025-26519: musl libc: input-controlled out-of-bounds
 write primitive in iconv()

--p/1JFEOz/hVXxMAZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 13, 2025 at 12:15:54PM -0500, Rich Felker wrote:
> Vulnerability description:
> 
> A vulnerability has been identified in musl libc's implementation of
> iconv that can result in out-of-bounds memory writes in applications
> which process untrusted input using iconv and where the input charset
> for the conversion is input-controlled.
> 
> In order for the vulnerability to be exposed, an application must call
> iconv_open with an output encoding of UTF-8 and and input encoding of
> EUC-KR, and must subsequently process untrusted input using the
> resulting conversion descriptor. The most common scenario in which
> this occurs is using the declared MIME charset of untrusted input (for
> example, in XML, HTML, or MIME-encoded email) as input to iconv_open
> for converting arbitrary-encoding input to UTF-8.
> 
> This issue was discovered and reported by Nick Wellnhofer. It arose as
> a combination of incorrect input byte validation in the EUC-KR
> decoder, and the fact that the UTF-8 output encoder assumed an
> invariant that the input decoder never produces character codes which
> are not valid Unicode Scalar Values.

Addendum: I also have a test program that will check if your iconv is
affected, attached. It runs over all 65536 byte pairs and looks for
bogus changes to the output buffer pointer/remaining.

--p/1JFEOz/hVXxMAZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="euckr_bug.c"

#include <iconv.h>
#include <stdio.h>
#include <errno.h>
#include <string.h>

#define T(x) ((x) || (e+=fail(r, errno, i, j, out1, pout, outb, #x)))

int fail(int r, int err, int i, int j, char *start, char *end, size_t rem, char *pred)
{
	printf("%.2x %.2x: returned %d (%s), start %p end %p rem %zu: failed assertion: %s\n",
		i, j, r, r<0?strerror(err):"", start, end, rem, pred);
	return 1;
}


int main()
{
	iconv_t cd = iconv_open("UTF-8", "EUC-KR");
	int e = 0;
	for (int i=0; i<256; i++)
		for (int j=0; j<256; j++) {
			char in[3] = { i, j, 'x' };
			char out[12] = "", *out1=out+4;
			char *pin = in, *pout = out1;
			size_t inb = sizeof in;
			size_t outb = sizeof out - (out1-out);
			errno = 0;
			size_t r = iconv(cd, &pin, &inb, &pout, &outb);
			T(pout>=out1 && pout<out+sizeof out);
			T(outb <= sizeof out - (out1-out));
			T(out1[-1]=='\0');
		}
	return !!e;
}

--p/1JFEOz/hVXxMAZ--
