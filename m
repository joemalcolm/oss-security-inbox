X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2012" "Tuesday" "16" "June" "2015" "00:49:31" "-0400" "Michael Gilbert" "mgilbert@debian.org" "<CANTw=MOheytdHA7MijZ242ENxSnUJX-5qr+4iAV4McwjKydb+w@mail.gmail.com>" "47" "[oss-security] Re: Bug#786909: chromium: unconditionally downloads binary blob" nil nil nil "6" "2015061604:49:31" "[oss-security] Re: Bug#786909: chromium: unconditionally downloads binary blob" (number mark "        mgilbert@deb Jun 16   47/2012  " thread-indent "\"[oss-security] Re: Bug#786909: chromium: unconditionally downloads binary blob\"\n") "<1434424604.6233.18.camel@scientia.net>" ("<1434424604.6233.18.camel@scientia.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16374 invoked by uid 550); 16 Jun 2015 04:50:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16343 invoked from network); 16 Jun 2015 04:50:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc:content-type;
        bh=e56NsulPfjTWz19vppe0VIBmjCcVZmHZB2t6CMqsS8I=;
        b=WvdHgvteHXBTvFTBY/KrI+um3zKkFYKRh6HZat+eTkCA7bci1DqJlPZWBspJAWewSr
         MoCSfuKpw7Iq7MNng/Sd4aU/FW8hjXubekWLVDtVtnoXjNXCFSP2J51w/roypCTvZNNr
         lfJLesGFiIgCASEZ4jxShXiFU+YOuFBtf4VaFtCGKz5McgtDr1FchFAay7Jl/1dEXd3W
         4Fy0Pc+oSsajjhON1goVQmkd42LiEfciXyG446pwT6aPQXdgO5GjtWbn0Pinl/3idQXx
         Id30DwnaN1vOHuGUjOpclVbFXL/ctaE06m1QlIibh626ifyJsCNEyiUc7u5tQ4ruNYcy
         2ulw==
X-Received: by 10.66.249.101 with SMTP id yt5mr54725861pac.116.1434430191492;
 Mon, 15 Jun 2015 21:49:51 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1434424604.6233.18.camel@scientia.net>
References: <1434424604.6233.18.camel@scientia.net>
X-Google-Sender-Auth: 1bGvIYQ7S5XyF-cCQXrj_M-E28o
Message-ID: <CANTw=MOheytdHA7MijZ242ENxSnUJX-5qr+4iAV4McwjKydb+w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: oss-security@lists.openwall.com
Date: Tue, 16 Jun 2015 00:49:31 -0400
From: Michael Gilbert <mgilbert@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: michael.s.gilbert@gmail.com
Subject: [oss-security] Re: Bug#786909: chromium: unconditionally downloads binary blob
To: Christoph Anton Mitterer <calestyo@scientia.net>, 786909@bugs.debian.org

On Mon, Jun 15, 2015 at 11:16 PM, Christoph Anton Mitterer wrote:
> Shouldn't we see a DSA following this incident?
>
> Since no one really know which binaries have been downloaded there and
> what they actually do, and since it cannot be excluded that it was
> actually executed, such systems are basically to be considered
> compromised.
>
> Quite a deal of people choose open source just to prevent that - get
> untrustworthy / unverifiable code run on their systems - failed.
>
>
> And to be quite honest, I seriously consider the good faith of an such
> upstream which does these kinds of things and wonder whether it can be
> considered trustworthy enough to be part of Debian or whether it should
> be banned from it.
> More or less silently bundling proprietary code with open source
> software (especially but not only when enabled per default) can already
> be considered quite bad behaviour.
>
> But basically secretly downloading it leads to the question of possible
> malicious intent (and everyone knows that Google&Co. do voluntarily
> and/or forcibly cooperate with NSA and friends).
> And I guess no one can prove that this blob didn't contain any rootkit,
> and even if - the rootkit'ed version may have been just distributed to
> certain people.
> The downloading makes it more or less impossible for the admin/user and
> especially for our maintainers to notice what's happening here
> (otherwise they'd need audit every line of code for any such
> occasions).
>
>
> And even if the blob wasn't evil: while I haven't looked at the code, I
> wouldn't even be surprised if the downloading itself is done
> insecurely.
>
>
> Worse, chromium isn't the only such rootkit-downloader,... this happens
> - to my taste - far to often in recent times,.. e.g. FF which secretly
> downloaded the OpenH264 blob.

Barring the obtusely incorrect rootkit miscategorization, oss-sec is a
far better venue for discussion since Debian is not the only
distribution that includes chromium 43 .

Best wishes,
Mike
