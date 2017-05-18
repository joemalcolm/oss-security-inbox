X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1183" "Thursday" "18" "May" "2017" "11:31:13" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9ra5WDz77HHzY3mQwRUoxeOUh5yVLxw1VD-SbeqOHafNg@mail.gmail.com>" "29" "[oss-security] Re: Defense in depth patch for rxvt-unicode" "^Cc:" nil nil "5" "2017051809:31:13" "[oss-security] Re: Defense in depth patch for rxvt-unicode" (number mark "        Jason@zx2c4. May 18   29/1183  " thread-indent "\"[oss-security] Re: Defense in depth patch for rxvt-unicode\"\n") "<20170518022415.ygonweucssnxmazg@schmorp.de>" ("<CAHmME9rNUXu16RD_fYYDfJa74F8M38tSjk+OU8ugEk8Zi4WKug@mail.gmail.com>" "<20170518022415.ygonweucssnxmazg@schmorp.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15914 invoked by uid 550); 18 May 2017 09:31:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15864 invoked from network); 18 May 2017 09:31:29 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:in-reply-to:references:from:date:message-id:subject:to:cc
	:content-type; s=mail; bh=EybYA6CXRhVrt9lu+eqTl9Bg/1w=; b=JP0E4/
	1P3CCyI0/yfswtCUeWPED4B21gG6K4FymO7V2s+QdwggebhaTOdEUZo3g+PMRZf2
	IMYtcks2XCqMDfXG1EK8mYiepDMAYbS2KbTL5u68Cl67SXO6f5JG1VPxjJpzWWvN
	ciuygjEId8rmdc+Tdb4LW7op0CDyoT4Y3jlJhmd+6qhB3DXiq9qKDfxJISAQaSxi
	CMna5/n4j5OL0ghDIC1QChvzWHrwZ78T1wR/SmhhMwn6HTYrPjT3u/9Rw0EAp+dH
	uJjqEW+hT9kR2c93w56A89r37npwsB2vAiXGRnB39821OzpoYtMlwvbMUZctPHWD
	6l50ijQh9ZP5RSYw==
X-Gm-Message-State: AODbwcCReiLtlw2XJJMGxs4hbEzQAGsUZRShQt5RLrPqYSiwMGhqid5X
	JpRuQMnPxDpEQhURUIWQq0FSZ75rdQ==
X-Received: by 10.157.22.131 with SMTP id c3mr1989292ote.120.1495099874279;
 Thu, 18 May 2017 02:31:14 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170518022415.ygonweucssnxmazg@schmorp.de>
References: <CAHmME9rNUXu16RD_fYYDfJa74F8M38tSjk+OU8ugEk8Zi4WKug@mail.gmail.com>
 <20170518022415.ygonweucssnxmazg@schmorp.de>
X-Gmail-Original-Message-ID: <CAHmME9ra5WDz77HHzY3mQwRUoxeOUh5yVLxw1VD-SbeqOHafNg@mail.gmail.com>
Message-ID: <CAHmME9ra5WDz77HHzY3mQwRUoxeOUh5yVLxw1VD-SbeqOHafNg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: oss-security <oss-security@lists.openwall.com>, rxvt-unicode@schmorp.de, 
	"jer@gentoo.org" <jer@gentoo.org>
Date: Thu, 18 May 2017 11:31:13 +0200
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Defense in depth patch for rxvt-unicode
To: Marc Lehmann <schmorp@schmorp.de>

On Thu, May 18, 2017 at 4:24 AM, Marc Lehmann <schmorp@schmorp.de> wrote:
> This sounds big, but I don't quite see the patch achieving that, as input is
> processed at many places, yet the patch only changes one place.

The intent was to limit the bounds on the number at the very beginning
of the call chain. I believe this patch does that, but if I've missed
additional entry points, please let me know, and I'll roll another
revision of the same technique.

> I can't see why this patch somehow "unsupports" the most dangerous uses of
> escape sequences.

It prevents potential integer overflows during subsequent additions or
multiplications. The range in the patch was chosen to be especially
forgiving in that regard.

> The parameter range is severely limited. This makes the patch rather
> disadvantageous, without any demonstrated benefit.

Could you list a valid use for a range larger than that?


> Valid uses outweigh "potential security mitigations" simply because
> "potential security mitigations" is pretty weightless in itself.
>
> If you are aware of an actual security problem, that would be something to
> attack.

That's not quite how "defense in depth" works.
