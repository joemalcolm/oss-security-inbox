X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["304" "Monday" "7" "March" "2016" "18:52:04" "+0100" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9q6vctff8ZAyL-Ats_DMPKi=aazUBWX86fdKNNH5c7OfQ@mail.gmail.com>" "5" "Re: [oss-security] Cgit XSS \"vulnerability\" has no CVE?" "^Date:" nil nil "3" "2016030717:52:04" "[oss-security] Cgit XSS \"vulnerability\" has no CVE?" (number mark "        Jason@zx2c4. Mar  7    5/304   " thread-indent "\"Re: [oss-security] Cgit XSS \"vulnerability\" has no CVE?\"\n") "<20160305174103.GE6474@more-magic.net>" ("<20160305174103.GE6474@more-magic.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17523 invoked by uid 550); 7 Mar 2016 17:52:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17502 invoked from network); 7 Mar 2016 17:52:18 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:in-reply-to:references:date:message-id:subject:from:to
	:content-type; s=mail; bh=vSk9uIudI7oeW+NAQXhR0w53IvE=; b=jYQXwn
	rid+y4iu/46Jjhz2b3QAgT8vh9T0MKeR0U2QgOpBzgS5ZxKYT8FkkBmc7ldUtbfB
	a+yUODv72c3/8eyy0Ktzyq5/Q5CBYhb1jNq6N3WCmrEjEudE++L+uw1u6yXwgjQN
	i+2rHaRJNxsK+kRGhFL3zB+LpbYVtDuA8lWH4vrVsPhO0uaSGV+pLv+KEK5eFguM
	sScvRpvecSVO9tU0tAynS77ltqOftV4P4q0a6S5/SZ1Slz2+l601rqifyo1Wo8Wn
	i53fy1Hwtqnr2MHl0iezWlXMiicAOZB1wzKD4WX23vL73tAAmqd4eevObW6g73Tl
	eIO26zAFdnNknODQ==
X-Gm-Message-State: AD7BkJLZzrym16dQsc1MftqpX31qqlvvs7awoBAYjSObkOQ5gfNpU3fqETuP4V1Zc0/E5lZyus4Uj+yffIve3g==
MIME-Version: 1.0
X-Received: by 10.194.120.229 with SMTP id lf5mr26636753wjb.151.1457373124434;
 Mon, 07 Mar 2016 09:52:04 -0800 (PST)
In-Reply-To: <20160305174103.GE6474@more-magic.net>
References: <20160305174103.GE6474@more-magic.net>
X-Gmail-Original-Message-ID: <CAHmME9q6vctff8ZAyL-Ats_DMPKi=aazUBWX86fdKNNH5c7OfQ@mail.gmail.com>
Message-ID: <CAHmME9q6vctff8ZAyL-Ats_DMPKi=aazUBWX86fdKNNH5c7OfQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 7 Mar 2016 18:52:04 +0100
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Cgit XSS "vulnerability" has no CVE?
To: oss-security <oss-security@lists.openwall.com>

At the moment, none of those example filters are XSS-safe. I think
I'll likely rewrite them for the next version to use a framework for
that. But there's never been any guarantee for those filters, and
they've never been provided as anything but potential example filters
for people to tweak and change.
