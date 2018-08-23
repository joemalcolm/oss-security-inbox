X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["952" "Thursday" "23" "August" "2018" "10:03:40" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1808230958120.3639@scrappy.simplesystems.org>" "25" "Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" "^Date:" nil nil "8" "2018082315:03:40" "[oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" (number mark "        bfriesen@sim Aug 23   25/952   " thread-indent "\"Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?\"\n") "<5b7eb7b2.1c69fb81.6b98e.519f@mx.google.com>" ("<CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>" "<CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com>" "<alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org>" "<CAFRnB2U+QMGmAMoZqbCgTjEx_o_NA+Y9eBE6eDBgJJ0hZdQ4GQ@mail.gmail.com>" "<CAJ_zFkJpnGtG6D3JZVaC5KJiNzsJ6vjJK0oXRfirR8QsdFbZVQ@mail.gmail.com>" "<CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com>" "<alpine.GSO.2.20.1808221612460.22335@scrappy.simplesystems.org>" "<5b7dd771.1c69fb81.a6d8.6521@mx.google.com>" "<alpine.GSO.2.20.1808230753470.3841@freddy.simplesystems.org>" "<5b7eb7b2.1c69fb81.6b98e.519f@mx.google.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26337 invoked by uid 550); 23 Aug 2018 15:04:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26073 invoked from network); 23 Aug 2018 15:03:52 -0000
X-X-Sender: bfriesen@scrappy.simplesystems.org
In-Reply-To: <5b7eb7b2.1c69fb81.6b98e.519f@mx.google.com>
Message-ID: <alpine.GSO.2.20.1808230958120.3639@scrappy.simplesystems.org>
References: <CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com> <CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com> <alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org> <CAFRnB2U+QMGmAMoZqbCgTjEx_o_NA+Y9eBE6eDBgJJ0hZdQ4GQ@mail.gmail.com>
 <CAJ_zFkJpnGtG6D3JZVaC5KJiNzsJ6vjJK0oXRfirR8QsdFbZVQ@mail.gmail.com> <CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com> <alpine.GSO.2.20.1808221612460.22335@scrappy.simplesystems.org> <5b7dd771.1c69fb81.a6d8.6521@mx.google.com>
 <alpine.GSO.2.20.1808230753470.3841@freddy.simplesystems.org> <5b7eb7b2.1c69fb81.6b98e.519f@mx.google.com>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Thu, 23 Aug 2018 10:03:40 -0500 (CDT)
Date: Thu, 23 Aug 2018 10:03:40 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: More Ghostscript Issues: Should we disable
 PS coders in policy.xml by default?
To: oss-security@lists.openwall.com

On Thu, 23 Aug 2018, Leonardo Taccari wrote:
>
> (Regarding the `file.ps2' and `file.ps3' examples without `PS2:' or
> `PS3:' prefixes according `convert -debug Policy -log "%e"' it seems
> that they ends up as:
>
> Domain: Coder; rights=Read; pattern="PS" ...
>
> ...so should be blocked by the workaround described in
> VU#332928. But please correct me if I'm wrong.)

This is likely due to header magic detection (e.g. "%!PS-Adobe").  It 
is possible that a different path will be taken if the common 
Postscript header is not detected.  The file extension may then be 
used as a hint.  Also, there are a wide varieties of ImageMagick 
versions in use, with a wide variety of behaviors.

The version of ImageMagick provided by the Ubuntu Linux I am using at 
this moment dates from 2012!

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
