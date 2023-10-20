Received: (qmail 27955 invoked by uid 550); 20 Oct 2023 13:04:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24287 invoked from network); 20 Oct 2023 01:58:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dgl-cx.20230601.gappssmtp.com; s=20230601; t=1697767113; x=1698371913; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5bXPthLNDN8OVQzPhx00cc55+e10YDGpg7O6ge60IKI=;
        b=W7XWSeUmlQO2aq9VKhJ8yBHUaeJ0JLA+R4qP94Y5jEHo/6/jP46YlsYfg7a7QkKrM9
         Pw5H4DSCVwM7sHvYMkWgDaRCdF1Qm7/n+Q8ih4C3uIdkiHkrgo1bqmPuFooYBWEIElD7
         0klybuneD8q5k9vPL0vKCNjJGllWk2rhnuPimK6H4p494rw5x+YkNLpSYwSXgjkrj9S4
         AaRDzRmSQtqQ/4h+1VlkNf/ySmGGVBkNi6gk2UATc1PSsNxirp+nzvAgtxtBZnGGBVTH
         ElKDyoQ0e99RLHeHDnlrsUTN1FJXv3we5La7cxptqD1yqMnJCERqgfvUAy/NZbIGLDgm
         JUOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697767113; x=1698371913;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5bXPthLNDN8OVQzPhx00cc55+e10YDGpg7O6ge60IKI=;
        b=XEf8BNbgb8nAQGC7kv1Vf7PgPXC7WnHYFBjUb+YP42WOmK34yTeR1UXpzaDgZ1C++C
         Zrx+j7vS6n2zhthKjz4ftYWKn/WH9CNaVlcJnaYvH2Ow5/w8ZLzBLlcjgMx57R9s5wIp
         MUwz8Erbix8+P/8d4NdfgNzPvMRGP4J4SallgZtak+0/oLWrDqdapVuacYwAGwfBRE2L
         zwpduEUAOIv3nX0IiT9KsFesk98qwuWoV33TsEM3erdZhY/HWVkniz0thTahmgtC07nX
         ltcuXaqaQlZCgNQewJY6K9Jbdf8Y5wU8c7C/bd9KsIVG+T1IJd3mahs3tQrNp/kxWxxn
         SA8w==
X-Gm-Message-State: AOJu0Yzb2yl2HdBPn2BUypvpvGJRSdMK1wfVhyCcBGbz0L9bUXwk8WxM
	qSkiIGelwfCV+AFh4x89/iM8pfDKV/vIMztU6xefFTNyWhqZtOpolW9bJg==
X-Google-Smtp-Source: AGHT+IFM1CTvEbAo8+BZOW0DbemjtvkhzV4ZFr4ufO6CdWIqrl8tTjqEhZel10DQqGWA3JBKfRQq46cGTGokPol+C9I=
X-Received: by 2002:a67:c184:0:b0:458:45c5:aaf6 with SMTP id
 h4-20020a67c184000000b0045845c5aaf6mr740593vsj.18.1697767112969; Thu, 19 Oct
 2023 18:58:32 -0700 (PDT)
MIME-Version: 1.0
References: <e5dc2cc159fa7e7f287e10482366011e.f0e92af0@rotted.prefixed>
 <bb8d7948-912c-0c96-6a7e-2f05a4cabfd0@tnetconsulting.net> <d85658c838a1338c829cee30fb9c344688a2a470.camel@sambull.org>
 <20231019165354.kkjoxdbedeodyfik@yuggoth.org> <7039466aa03ec8a90e1ce3a2ae983421.a13627b7@limousine.hussar>
In-Reply-To: <7039466aa03ec8a90e1ce3a2ae983421.a13627b7@limousine.hussar>
From: David Leadbeater <dgl@dgl.cx>
Date: Fri, 20 Oct 2023 12:58:21 +1100
Message-ID: <CAP9KPhDg3kpmsAyL74B5LuMmTq55pYoA+5LpJR0WkH0HO3Xw8g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] with firefox on X11, any page can pastejack you anytime

On Fri, 20 Oct 2023 at 09:55, Turistu <turistu@gmail.com> wrote:
[...]
> It pretty much **is** mitigated at that layer. If xterm itself weren't
> filtering out the ESC (ascii 0x1b) character in the pasted data, then
> the bracketed-paste feature of bash or zsh could've been easily bypassed
> by inserting a "\x1b[201~" escape (= end of pasted data) in the payload.
> (As already mentioned in the report too).

I haven't tested all terminal and shell combinations, but the
implementations of bracketed paste mode vary in their correctness,
some do not filter all non-whitespace control characters, so for
example you can add ^C into the exploit HTML:

writeXPrimary('\u0003;touch ~/LOL-' + Date.now() / 1000 +'\r')

Then you get a command being run with no interaction; this appears to
work with xterm (384) + fish for example.

> But there are a thousand more ways for an attacker to leverage that hole
> in Firefox. Many programs (including Firefox itself!) could be easily
> crashed by garbage data from the clipboard. Attacker-controlled data
> could find its way into shell scripts via `var=$(xsel)`, etc.

This isn't just limited to Firefox, one example is terminals that
support OSC 52 (clipboard write), a remote SSH session can be hijacked
and an attacker can inject OSC 52 into the stream in the background (I
looked into this as part of my terminal security research, see [1]).

As you point out there are many ways for untrusted data to end up on
the clipboard, the attack vector here is via the terminal so my
opinion is the terminal is what should protect against it. (Although I
think Firefox could help with some defense-in-depth here, shame they
don't want to.)

For example two terminals that get this right are:

- rxvt-unicode: The confirm-paste extension (loaded in the default
set) pops up a confirmation when pasting control characters (not just
newlines), "y" will strip controls, "p" will paste controls as is.
- Windows Terminal: Strips non-whitespace control characters, asks for
confirmation when pasting newlines, if bracketed paste mode is off.

David

[1]: https://dgl.cx/2023/09/ansi-terminal-security#xterm-osc-52-clipboard
