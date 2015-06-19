X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3416" "Thursday" "18" "June" "2015" "20:19:02" "-0400" "Michael Gilbert" "mgilbert@debian.org" "<CANTw=MPhYqnVgYghW2Z4EqOnoYKCJBXaiH+76czz294DAbDVhg@mail.gmail.com>" "77" "[oss-security] Re: Bug#786909: chromium: unconditionally downloads binary blob" nil nil nil "6" "2015061900:19:02" "[oss-security] Re: Bug#786909: chromium: unconditionally downloads binary blob" (number mark "        mgilbert@deb Jun 18   77/3416  " thread-indent "\"[oss-security] Re: Bug#786909: chromium: unconditionally downloads binary blob\"\n") "<1434460506.5072.5.camel@scientia.net>" ("<1434424604.6233.18.camel@scientia.net>" "<CANTw=MOheytdHA7MijZ242ENxSnUJX-5qr+4iAV4McwjKydb+w@mail.gmail.com>" "<1434460506.5072.5.camel@scientia.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32582 invoked by uid 550); 19 Jun 2015 00:19:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32538 invoked from network); 19 Jun 2015 00:19:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc:content-type;
        bh=PzWCmr/4V2USlzBRo+T4PuzrtB6RH+mQK/xqtK11cP4=;
        b=Zh5qqqfoXBI+zF1V5Gwx045kP/cKyXlm96QPKJwHTBGYqZPfJkt7LgWkvMknll8R7d
         sgcDEWJWL+SBno0gVaDWE/PBQEoe14OtLlD7c7oBRersby737y6k3hp6GhlRfnATJeIw
         0ddwkKPB1ZZle/I70/uKGWTqg5VWUdffO+vq1zPWKvWPykIzwaP1tvyb69LhWC/DmXFl
         6WxNiEdKYSoJ+kn/xc5CMnlmm5MvakzLOlzAbtWBE62Hr1bex2Zml6WiZCyGoK1hX+cn
         beQBP1l06M6ykQTEamiVnNHVbjXP8dDhBviGl1U3TwtdnTeb0ky7jxKmgR8Ino0yWZn3
         fsqQ==
X-Received: by 10.68.244.73 with SMTP id xe9mr25839898pbc.98.1434673163172;
 Thu, 18 Jun 2015 17:19:23 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1434460506.5072.5.camel@scientia.net>
References: <1434424604.6233.18.camel@scientia.net> <CANTw=MOheytdHA7MijZ242ENxSnUJX-5qr+4iAV4McwjKydb+w@mail.gmail.com>
 <1434460506.5072.5.camel@scientia.net>
X-Google-Sender-Auth: PcH3Sa1qt3M-SEdeUkzY_ku0t7w
Message-ID: <CANTw=MPhYqnVgYghW2Z4EqOnoYKCJBXaiH+76czz294DAbDVhg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: 786909@bugs.debian.org, oss-security@lists.openwall.com
Date: Thu, 18 Jun 2015 20:19:02 -0400
From: Michael Gilbert <mgilbert@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: michael.s.gilbert@gmail.com
Subject: [oss-security] Re: Bug#786909: chromium: unconditionally downloads binary blob
To: Christoph Anton Mitterer <calestyo@scientia.net>

Since this made it to LWN [0] and Y Combinator [1] with an incredible
amount of misinformation, let's attempt a (hopefully) non-hyped
conversation about this, which unfortunately didn't happen a few days
ago.

On Tue, Jun 16, 2015 at 9:15 AM, Christoph Anton Mitterer wrote:
> On Tue, 2015-06-16 at 00:49 -0400, Michael Gilbert wrote:
>> Barring the obtusely incorrect rootkit miscategorization
>
> Well, as I've said,.. no one can really tell what it is, since it's a
> blob,... and even if one would assume that someone could correctly
> reverse engineer it, or reproducibly build it from public sources,
> there's absolutely no guarantee that malicious software might have been
> just distributed to selected people.

Except that the actual contents of the downloaded files in many ways
do not actually matter.  Those files are nacl executables, which are
sandboxed in any nacl-enabled chromium, so barring a sandbox escape
included in the files, this is functionally the same as visiting any
nacl website (less the fact that hotword automatically gets microphone
permission, which itself is worth independent critique).

Additionally, the Debian packages are intentionally built with nacl
disabled (in fact not built at all).  So, at least on Debian, even if
the downloaded files were in fact malicious, without a nacl
interpreter present, there is absolutely no way to trigger the
badness.

>> oss-sec is a
>> far better venue for discussion since Debian is not the only
>> distribution that includes chromium 43 .
>
> I don't see how that would practically ever change something at the
> Debian level; this seems rather like simply pushing away and unpleasant
> issue.

Maybe now it's clear that a meaningful conversation at the time would
have preempted the ensuing misinformation campaign.

> And just because all other distros ship software which injects possibly
> malicious blobs, we don't have to do the same.

I simply do not follow the logic leading to this conclusion.  How does
engaging in discussion lead to any specific problem being ignored
exactly?

Anyway, if some incredibly basic homework had been done, you could
have convinced yourself of the non-issue nature of this problem,
rather than engaging in unfounded speculation.

> Anyway, I haven't said that banning such software from Debian would be
> the only solution... but at least these incidents come far too frequent
> recently, so apparently something needs to be done at Debian level to
> pro-actively prevent future cases/compromises like this.

That is exactly what Debian unstable is for, and in many ways it
worked as intended, except for the special snowflake that is chromium.
Since major chromium versions get uploaded to both unstable and stable
to fix security issues, problems introduced into unstable also
unfortunately get introduced to stable.

> And there's still no single sign of properly visible announcements to
> user what might have happened here. :(

Well, it is out there now [0,1], unfortunately with a huge amount of
misinformation.

Anyway the Debian security tracker is tracking this [2].  As stated
there, it will be fixed along with the next incoming round of chromium
security issues.  It is absolutely not worth fixing on its own.

Best wishes,
Mike

[0] https://lwn.net/Articles/648392
[1] https://news.ycombinator.com/item?id=9724409
[2] https://security-tracker.debian.org/tracker/TEMP-0000000-A21526
