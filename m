X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1957" "Tuesday" "2" "May" "2017" "00:05:27" "+0200" "=?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?=" "robert@swiecki.net" "<CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>" "46" "Re: [oss-security] terminal emulators' processing of escape sequences" "^Date:" nil nil "5" "2017050122:05:27" "[oss-security] terminal emulators' processing of escape sequences" (number mark "        robert@swiec May  2   46/1957  " thread-indent "\"Re: [oss-security] terminal emulators' processing of escape sequences\"\n") "<CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>" ("<20170501164428.GA12322@openwall.com>" "<CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30078 invoked by uid 550); 1 May 2017 22:05:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30056 invoked from network); 1 May 2017 22:05:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=swiecki.net; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=TwlpB847eL0ikRqsQyeMPrq3JQkl04bE3PWo8PZNQA8=;
        b=OBG/6CK90CRt7Ki4f7bd96bIKasfWNll0ot/Q/cKjWF65MzQYRhUfiky9Y2aY0ins4
         Xo3LLrP8rnL7G4J26yHM+PUkfOdKG21FWz4GHQhOVDWxlZ9ZjqaftFw9cUXrWYD6lxBp
         IzVD/Fk2qjghY3Rb6VgLyP0IMso6019t4Isec=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=TwlpB847eL0ikRqsQyeMPrq3JQkl04bE3PWo8PZNQA8=;
        b=hBJST7XJQc0GbtCu4z1GsdM93IJf0+9sb2ctvZEJtuLVhxQCgsk/a11ume8rbUYd8h
         338qkgHWZcSK0C7mkVJTMYIBtZrBWBmrg85S/RsoTC5UtC6COB6qXIFD1DjEMaBWR2HP
         VoS0YWaOnMzDwm/4gCfAeSKR58OxfszYYyuA41T5OY8mSk4Dujxocc6retahRAIYbwK+
         Hr6yzcNEwdrSa8MvSewSK1bPFm/Ps0za++jDTCDFKiDPtfSsIrOaWvdj+Qo2vcGeMLMV
         620oHEW2nhrRfRFKv2sv+q0CcD58e33WX5DFYVBGTSmdSA80QskHpmnCx5NBQhRuZ5hm
         EfCA==
X-Gm-Message-State: AN3rC/4ys/WV43CQ/g5K7XytIlqb8L6MVe4pNcv0LFPGAadNU7VpI1QB
	ADQorvh4P5Skasop8vDg3E1m0W+h2W+JIQ8=
X-Received: by 10.98.70.76 with SMTP id t73mr28995546pfa.176.1493676327771;
 Mon, 01 May 2017 15:05:27 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>
References: <20170501164428.GA12322@openwall.com> <CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>
Message-ID: <CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 2 May 2017 00:05:27 +0200
From: =?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?= <robert@swiecki.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] terminal emulators' processing of escape sequences
To: oss-security@lists.openwall.com

2017-05-01 23:13 GMT+02:00 Michal Zalewski <lcamtuf@coredump.cx>:
>
> > Besides (mis)features, there may also be implementation bugs.
>
> It is perhaps worth noting that guided fuzzing has been used in this
> space with good results, too. For example, AFL was credited on at
> least the following in rxvt, tmux, screen, and mosh:
>
> http://lists.schmorp.de/pipermail/rxvt-unicode/2015q3/002155.html
> http://lists.schmorp.de/pipermail/rxvt-unicode/2015q3/002164.html
> https://savannah.gnu.org/bugs/?45715
> https://savannah.gnu.org/bugs/?45713
> https://savannah.gnu.org/bugs/?45714https://github.com/tmux/tmux/issues/92
> https://github.com/tmux/tmux/commit/3219e0314e3d1d39a57db330faa5693ce0264=
244
> https://github.com/mobile-shell/mosh/issues/667
>
> Especially if what's highlighted in this thread can be found with a
> simple script, I'm betting there's far more beneath the surface.
> Guided fuzzers have the advantage of being able to discover features
> that may be undocumented or hard to spot, so a more comprehensive dive
> into all the terminal emulators in use today would probably be quite
> fruitful

On a slightly different note; memory corruption/abort() problems might
end up as RCE with some effort, but what *is* RCE is ability to push
back characters into terminal's input buffer. There are some
well-known vectors, like setting title of the current terminal and
printing it back with ESC codes, and hopefully it's something that is
mitigated in all modern terminal emulator software packages for many
years now.

But, it's not something that can be discovered simply by waiting for
SEGV and similar signals. Hence, I'd like to encourage everyone
looking for bugs in terminal emulators to add some form of
instrumentation to their fuzz setups aimed at finding such problems
too.

A harmless example from rxvt - pushing back the new-line character:

$ echo -ne "\eGQ;"
;$ 0
bash: 0: command not found

--=20
Robert =C5=9Awi=C4=99cki
