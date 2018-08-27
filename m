X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1188" "Monday" "27" "August" "2018" "19:43:51" "-0400" "Perry E. Metzger" "perry@piermont.com" "<20180827194351.76ac39c6@jabberwock.cb.piermont.com>" "28" "Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" "^Cc:" nil nil "8" "2018082723:43:51" "[oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" (number mark "        perry@piermo Aug 27   28/1188  " thread-indent "\"Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?\"\n") "<CAJ_zFk+yb9zEXSqs2fdANvKkipg2yQAU89xKr1HMv-EJG2-vxg@mail.gmail.com>" ("<CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>" "<CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com>" "<alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org>" "<CAFRnB2U+QMGmAMoZqbCgTjEx_o_NA+Y9eBE6eDBgJJ0hZdQ4GQ@mail.gmail.com>" "<CAJ_zFkJpnGtG6D3JZVaC5KJiNzsJ6vjJK0oXRfirR8QsdFbZVQ@mail.gmail.com>" "<CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com>" "<alpine.GSO.2.20.1808221612460.22335@scrappy.simplesystems.org>" "<5b7dd771.1c69fb81.a6d8.6521@mx.google.com>" "<alpine.GSO.2.20.1808230753470.3841@freddy.simplesystems.org>" "<5b7eb7b2.1c69fb81.6b98e.519f@mx.google.com>" "<alpine.GSO.2.20.1808230958120.3639@scrappy.simplesystems.org>" "<CAJ_zFk+yb9zEXSqs2fdANvKkipg2yQAU89xKr1HMv-EJG2-vxg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1446 invoked by uid 550); 27 Aug 2018 23:44:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1424 invoked from network); 27 Aug 2018 23:44:04 -0000
Message-ID: <20180827194351.76ac39c6@jabberwock.cb.piermont.com>
In-Reply-To: <CAJ_zFk+yb9zEXSqs2fdANvKkipg2yQAU89xKr1HMv-EJG2-vxg@mail.gmail.com>
References: <CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>
	<CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com>
	<alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org>
	<CAFRnB2U+QMGmAMoZqbCgTjEx_o_NA+Y9eBE6eDBgJJ0hZdQ4GQ@mail.gmail.com>
	<CAJ_zFkJpnGtG6D3JZVaC5KJiNzsJ6vjJK0oXRfirR8QsdFbZVQ@mail.gmail.com>
	<CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com>
	<alpine.GSO.2.20.1808221612460.22335@scrappy.simplesystems.org>
	<5b7dd771.1c69fb81.a6d8.6521@mx.google.com>
	<alpine.GSO.2.20.1808230753470.3841@freddy.simplesystems.org>
	<5b7eb7b2.1c69fb81.6b98e.519f@mx.google.com>
	<alpine.GSO.2.20.1808230958120.3639@scrappy.simplesystems.org>
	<CAJ_zFk+yb9zEXSqs2fdANvKkipg2yQAU89xKr1HMv-EJG2-vxg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: oss-security@lists.openwall.com
Date: Mon, 27 Aug 2018 19:43:51 -0400
From: "Perry E. Metzger" <perry@piermont.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: More Ghostscript Issues: Should we disable
 PS coders in policy.xml by default?
To: Tavis Ormandy <taviso@google.com>

On Mon, 27 Aug 2018 16:02:46 -0700 Tavis Ormandy <taviso@google.com>
wrote:
> Here is an update, Artifex made a press release
> <https://www.darkreading.com/prnewswire2.asp?rkey=20180824UN89145&filter=3930>
> listing
> some necessary commits, but the list was incomplete.

They also claimed "Artifex Software is pleased to report that the
recently disclosed security vulnerabilities in Ghostscript have been
resolved.", which, even if they were all patched in their git
repository, which they don't seem to all be, would still not really
be true given the lack of an actual release.

> Here is a list of relevant commits I'm aware of so far, some issues
> are still open with working exploits available. It's my
> understanding that no new release is planned until late September,
> and vendors need to either ship a git snapshot when all issues are
> resolved, or apply patches. I have testcases for each problem, but
> I think the bugs will be visible eventually so I'm not posting them
> here.

If someone would put a git repo onto GitHub with all the available
patches applied on a branch, I'm sure a bunch of people would be
grateful.

Perry
-- 
Perry E. Metzger		perry@piermont.com
