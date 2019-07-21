X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3294" "Sunday" "21" "July" "2019" "22:09:04" "+0200" "Daniel Vetter" "daniel@ffwll.ch" "<20190721200904.GR15868@phenom.ffwll.local>" "92" "[oss-security] Re: stack buffer overflow in fbdev" "^Cc:" nil nil "7" "2019072120:09:04" "[oss-security] Re: stack buffer overflow in fbdev" (number mark "        daniel@ffwll Jul 21   92/3294  " thread-indent "\"[oss-security] Re: stack buffer overflow in fbdev\"\n") "<CAHk-=wiZpdb=PzvJd8EbvS43F9=oy_ou2r7LRHrFyqqpE3vnjQ@mail.gmail.com>" ("<20190719140343.GA12952@thinkstation>" "<CAHk-=wiZpdb=PzvJd8EbvS43F9=oy_ou2r7LRHrFyqqpE3vnjQ@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: stack buffer overflow in fbdev" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14304 invoked by uid 550); 22 Jul 2019 09:16:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26084 invoked from network); 21 Jul 2019 20:09:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=5foxtxbqsJti8H9Gi7IXpIuKJrDsNH+xg9Tp8V74e/8=;
        b=UGswew0+D7ZBUoxnWlFxak5C08fPneEmC/5t1d/AUUz/LCCOYP2c13zXulwxX/qw0I
         NbXmuxLOKuXuLWdFK2ZjUudRjBXlgqzaCgU9MKffR7l+W9psbCK5m5ATJSg7t9Wa5xqh
         OgEvakD6StwCnqnhI4FlTSay3Y+waA3YuAsJ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=5foxtxbqsJti8H9Gi7IXpIuKJrDsNH+xg9Tp8V74e/8=;
        b=Q2sCGzjyb/ZrCfL4ZiZDlhvU+eaUoFkFqYCcfxQLbI2mfo+zvrOWbyJLM7mxWZuo24
         p1RctFWvVyfRiGTCg3B0kdMwBJOPvZb2uZuzfTKIeuTcGEza+7GZEK8LOOPwJP/DqGLc
         UEM3b9zFnVyC6NTajpjFIEVk82UHn54eAQdIYPUDERL+whskPQaQNexTQJ7jyTH2PjBB
         iDUuyulLrRAxBCR2QJabkGN2YI05D8fYEC+zoTTfp+bTUV5w8em2UpHHpDvxfcdKMuL8
         ooRPfIvMEMWQ98od52I/HAVYXNGa1AGPaj8nyftXBO1p8t0aizjbwPKxuQKD+G14Ufh9
         I7/Q==
X-Gm-Message-State: APjAAAVgaodsvKKPZFrcTdxftBWU8pNVUKNDxkhevLjDhQs+cxfhbAt1
	3o0KnPzl6G1ZbkSN7h136Ko=
X-Google-Smtp-Source: APXvYqxi0Xh7JfEypGO5srC8fBK+WAsZ6DJFjnfLadB+Gx6baEMeFPQdcrpu/YrwSdB8N4VUCzZpfg==
X-Received: by 2002:a17:906:6c19:: with SMTP id j25mr49115893ejr.21.1563739747340;
        Sun, 21 Jul 2019 13:09:07 -0700 (PDT)
Message-ID: <20190721200904.GR15868@phenom.ffwll.local>
References: <20190719140343.GA12952@thinkstation>
 <CAHk-=wiZpdb=PzvJd8EbvS43F9=oy_ou2r7LRHrFyqqpE3vnjQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHk-=wiZpdb=PzvJd8EbvS43F9=oy_ou2r7LRHrFyqqpE3vnjQ@mail.gmail.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: Tavis Ormandy <taviso@gmail.com>,
	Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	oss-security@lists.openwall.com
Date: Sun, 21 Jul 2019 22:09:04 +0200
From: Daniel Vetter <daniel@ffwll.ch>
Reply-To: oss-security@lists.openwall.com
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: [oss-security] Re: stack buffer overflow in fbdev
To: Linus Torvalds <torvalds@linux-foundation.org>

On Sun, Jul 21, 2019 at 11:03:01AM -0700, Linus Torvalds wrote:
> Completely untested patch attached. There are probably better ways to do this.
> 
> Adding the proper people to the cc, and quoting Tavis' email in its entirety.
> 
> Daniel - you got added despite not being explicitly listed as
> maintainer because you've touched fbdev/core/ more than most lately,
> plus you know edid anyway. As such: "tag, you're it, sucker".

Yeah I also realized with regrets that get_maintainers thinks I'm
responsible for fbdev core :-/

Wrt the bug: I had a multi-paragraph explanation here about how fbmon.c
edid parser is only used by old crap drivers, and not when you have a
drm-kms driver providing the fbdev emulation (like pretty much every
modern system). Also that the version in fbmon.c seriously lacks compared
to the drm_edid.c one.

And then I ran grep and noticed it's dead code. The last user disappeared
in 34280340b1dc ("fbdev: Remove unused SH-Mobile HDMI driver") from 2015.
I'll type a patch for 5.4 to remove this outright.

Cheers, Daniel

PS: git log -G disappoints by not using all the cores I have here ..

> 
>                 Linus
> 
> On Sat, Jul 20, 2019 at 5:35 PM Tavis Ormandy <taviso@gmail.com> wrote:
> >
> > Hello, during a conversation on twitter we noticed a stack buffer
> > overflow in fbdev with malicious edid data:
> >
> > https://github.com/torvalds/linux/blob/22051d9c4a57d3b4a8b5a7407efc80c71c7bfb16/drivers/video/fbdev/core/fbmon.c#L1033
> >
> > There is enough space to have 52 1-byte length values, which makes svd_n
> > 52, then make the final value length 0x1f (the maximum), which makes
> > svd_n 83 and overflows the 64 byte stack buffer svd[] with controlled
> > data.
> >
> > This requires a malicious monitor / projector / etc, so pretty low impact.
> >
> > I pulled out the code to make a demo (I removed the checksum, but it
> > doesnt prevent the bug):
> >
> > https://gist.github.com/taviso/923776e633cb8fb1ab847cce761a0f10
> >
> > This was discovered by Nico Waisman of Semmle.
> >
> > Tavis.
> >
> > --
> > -------------------------------------
> > taviso@sdf.lonestar.org | finger me for my pgp key.
> > -------------------------------------------------------

>  drivers/video/fbdev/core/fbmon.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/video/fbdev/core/fbmon.c b/drivers/video/fbdev/core/fbmon.c
> index 3558a70a6664..2ab1fd6e33b7 100644
> --- a/drivers/video/fbdev/core/fbmon.c
> +++ b/drivers/video/fbdev/core/fbmon.c
> @@ -1030,7 +1030,9 @@ void fb_edid_add_monspecs(unsigned char *edid, struct fb_monspecs *specs)
>  		if (type == 2) {
>  			for (i = pos; i < pos + len; i++) {
>  				u8 idx = edid[pos + i] & 0x7f;
> -				svd[svd_n++] = idx;
> +				if (svd_n < sizeof(svd))
> +					svd[svd_n] = idx;
> +				svd_n++;
>  				pr_debug("N%sative mode #%d\n",
>  					 edid[pos + i] & 0x80 ? "" : "on-n", idx);
>  			}
> @@ -1044,6 +1046,10 @@ void fb_edid_add_monspecs(unsigned char *edid, struct fb_monspecs *specs)
>  		pos += len + 1;
>  	}
>  
> +	/* Evil monitor? */
> +	if (WARN_ON_ONCE(svd_n > sizeof(svd)))
> +		return;
> +
>  	block = edid + edid[2];
>  
>  	DPRINTK("  Extended Detailed Timings\n");


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
