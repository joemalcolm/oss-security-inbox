Received: (qmail 26619 invoked by uid 550); 3 May 2024 10:47:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11684 invoked from network); 2 May 2024 23:04:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1714691038; x=1715357704; h=date:author:from:to:cc:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-date:resent-from:resent-to:
  resent-cc:in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=26VqTBFXo5b9t6vC5Ir1/RqgnzkPDF0CwmJHuySAYiU=;
 b=jxtc9BP5k1OEM0RP4QMs0Yu+USSFz3qqOOgTaVoVLa9IRXsKuI+Wv1CQw+fosh+tlEUMbRfK
  NeQgxjd3C5R7M3kNOUzrdrSpfBSxmhI+BRkmcWH20C/JphHWIRHRLlyjviYqsSd0PNSMbCWaIl
  tk5igCemaQHVLfIWQjemMThFWiUzyPLGbxU1yh6YkRImFBnGSK/uJNFRa6u4ArlsL8B8DJX7tk
  twW14Mp+GmMDSnEjE4oXinHZ2Yyn9q/UgfZvQiYFPmwgqbmXfqwcYSVTtyVB129+DP68XrT5fj
  G32kR3O3TUWKnnaOkgqQ8tLDioT9uEfq9f4r0Kyn63RXn2sQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1714691038; x=1715357704; h=date:author:from:to:cc:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-date:resent-from:resent-to:
  resent-cc:in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=26VqTBFXo5b9t6vC5Ir1/RqgnzkPDF0CwmJHuySAYiU=;
 b=Awr+kJkOSU8P7nsmm1ezeDCbIjmnSHhzlCH5jnuvSSsBZ2HQATlYU0URg6bW8Rz5QVX3qs8/
  lNPLx7nhFPJPBQ==
Date: Fri, 03 May 2024 01:03:58 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: Sam James <sam@gentoo.org>
Cc: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com
Message-ID: <20240502230358.F7YB0d6D@steffen%sdaoden.eu>
In-Reply-To: <20240502223912.08A3RYp4@steffen%sdaoden.eu>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <ZgcOVnk5hCVkDUt/@ycc.fr> <uu9f4s$oga$2@ciao.gmane.io>
 <20240331213023.GA22787@openwall.com>
 <cd985494-7e02-ab46-785d-78ba6eabae4d@gmail.com>
 <20240403205835.GA12974@openwall.com> <87o79nlwxl.fsf@gentoo.org>
 <20240502223912.08A3RYp4@steffen%sdaoden.eu>
Mail-Followup-To: Sam James <sam@gentoo.org>,
 Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-621-g0d1e55f367
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] escaping terminal control characters (was
 Re: backdoor in upstream xz/liblzma leading to ssh server compromise)

Steffen Nurpmeso wrote in
 <20240502223912.08A3RYp4@steffen%sdaoden.eu>:
 |Sam James wrote in
 | <87o79nlwxl.fsf@gentoo.org>:
 ||Solar Designer <solar@openwall.com> writes:
 ||> On Wed, Apr 03, 2024 at 11:03:17AM +1100, Matthew Fernandez wrote:
 ||>> On 4/1/24 08:30, Solar Designer wrote:
 ||>>>On Sat, Mar 30, 2024 at 04:37:48PM -0000, Tavis Ormandy wrote:
 ...
 ||>> Is the currently accepted wisdom that any application printing to 
 ||>> stdout/stderr should take steps to avoid control characters in the 
 ||>> output?
 ||>
 ||> First, let's limit this to cases where the control characters come from
 ||> potentially untrusted input to the program.  Obviously, many programs
 ||> generate terminal escapes on their own (usually via a library), for
 ||> their intended functionality (colorized listings, TUIs, etc.)  Some
 ||> programs pass potential control characters from their trusted input.
 ||>
 ||> Second, I think no, there isn't currently an established opinion on
 ||> whether programs should perform such filtering of untrusted input.
 ||
 ||Lasse has put up an initial implementation for xz:
 ||https://github.com/tukaani-project/xz/pull/118.
 ||
 ||Comments are welcome. It was a TODO from a long time ago ;)
 ||
 ||We're not sure how much is overkill (or underkill) for this, especially
 ||given it gets harder when Unicode is involved.
 ||
 ||> [...]
 |
 |For this purpose there exists the (very very expensive)
 |
 |  https://man.netbsd.org/vis.3
 |
 |series of functions.  Or you do something like this, where "isuni"
 |gives you "this is a UTF-8 nl_langinfo(CODESET)".
 ...
 |            if((wc & ~S(wchar_t,037)) == 0)
 |               wc = isuni ? 0x2400 | wc : '?';
 |            else if(wc == 0177)
 |               wc = isuni ? 0x2421 : '?';
 |            else
 |               wc = isuni ? 0x2426 : '?';
 ...
 |This can be made better (for example the above requires "wc" to be
 |an actual ISO 10646 codepoint, which ISO C etc), but the key point
 |is that the Unicode standard gives you everything needed to
 |properly mask these sequences, from its very beginning in 1993:
 |
 |  2400..2424    ; 1.1 #  [37] SYMBOL FOR NULL..SYMBOL FOR NEWLINE
 |
 |and i have yet to see a font which does not support those.
 |(Whether and how users can make sense of them totally aside.)
 |Of course you loose the copy&paste capability.

While here please let me back the not yet gracefully supported
shell escape mechanism $''.
The current approach seems to be to be as atomic as possible:

  # touch $(printf 'a\rb\tc\a')
  # ll
->
  -rw-r----- 1 steffen steffen   0 May  3 00:46 'c'$'\a'
  -rw-r----- 1 steffen steffen   0 May  3 00:46 'a'$'\r''b'

(GNU coreutils).  Isn't that just terrible?  In (the development
version of) my mailer tab-completion leads to

  #..mbox? /tmp/<TAB>
  $'a\rb'
  $'c\a'

which i find at least a little bit better.  (Do not even think
about looking in its implementation though, look ICU or what.)

And even though currently unsupported, it should be said that with
"grapheme clusters" and in general things like ligatures and other
such language-specific constructs which need to look at
surroundings -- in general interfaces like towupper() etc are not
useful in global context, entire sentences have to be looked at as
a whole due to this! --, shell quotes should be extended to the
largest possible range possible.  Ie, all the iconv(3)s that are
currently used because of a lack of other interfaces should be
enabled to see the longest possible (sub)string, not the most
atomar, as seen above.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
