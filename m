X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1572" "Wednesday" "11" "May" "2016" "11:41:41" "-0400" "Kangjie Lu" "kangjielu@gmail.com" "<CABEk9YyfmYsnNq+1w57fYUd96wVn7VzVSNjrUkpbKKHAb24O7Q@mail.gmail.com>" "51" "[oss-security] Re: CVE Request: alsa: kernel information leak vulnerability in Linux sound/core/timer" nil nil nil "5" "2016051115:41:41" "[oss-security] Re: CVE Request: alsa: kernel information leak vulnerability in Linux sound/core/timer" (number mark "U       kangjielu@gm May 11   51/1572  " thread-indent "\"[oss-security] Re: CVE Request: alsa: kernel information leak vulnerability in Linux sound/core/timer\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32345 invoked by uid 550); 11 May 2016 15:41:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32327 invoked from network); 11 May 2016 15:41:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:cc;
        bh=3J8BjSZ5G/hjW6zMFBTqnqLZ+OhKQtplz7jkG7gvj6w=;
        b=AuI6vo1cOlczrSi2owNiv/UzzQxtM6tAu1s/fPnT6wTmi/jcsGvL0lD82ZJ+Z/krjV
         H2/ZgYNeIfkWRXS3sBC4fIBsSTW9+lPWJD9kp+NoHODKLO6uTmgv+iSDjH8k8h7Bnq4J
         D3dp99X+7mRBot8ZGHk1vTsmkgdyp6foAixOTelFrqta3UiP3Y3r+R4V8nJKXGsoUZiG
         gTHNq00BqS9SR4Jlx9+5LzrysiR5tSkA3Xcycp5oHm0AwU1iJn3JCYmP38aoiPMTJ7xp
         40tnkfJZYQXkNiX2jVIvnex/G+rzjUvd6VPOptI4qrK3ultVq84t5WFOBylN4o+P+TUH
         buMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc;
        bh=3J8BjSZ5G/hjW6zMFBTqnqLZ+OhKQtplz7jkG7gvj6w=;
        b=H/kIQHCFXnDWFnFC6lF9GJzAEjq8CyfDpwm24pnCjwco1yqCIpJfMNX7Gr0hokejDf
         SSOIUUdowOjFgFJPOv0DiJ523bgXumX62nO7w2SkBlcoGem68Jzuie6TvRY3QmgOPM9w
         NFK4DAwxytIdAxdOmm5mAUZQIRPxUNRLCjFo0iRQqSQEmzEUaAl1yypaATKdwJUAFUdT
         EmqfzKEuRfswpD0Qzf3nls1Wa2YhiMG1hYJhNgf+t9al2GVTP1tberfRg5DVQkHc04G9
         abRH3Z+KOzhvZBRxEAZSEwZumPCcGRgC4Tlt3pLNWzZnI9ZFo/HlYBocZ6h5eobaAeKm
         CtnQ==
X-Gm-Message-State: AOPr4FXoo8R4aomyMTuziI+U5hxptX1vqUDu7WHJLzx+/6v3/QWnuExi2XzQHOiKtyfQg0Jtn71T4LIge9rmKQ==
MIME-Version: 1.0
X-Received: by 10.157.4.37 with SMTP id 34mr2262703otc.171.1462981301889; Wed,
 11 May 2016 08:41:41 -0700 (PDT)
Date: Wed, 11 May 2016 11:41:41 -0400
Message-ID: <CABEk9YyfmYsnNq+1w57fYUd96wVn7VzVSNjrUkpbKKHAb24O7Q@mail.gmail.com>
From: Kangjie Lu <kangjielu@gmail.com>
To: Takashi Iwai <tiwai@suse.de>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, 
	Chengyu Song <csong84@gatech.edu>, Insu Yun <insu@gatech.edu>, Taesoo Kim <taesoo@gatech.edu>
Content-Type: multipart/alternative; boundary=001a113724cccff739053292e028
Subject: [oss-security] Re: CVE Request: alsa: kernel information leak vulnerability in Linux sound/core/timer

--001a113724cccff739053292e028
Content-Type: text/plain; charset=UTF-8

On Wed, May 11, 2016 at 10:34 AM, Takashi Iwai <tiwai@suse.de> wrote:

> On Wed, 11 May 2016 16:26:55 +0200,
> cve-assign@mitre.org wrote:
> >
> > >
> https://git.kernel.org/cgit/linux/kernel/git/tiwai/sound.git/commit/?h=for-next&id=cec8f96e49d9be372fdb0c3836dcf31ec71e457e
> > >   ALSA: timer: Fix leak in SNDRV_TIMER_IOCTL_PARAMS
> > >
> > >
> https://git.kernel.org/cgit/linux/kernel/git/tiwai/sound.git/commit/?h=for-next&id=9a47e9cff994f37f7f0dbd9ae23740d0f64f9fe6
> > >   ALSA: timer: Fix leak in events via snd_timer_user_ccallback
> > >
> > >
> https://git.kernel.org/cgit/linux/kernel/git/tiwai/sound.git/commit/?h=for-next&id=e4ec8cc8039a7063e24204299b462bd1383184a5
> > >   ALSA: timer: Fix leak in events via snd_timer_user_tinterrupt
> >
> >
> > > Maybe we can fold
> >
> > That is not what we are going to do. Because the meaning of
> > CVE-2016-4569 was already established to be the
> > http://comments.gmane.org/gmane.linux.kernel/2214250 issue with the
> > "tread" object, which is only
> > cec8f96e49d9be372fdb0c3836dcf31ec71e457e, we are keeping that
> > ID assignment the same.
> >
> > Use CVE-2016-4578 for both 9a47e9cff994f37f7f0dbd9ae23740d0f64f9fe6
> > and e4ec8cc8039a7063e24204299b462bd1383184a5.
>
> Fair enough.
>
> (And, at the next time, please put the maintainer into Cc from the
>  beginning.  This would have saved lots of time in both sides.)
>

Thank you all! Sure, will do that next time.

Kangjie

>
>
> thanks,
>
> Takashi
>

--001a113724cccff739053292e028--
