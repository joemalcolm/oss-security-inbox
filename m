X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4706" "Tuesday" "23" "July" "2019" "09:25:25" "+0200" "Daniel Vetter" "daniel@ffwll.ch" "<CAKMK7uF5KeJkO4dy7DxJGxMO6T-0RwDXCEEyQxd2RFZvnn3kBw@mail.gmail.com>" "123" "[oss-security] Re: stack buffer overflow in fbdev" nil nil nil "7" "2019072307:25:25" "[oss-security] Re: stack buffer overflow in fbdev" (number mark "U       daniel@ffwll Jul 23  123/4706  " thread-indent "\"[oss-security] Re: stack buffer overflow in fbdev\"\n") "<ef549144-6992-d1fe-8f07-47757cd4ad85@samsung.com>" ("<20190719140343.GA12952@thinkstation>" "<CAHk-=wiZpdb=PzvJd8EbvS43F9=oy_ou2r7LRHrFyqqpE3vnjQ@mail.gmail.com>" "<CGME20190721200912epcas1p34fe747875c1d2a16340ceb173b7c8e68@epcas1p3.samsung.com>" "<20190721200904.GR15868@phenom.ffwll.local>" "<ef549144-6992-d1fe-8f07-47757cd4ad85@samsung.com>") nil nil nil nil nil nil nil "[oss-security] Re: stack buffer overflow in fbdev" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16249 invoked by uid 550); 23 Jul 2019 12:27:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28141 invoked from network); 23 Jul 2019 07:25:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Vkmd034xtviTK5VXQUVkCS6pU0931p7mmsYl5NW4oOw=;
        b=iprjVcWLsRZ50Acl/YgVDb67v0EulNtW6HI4kVKedRfbyCyQIJdP63rNOMyg7oDLFB
         tuHb+zzkfK5xsjzkAc2eu/R5NLF5m718XgNsiaRaSy24MqXx2jp3y5cY8oGR/6IgzRrR
         Nku9X5K7IwnjcvFFJG6xYWewzikn+OL6ULHgA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Vkmd034xtviTK5VXQUVkCS6pU0931p7mmsYl5NW4oOw=;
        b=SLK5bSb8UHokSnSYEkLYRVFo00vISus4xC6ULyW4BTwpeTxMlHjh7qQW0+hYUJBinv
         K2/Rbj3axVJq71wB8q+LuT/GcHxNaZRAWlnV9J1wzuS0t/fv+X7KQqrDqPS/vbBcr7R6
         HvWennb0OaYGo9yy5KsmDZE6ND0VfsT6f6g5XnF/6I2qdB/lZIe6f2zIm42clC4loVRx
         WIFA6uIUdpNb5O6cO1xKXW9CQG47HWMdUfc+0X67ODwNU4DGOAaJFR0pBEIzFBlBFrs/
         jc+oJrWt1Zc5nGbvoaBaYHRlBlm6K8QDcDx53hZn2fuJTu2x/4lPDkO1QsaEZ0IZ7zeY
         Vndg==
X-Gm-Message-State: APjAAAUNZQhIp2OFZtWlOsY+VJN3J7Yistuz+viDvsVxW2g7030QcPm6
	YfJPL6jsYHsEN66kGS7DwbrsC0HgDkG6VuzYoaM=
X-Google-Smtp-Source: APXvYqy6mIxXKBiBYJR92dL729wsyC3jgVxFKY50lQBz7UgFtiMzJpTYSLf3XOrxfDPZZqdmgRb5bXe54i9U7UNFT2I=
X-Received: by 2002:aca:b2d5:: with SMTP id b204mr32687037oif.101.1563866736562;
 Tue, 23 Jul 2019 00:25:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190719140343.GA12952@thinkstation> <CAHk-=wiZpdb=PzvJd8EbvS43F9=oy_ou2r7LRHrFyqqpE3vnjQ@mail.gmail.com>
 <CGME20190721200912epcas1p34fe747875c1d2a16340ceb173b7c8e68@epcas1p3.samsung.com>
 <20190721200904.GR15868@phenom.ffwll.local> <ef549144-6992-d1fe-8f07-47757cd4ad85@samsung.com>
In-Reply-To: <ef549144-6992-d1fe-8f07-47757cd4ad85@samsung.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 23 Jul 2019 09:25:25 +0200
Message-ID: <CAKMK7uF5KeJkO4dy7DxJGxMO6T-0RwDXCEEyQxd2RFZvnn3kBw@mail.gmail.com>
To: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Tavis Ormandy <taviso@gmail.com>, 
	oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: stack buffer overflow in fbdev

On Mon, Jul 22, 2019 at 4:05 PM Bartlomiej Zolnierkiewicz
<b.zolnierkie@samsung.com> wrote:
>
>
> On 7/21/19 10:09 PM, Daniel Vetter wrote:
> > On Sun, Jul 21, 2019 at 11:03:01AM -0700, Linus Torvalds wrote:
> >> Completely untested patch attached. There are probably better ways to do this.
> >>
> >> Adding the proper people to the cc, and quoting Tavis' email in its entirety.
> >>
> >> Daniel - you got added despite not being explicitly listed as
> >> maintainer because you've touched fbdev/core/ more than most lately,
> >> plus you know edid anyway. As such: "tag, you're it, sucker".
> >
> > Yeah I also realized with regrets that get_maintainers thinks I'm
> > responsible for fbdev core :-/
>
> Well, I've been thinking lately about officially adding you as
> a co-maintainer to MAINTAINERS file. 8)
>
> The patch documenting (already agreed) moving of fbdev handling to
> drm-misc tree seems like a perfect occasion..
>
> Ack?

If we pull fbdev into drm then Dave&me (and drm-misc maintainers) will
be the fallback anyway. And I kinda prefer not to be explicitly
listed, that just leads to lots of people gating on my ack
unecessarily and creates a bottleneck. Plus intentionally leaving gaps
motivates others to step up and help out.

Hence I prefer not to get listed, but I guess if you absolutely want
to add me that's ok too.
-Daniel

>
> Best regards,
> --
> Bartlomiej Zolnierkiewicz
> Samsung R&D Institute Poland
> Samsung Electronics
>
> > Wrt the bug: I had a multi-paragraph explanation here about how fbmon.c
> > edid parser is only used by old crap drivers, and not when you have a
> > drm-kms driver providing the fbdev emulation (like pretty much every
> > modern system). Also that the version in fbmon.c seriously lacks compared
> > to the drm_edid.c one.
> >
> > And then I ran grep and noticed it's dead code. The last user disappeared
> > in 34280340b1dc ("fbdev: Remove unused SH-Mobile HDMI driver") from 2015.
> > I'll type a patch for 5.4 to remove this outright.
> >
> > Cheers, Daniel
> >
> > PS: git log -G disappoints by not using all the cores I have here ..
> >
> >>
> >>                 Linus
> >>
> >> On Sat, Jul 20, 2019 at 5:35 PM Tavis Ormandy <taviso@gmail.com> wrote:
> >>>
> >>> Hello, during a conversation on twitter we noticed a stack buffer
> >>> overflow in fbdev with malicious edid data:
> >>>
> >>> https://github.com/torvalds/linux/blob/22051d9c4a57d3b4a8b5a7407efc80c71c7bfb16/drivers/video/fbdev/core/fbmon.c#L1033
> >>>
> >>> There is enough space to have 52 1-byte length values, which makes svd_n
> >>> 52, then make the final value length 0x1f (the maximum), which makes
> >>> svd_n 83 and overflows the 64 byte stack buffer svd[] with controlled
> >>> data.
> >>>
> >>> This requires a malicious monitor / projector / etc, so pretty low impact.
> >>>
> >>> I pulled out the code to make a demo (I removed the checksum, but it
> >>> doesnt prevent the bug):
> >>>
> >>> https://gist.github.com/taviso/923776e633cb8fb1ab847cce761a0f10
> >>>
> >>> This was discovered by Nico Waisman of Semmle.
> >>>
> >>> Tavis.
> >>>
> >>> --
> >>> -------------------------------------
> >>> taviso@sdf.lonestar.org | finger me for my pgp key.
> >>> -------------------------------------------------------
> >
> >>  drivers/video/fbdev/core/fbmon.c | 8 +++++++-
> >>  1 file changed, 7 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/video/fbdev/core/fbmon.c b/drivers/video/fbdev/core/fbmon.c
> >> index 3558a70a6664..2ab1fd6e33b7 100644
> >> --- a/drivers/video/fbdev/core/fbmon.c
> >> +++ b/drivers/video/fbdev/core/fbmon.c
> >> @@ -1030,7 +1030,9 @@ void fb_edid_add_monspecs(unsigned char *edid, struct fb_monspecs *specs)
> >>              if (type == 2) {
> >>                      for (i = pos; i < pos + len; i++) {
> >>                              u8 idx = edid[pos + i] & 0x7f;
> >> -                            svd[svd_n++] = idx;
> >> +                            if (svd_n < sizeof(svd))
> >> +                                    svd[svd_n] = idx;
> >> +                            svd_n++;
> >>                              pr_debug("N%sative mode #%d\n",
> >>                                       edid[pos + i] & 0x80 ? "" : "on-n", idx);
> >>                      }
> >> @@ -1044,6 +1046,10 @@ void fb_edid_add_monspecs(unsigned char *edid, struct fb_monspecs *specs)
> >>              pos += len + 1;
> >>      }
> >>
> >> +    /* Evil monitor? */
> >> +    if (WARN_ON_ONCE(svd_n > sizeof(svd)))
> >> +            return;
> >> +
> >>      block = edid + edid[2];
> >>
> >>      DPRINTK("  Extended Detailed Timings\n");



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
