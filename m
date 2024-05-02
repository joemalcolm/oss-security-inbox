Received: (qmail 24286 invoked by uid 550); 3 May 2024 10:47:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22443 invoked from network); 2 May 2024 22:39:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1714689555; x=1715356221; h=date:author:from:to:cc:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-date:resent-from:resent-to:
  resent-cc:in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=yDPlGVyZppLhBAct8+puERVajGAHaP1nX4Iow+sOJAo=;
 b=E6EAyJO8XGfNFJ3azV8Fo9xa27NdVFKhTKUHA6qhNcPLYP1/039YOS7JHTXraS+50HBHu6af
  8/Z8L3vBCJCArcbT0fea35L85vIGiesatxKkY1XvZUrTQn5UThVm+X35VRTt1LuwYkU7JELxeP
  izKv2LMezm5SucDgXEFs2iTO71ou08bdm+iFBa6v1z+vB3X84JNF2Hz6m9VJEmPA6LC+BaBry8
  EHwdmX7tPfaytJCrXHxAYPkzhFPRs1mjVPowYjwDIi+HHDSh0pvbEj5KyYD+b0b7QwWNWs/AjI
  RtqKBmx+EqmHewZ9OwMwxLIeaBLRDQCwPPDE3latZHEKSWZQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1714689555; x=1715356221; h=date:author:from:to:cc:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-date:resent-from:resent-to:
  resent-cc:in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=yDPlGVyZppLhBAct8+puERVajGAHaP1nX4Iow+sOJAo=;
 b=o3PEpmkCjftaZKXKQHfypCXQuvk90bw5uBMW/2oI1ai7VXZTiUrbsuag+9PUnwKyWmfFkq8E
  i3v5NWAiYJ4ICg==
Date: Fri, 03 May 2024 00:39:12 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: Sam James <sam@gentoo.org>
Cc: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com
Message-ID: <20240502223912.08A3RYp4@steffen%sdaoden.eu>
In-Reply-To: <87o79nlwxl.fsf@gentoo.org>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <ZgcOVnk5hCVkDUt/@ycc.fr> <uu9f4s$oga$2@ciao.gmane.io>
 <20240331213023.GA22787@openwall.com>
 <cd985494-7e02-ab46-785d-78ba6eabae4d@gmail.com>
 <20240403205835.GA12974@openwall.com> <87o79nlwxl.fsf@gentoo.org>
Mail-Followup-To: Sam James <sam@gentoo.org>,
 Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-621-g0d1e55f367
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] escaping terminal control characters (was
 Re: backdoor in upstream xz/liblzma leading to ssh server compromise)

Sam James wrote in
 <87o79nlwxl.fsf@gentoo.org>:
 |Solar Designer <solar@openwall.com> writes:
 |> On Wed, Apr 03, 2024 at 11:03:17AM +1100, Matthew Fernandez wrote:
 |>> On 4/1/24 08:30, Solar Designer wrote:
 |>>>On Sat, Mar 30, 2024 at 04:37:48PM -0000, Tavis Ormandy wrote:
 |>>>>It was also pointed out they submitted an odd PR to libarchive:
 |>>>>
 |>>>>https://github.com/libarchive/libarchive/pull/1609
 |>>>>
 |>>>>In summary, they replaced calls to safe_fprintf() with fprintf() --
 |>>>>meaning control characters are no longer filtered from errors. That
 |>>>>seems pretty minor, but now that we know they were in the business of
 |>>>>obfuscating the presence of backdoors -- seems a bit suspicious.
 |>>>>
 |>>>>Regardless, that change has now been reverted:
 |>>>>
 |>>>>https://github.com/libarchive/libarchive/pull/2101
 |>>>
 |>>>This does look minor indeed - not usable for large-scale attacks, and
 |>>>libarchive is quite unique in that it even bothered to filter control
 |>>>characters, whereas most command-line tools outputting filenames don't
 |>>>bother.  My guess is it could have been an early experiment to see
 |>>>whether the project would accept PRs degrading security.
 |>>>
 |>>>That said, here's an excellent write-up by David Leadbeater on specific
 |>>>ways that specific terminal emulators may be usefully attacked with
 |>>>control sequences:
 |>>>
 |>>>https://dgl.cx/2023/09/ansi-terminal-security#vulnerabilities-using-know\
 |>>>n-replies
 |>> 
 |>> Is the currently accepted wisdom that any application printing to 
 |>> stdout/stderr should take steps to avoid control characters in the 
 |>> output?
 |>
 |> First, let's limit this to cases where the control characters come from
 |> potentially untrusted input to the program.  Obviously, many programs
 |> generate terminal escapes on their own (usually via a library), for
 |> their intended functionality (colorized listings, TUIs, etc.)  Some
 |> programs pass potential control characters from their trusted input.
 |>
 |> Second, I think no, there isn't currently an established opinion on
 |> whether programs should perform such filtering of untrusted input.
 |
 |Lasse has put up an initial implementation for xz:
 |https://github.com/tukaani-project/xz/pull/118.
 |
 |Comments are welcome. It was a TODO from a long time ago ;)
 |
 |We're not sure how much is overkill (or underkill) for this, especially
 |given it gets harder when Unicode is involved.
 |
 |> [...]

For this purpose there exists the (very very expensive)

  https://man.netbsd.org/vis.3

series of functions.  Or you do something like this, where "isuni"
gives you "this is a UTF-8 nl_langinfo(CODESET)".

         if(!iswprint(wc) && wc != '\n' /*&& wc != '\r' && wc != '\b'*/ &&
               wc != '\t'){
            if((wc & ~S(wchar_t,037)) == 0)
               wc = isuni ? 0x2400 | wc : '?';
            else if(wc == 0177)
               wc = isuni ? 0x2421 : '?';
            else
               wc = isuni ? 0x2426 : '?';
         }else if(isuni){ /* TODO ctext */
            /* Need to filter out L-TO-R and R-TO-R marks TODO ctext */
            if(wc == 0x200E || wc == 0x200F || (wc >= 0x202A && wc <= 0x202E))
               continue;
            /* And some zero-width messes */
            if(wc == 0x00AD || (wc >= 0x200B && wc <= 0x200D))
               continue;
            /* Oh about the ISO C wide character interfaces, baby! */
            if(wc == 0xFEFF)
               continue;
         }

         if((n = wctomb(mbb, wc)) <= 0)
            continue;

This can be made better (for example the above requires "wc" to be
an actual ISO 10646 codepoint, which ISO C etc), but the key point
is that the Unicode standard gives you everything needed to
properly mask these sequences, from its very beginning in 1993:

  2400..2424    ; 1.1 #  [37] SYMBOL FOR NULL..SYMBOL FOR NEWLINE

and i have yet to see a font which does not support those.
(Whether and how users can make sense of them totally aside.)
Of course you loose the copy&paste capability.

 --End of <87o79nlwxl.fsf@gentoo.org>

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
