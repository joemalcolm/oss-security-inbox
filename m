X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["411" "Tuesday" "4" "August" "2015" "14:21:23" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9rcGJxPYBsgg7H_G46vPgmo30AUgK5C4-bJjubvrPv9+Q@mail.gmail.com>" "10" "Re: [oss-security] Linux x86_64 NMI security issues" nil nil nil "8" "2015080412:21:23" "[oss-security] Linux x86_64 NMI security issues" (number mark "        Jason@zx2c4. Aug  4   10/411   " thread-indent "\"Re: [oss-security] Linux x86_64 NMI security issues\"\n") "<CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>" ("<CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21724 invoked by uid 550); 4 Aug 2015 12:21:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21706 invoked from network); 4 Aug 2015 12:21:38 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:in-reply-to:references:date:message-id:subject:from:to:cc
	:content-type; s=mail; bh=jzMuFIZ/Spa5oXnl/dffIGPZOho=; b=OOeVj7
	HTVGjzic6xt27QYMI3AbXipdzUvxYw11rMiWlmsKNa5ecgDJ0bi7/BnquGLZJqjI
	ieI70OM6FgnJXLOvg2vTSk1ZScdnNDQ3Ll4N+YfLY5Yp0k0YCGuUjZVQWhDfZENH
	y/b6KnWCxgVdf34lbEEPyVrzxnMKbTmy1QokeNttzvz6XMLun3CrCDOWeAs0ptu4
	y/XoZfHB+z73Rkti4ecZhTvGhN56eMtrOaacp+V2/6BnC1w8V/7COI5+pQ8Xjst9
	jJwnK/+Ly+nVYM76tFn04MeGinIHTDCCZWQrB8XCLCmq27q0QHjv8/BeC3ZDmV3i
	504Axr+9M8udC44Q==
MIME-Version: 1.0
X-Received: by 10.152.6.102 with SMTP id z6mr2968640laz.95.1438690883580; Tue,
 04 Aug 2015 05:21:23 -0700 (PDT)
In-Reply-To: <CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>
References: <CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>
Message-ID: <CAHmME9rcGJxPYBsgg7H_G46vPgmo30AUgK5C4-bJjubvrPv9+Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Date: Tue, 4 Aug 2015 14:21:23 +0200
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux x86_64 NMI security issues
To: oss-security <oss-security@lists.openwall.com>

On Wed, Jul 22, 2015 at 8:12 PM, Andy Lutomirski <luto@amacapital.net> wrote:
> You can mitigate CVE-2015-3290 by blocking modify_ldt or
> perf_event_open using seccomp.  A fully-functional, portable, reliable
> exploit is privately available and will be published in a week or two.
> *Patch your systems*

Andy -- we've been sitting at the edge of our seats in anticipation!
Is it publication time yet?

Jason
