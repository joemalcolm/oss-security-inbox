X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["436" "Tuesday" "6" "August" "2019" "09:16:09" "+0200" "Moritz Muehlenhoff" "jmm@inutil.org" "<20190806071609.nsp67arh7gganbvy@inutil.org>" "11" "Re: [oss-security] CVE request: musl libc 1.1.23 and earlier x87 float stack imbalance" nil nil nil "8" "2019080607:16:09" "[oss-security] CVE request: musl libc 1.1.23 and earlier x87 float stack imbalance" (number mark "U       jmm@inutil.o Aug  6   11/436   " thread-indent "\"Re: [oss-security] CVE request: musl libc 1.1.23 and earlier x87 float stack imbalance\"\n") "<20190805232737.GA11260@brightrain.aerifal.cx>" ("<20190805232737.GA11260@brightrain.aerifal.cx>") nil nil nil nil nil nil nil "Re: [oss-security] CVE request: musl libc 1.1.23 and earlier x87 float stack imbalance" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5666 invoked by uid 550); 6 Aug 2019 07:16:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5629 invoked from network); 6 Aug 2019 07:16:20 -0000
Date: Tue, 6 Aug 2019 09:16:09 +0200
From: Moritz Muehlenhoff <jmm@inutil.org>
To: oss-security@lists.openwall.com
Cc: musl@lists.openwall.com
Message-ID: <20190806071609.nsp67arh7gganbvy@inutil.org>
References: <20190805232737.GA11260@brightrain.aerifal.cx>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190805232737.GA11260@brightrain.aerifal.cx>
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [oss-security] CVE request: musl libc 1.1.23 and earlier x87
 float stack imbalance

On Mon, Aug 05, 2019 at 07:27:37PM -0400, Rich Felker wrote:
> I've discovered a flaw in musl libc's arch-specific math assembly code
> for i386, whereby at least the log1p function and possibly others
> return with more than one item on the x87 stack.

Given that the Subject: mentions a CVE request; these are no longer
handled via the oss-security mailing list. Please use
https://cveform.mitre.org/ instead.

Cheers,
        Moritz
