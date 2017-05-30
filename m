X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2663" "Tuesday" "30" "May" "2017" "12:09:20" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<1496160560.6997.1.camel@gmail.com>" "62" "Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" "^Cc:" nil nil "5" "2017053016:09:20" "[oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" (number mark "        danielmicay@ May 30   62/2663  " thread-indent "\"Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function\"\n") "<CANO=Ty2tYv6KAjgrN3fL_YisPSMHQqpSWagEwA+T2Rz15-wGDQ@mail.gmail.com>" ("<EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>" "<20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>" "<d522fd07-7916-48a4-270c-933ffacddb98@redhat.com>" "<CA+DvKQ+TfTcK79YgeMZorvpG38HP8zAeB=gioL6xUVDPyn7Ghg@mail.gmail.com>" "<CANO=Ty2tYv6KAjgrN3fL_YisPSMHQqpSWagEwA+T2Rz15-wGDQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7944 invoked by uid 550); 30 May 2017 16:09:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7911 invoked from network); 30 May 2017 16:09:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=V//4MDTg8uDlurldCocOUg6jcg2CJV0K0GiRnqJf4gM=;
        b=IdWl/GeJvasu1uONkjpNsmdEHD59Gk37OTSw6AGN5PynwoKTfh2vn4v+ejTzOqDXIW
         dlDDnz5DaVKx/sNQUClNRRbEg0ra2gA8iKcxlKG5gZOhyR/dmn9RgY8sICtvhWeBEzrk
         +RNSTVbfL3PWvF0S/PBxvEE5ooM/p8DtDCrv9cE6mJQ4g0WwT6uhpF/x4EZlVmTE3Lkc
         bVZDto5qFZ7Dwdx3+rMHEA52aCzQy4mrn7/NaZYu/f5pKDbs66F9c7r5r6xVNXjlz+VT
         gQ9MRrY4M7aceA40pKbiaZK2pwcjwyh4QrIL2UiyjxVPabYYTTw5H9n36E3C6cfETgJV
         0xog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=V//4MDTg8uDlurldCocOUg6jcg2CJV0K0GiRnqJf4gM=;
        b=bgivJvwZMXbuZFoj901jvin7LqFc6KgfHbX+kOFxufx+C0qt/fAou5LIMuQYR865ro
         odkKxB9WrHB/z4YbsAap5c+Re0yFx1hsC0UjEAn9OxqvSm237BjEj0LzmtiMm6iN72yf
         X+jgatXKSJquhaBvxkVRZBb/vcAxTroAjXkbSiXIupD+YRlLzH6Bmw9gRpJYLLBvQ9dp
         ewFZc5AdNxi1XkxlYUjxPilSiBj6wz6OIMexpQV/vXgPUCItgI94eWgLwCB8RXQw8TOS
         Dp6CczIyo8KUMKH84S7pP9hBVr7SihDr8fW1pASOP1clDgSQoloHXmXvPi+bxeoSKE7d
         pJGg==
X-Gm-Message-State: AODbwcCrVGv6d5waAsF6MWeHOe2WOhp1ovpCblY7Ks6U0iBBu0IN/kz+
	0y2MRynrHgDqJwkXA00=
X-Received: by 10.107.164.231 with SMTP id d100mr17386024ioj.124.1496160561634;
        Tue, 30 May 2017 09:09:21 -0700 (PDT)
Message-ID: <1496160560.6997.1.camel@gmail.com>
In-Reply-To: <CANO=Ty2tYv6KAjgrN3fL_YisPSMHQqpSWagEwA+T2Rz15-wGDQ@mail.gmail.com>
References: <EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>
	 <20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>
	 <d522fd07-7916-48a4-270c-933ffacddb98@redhat.com>
	 <CA+DvKQ+TfTcK79YgeMZorvpG38HP8zAeB=gioL6xUVDPyn7Ghg@mail.gmail.com>
	 <CANO=Ty2tYv6KAjgrN3fL_YisPSMHQqpSWagEwA+T2Rz15-wGDQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.24.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: "Designer, Solar" <solar@openwall.com>
Date: Tue, 30 May 2017 12:09:20 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: stack buffer overflow with
 controlled payload in get_options() function
To: oss-security@lists.openwall.com

On Tue, 2017-05-30 at 09:36 -0600, Kurt Seifried wrote:
> On Tue, May 30, 2017 at 9:20 AM, Daniel Micay <danielmicay@gmail.com>
> wrote:
> 
> > That's not what secure/verified boot means to everyone else, and
> > there's nothing in mainline with those properties. To everyone else,
> > it's not an arbitrary bureaucratic/marketing feature. It's
> > verification of the whole base OS... i.e. Android, Android Things
> > (Brillo), ChromeOS, iOS and sane embedded Linux systems. Likely
> > Windows on mobile devices too, and I really doubt that Microsoft
> > doesn't plan on verifying the userspace OS if they don't already.
> > 
> 
> Red Hat is only associated with this in so far as I happen to work for
> Red
> Hat and I typically do the CVE assignments on the distros@ list (where
> this
> issue was initially reported).

Linux isn't impacted in a security-relevant way by these bugs. You're
claiming that some downstream code is implemented in a way that impacts
security, but you can't explain how it compromises a meaningful security
boundary.

> > Anyway, good luck with meaningless Red Hat security theatre. These
> > "vulnerabilities" are just reinforcing the view that security people
> > are foolish. There isn't disagreement that it's a meaningless
> > feature
> > with this level of incompleteness and yet a CVE is assigned for it?
> > Okay then...
> > 
> 
> I suggest you take this issue up with MITRE/CVE Board (disclaimer: I'm
> also
> on the CVE Board), they control CVE and the definitions of what is CVE
> worthy, and in this case it largely falls under the
> "advertised/implied
> security feature doesn't work as such". This is unlikely to change as
> it's
> well established and has been used for over a decade.

Nothing in Linux claims to work the way you're talking about. You've
only brought up an incomplete implementation of verified boot based on a
fork of the Linux kernel. It should be filed against that fork, but it
really doesn't make any sense to have a CVE for a non-security feature
being broken.

> > Sorry for thinking that this should be about something more than
> > padding CVs and marketing materials.
> > 
> 
> I suggest then you take this up with the original researcher if you're
> worried about people padding their CVs. This discussion isn't
> productive/helpful and I suggest you take it off list.

I'm not just concerned about people padding their CVs, I'm concerned
about vendors marketing incomplete snake oil as an implementation of
security features that actually have a meaning and then turning it into
nonsense like this.

I suggest taking discussions about non-security bugs off list. It's not
on topic here.
