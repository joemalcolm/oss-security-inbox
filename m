X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1261" "Sunday" "21" "July" "2019" "14:04:19" "-0700" "Linus Torvalds" "torvalds@linux-foundation.org" "<CAHk-=whRsN13=0Ey1Db3+5k4ij5arawVArG7Pu2MMoVrONNYzg@mail.gmail.com>" "34" "[oss-security] Re: stack buffer overflow in fbdev" "^Cc:" nil nil "7" "2019072121:04:19" "[oss-security] Re: stack buffer overflow in fbdev" (number mark "U       torvalds@lin Jul 21   34/1261  " thread-indent "\"[oss-security] Re: stack buffer overflow in fbdev\"\n") "<20190721200904.GR15868@phenom.ffwll.local>" ("<20190719140343.GA12952@thinkstation>" "<CAHk-=wiZpdb=PzvJd8EbvS43F9=oy_ou2r7LRHrFyqqpE3vnjQ@mail.gmail.com>" "<20190721200904.GR15868@phenom.ffwll.local>") nil nil nil nil nil nil nil "[oss-security] Re: stack buffer overflow in fbdev" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7626 invoked by uid 550); 22 Jul 2019 09:15:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13381 invoked from network); 21 Jul 2019 21:04:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0jH2LqdRiXRT86XPG4JmOkb5wG7+krcsZbwcNmXogRs=;
        b=bDCiFbBpYXMHtoIwq1wo3MkPO85faebYOJbXzwPMdPl9gTQNLK7NL3Wopzn2IW1tmf
         Fs5hSISDguFs/OY//Vb/3jczTdAdhEjl+2yuBP6f27VOvn969WbVXScaP3yBcZNNy6/9
         GdgcHb6PUkjwrGXeO1/cIQf+zkeFlu4IrnHzc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0jH2LqdRiXRT86XPG4JmOkb5wG7+krcsZbwcNmXogRs=;
        b=LZsBFGnjianEtAPeYhVQFYYOdGxAq3Fen8FgaalmVxmkd/JhdAeptpXRVX12AJLDn9
         7AElOsyqSPRsrc23AbMMCavfGWAHU9SISiHAZd2zY/NXhhk76X/7eLf7LBiHuDBmop+O
         U3lslbN6T3ztauPQ6ukXWfF+seJZ2PyIHbsbCX3rSd4NZT2nndk8RxqTC2UMfRetncJ/
         rcB+5n9ibcpV+2RdLkKeNTE58+sLFeydQOaKUdMivdYrrIn1qDozugtfb1cFOY3sh7E2
         kZOFhM+ke03tPaMaH8dsyjElf9Ds6v0CrobCTrgrdSIHI/Hs244oMbbNRcRPUSjf7iCq
         K6pQ==
X-Gm-Message-State: APjAAAXXmLCUli5RnngSEIAkQK6LRkP+X667EQieyMU2Ep9spmaY1iIc
	Ce9ci9griJSuWJ4UL3T1W0v82fQt5E8=
X-Google-Smtp-Source: APXvYqzqDBxTxeADbjYgC0H2Nk1BDT/rWIhpyYAlCT4p9RoPr4v27yjdrgMwRSep7LjDXYEkaPsmQA==
X-Received: by 2002:a2e:b048:: with SMTP id d8mr33033889ljl.118.1563743076402;
        Sun, 21 Jul 2019 14:04:36 -0700 (PDT)
X-Received: by 2002:a2e:9bc6:: with SMTP id w6mr35323756ljj.156.1563743075344;
 Sun, 21 Jul 2019 14:04:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190719140343.GA12952@thinkstation> <CAHk-=wiZpdb=PzvJd8EbvS43F9=oy_ou2r7LRHrFyqqpE3vnjQ@mail.gmail.com>
 <20190721200904.GR15868@phenom.ffwll.local>
In-Reply-To: <20190721200904.GR15868@phenom.ffwll.local>
X-Gmail-Original-Message-ID: <CAHk-=whRsN13=0Ey1Db3+5k4ij5arawVArG7Pu2MMoVrONNYzg@mail.gmail.com>
Message-ID: <CAHk-=whRsN13=0Ey1Db3+5k4ij5arawVArG7Pu2MMoVrONNYzg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Tavis Ormandy <taviso@gmail.com>, Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, 
	Daniel Vetter <daniel.vetter@ffwll.ch>, oss-security@lists.openwall.com
Date: Sun, 21 Jul 2019 14:04:19 -0700
From: Linus Torvalds <torvalds@linux-foundation.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: stack buffer overflow in fbdev
To: Daniel Vetter <daniel@ffwll.ch>

On Sun, Jul 21, 2019 at 1:09 PM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> PS: git log -G disappoints by not using all the cores I have here ..

Yeah, "git grep" is threaded (but if you want more than 8 threads you
need to configure it). But "-G" is not.

Part of it is that "-G" is actually very very different from grep.
"grep" looks at all files, and is threaded over the number of files.

"-G" looks at each file diff pair, does a diff of them, and then does
a grep to see if the pattern is in the diff.

And usually the number of file diff pairs is fairly small, and it
would be non-trivial to parallelize it.

I guess git could parallelize over many commits, but it doesn't.

Side note: "-S" is usually faster than "-G". It skips the "create
diff" part, and instead just counts the number of occurrences of the
string in the diffpairs, and shows the end result is the number is
different. Odd semantics, but very useful exactly for the "when did
this appear or disappear" kind of thing.

So "git log -G fb_edid_add_monspecs" is indeed very slow.

If you limit the space that you grep over, you can speed things up
enormously. So something like

        git log -S fb_edid_add_monspecs drivers/video/fbdev/

isn't too horrendous.

                   Linus
