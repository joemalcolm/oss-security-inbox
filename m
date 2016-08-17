X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1827" "Wednesday" "17" "August" "2016" "17:01:45" "+0200" "Gsunde Orangen" "gsunde.orangen@gmail.com" "<CAOTQaXEMKvWRH4Aexf3bXzsdx0488TkWmVq2-7+v4Ak7dar7jw@mail.gmail.com>" "52" "Re: [oss-security] CVE-2016-5696: linux kernel - challange ack information leak." "^Date:" nil nil "8" "2016081715:01:45" "[oss-security] CVE-2016-5696: linux kernel - challange ack information leak." (number mark "        gsunde.orang Aug 17   52/1827  " thread-indent "\"Re: [oss-security] CVE-2016-5696: linux kernel - challange ack information leak.\"\n") "<20160817121621.GA7146@kroah.com>" ("<CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>" "<b84b5a3f-9e85-e3f2-fbbd-95dac3a76518@enea.com>" "<20160814195158.GA19228@kroah.com>" "<3230301C09DEF9499B442BBE162C5E48ABE26AE4@SESTOEX04.enea.se>" "<20160815075301.GD6359@kroah.com>" "<8e047f04-5c48-aaa8-0e71-e06a44cb8a2c@enea.com>" "<20160816201908.GB10132@kroah.com>" "<3230301C09DEF9499B442BBE162C5E48ABE280AE@SESTOEX04.enea.se>" "<20160817121621.GA7146@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20341 invoked by uid 550); 17 Aug 2016 15:01:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20321 invoked from network); 17 Aug 2016 15:01:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=O55fML+4Rta7zN5bAlXMX0RhXu26haecJttt4f66paE=;
        b=gb5zFMXTHTKaQAVw5gOHdzOXzXEY14WyIS3zBsZCyTxtfU5NyApuBm4VSv1iOWmTAs
         IXNABONcNYE8hYGA2kIW1nSosDhiBjTjN/OrKp7aJJaB7/e9qNtW7SXQjknpXYhssZ3+
         5FN8nCllT34F1tIHEYX0DJz2h+7oZ4FISmePnSYD3WVdZTOq3j6gJ2OdI6xjtHo2OnmV
         Xlg/05W0fOoUJ88vYKOZCTk3MmvZvmKTgyH6fSbWpT/nMt5DB3J25j3mKKBTVWz9wDSt
         XKRjjCGPNiAJsBt+jDgJls7BemunaLvyczV13vhkdKz/0lto2A3PwpElcAsvozUa9aEB
         quCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=O55fML+4Rta7zN5bAlXMX0RhXu26haecJttt4f66paE=;
        b=j8w1+f285U0XPHInNNszVrtVVvmmOAfR8rRK/w3dynZa1xWPtTAE4Z5BwgdBwl+kv4
         y61oA/HvJUhUt4lNNtv1CDvPrVU6H+Ip20Ux/Z0XQIfwgEU+kLhjgRvCnU3Ukk0gIkjc
         JpAJMqu18b/LypQaKRQRbk5xIUt+u18UdRcrlcgrzz5S+sVRNcZD1EF6rQ6b2Zhfv8AX
         ZYEphHZqJZYV83UYpDfn+Bhx3kNzizDs4zMF6M/kSjyPP09bCXN4CtzFUrr83QrKnqn7
         lUMVnq8XcJIyGtov0d6FINNZ3tzBf4I3BHEe9cRzkk+vFHMRIfMM8vk99nYhQGbDJYVI
         T2HQ==
X-Gm-Message-State: AEkoouu5meAkgMvjD1sYGq8k1472OvMYk6/Vzn83pT8IsvGxk9Lj+N5ndri8jxjgaLm5R9v5wp3TmFycjuFfMw==
X-Received: by 10.28.210.5 with SMTP id j5mr27401130wmg.67.1471446106472; Wed,
 17 Aug 2016 08:01:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160817121621.GA7146@kroah.com>
References: <CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>
 <b84b5a3f-9e85-e3f2-fbbd-95dac3a76518@enea.com> <20160814195158.GA19228@kroah.com>
 <3230301C09DEF9499B442BBE162C5E48ABE26AE4@SESTOEX04.enea.se>
 <20160815075301.GD6359@kroah.com> <8e047f04-5c48-aaa8-0e71-e06a44cb8a2c@enea.com>
 <20160816201908.GB10132@kroah.com> <3230301C09DEF9499B442BBE162C5E48ABE280AE@SESTOEX04.enea.se>
 <20160817121621.GA7146@kroah.com>
Message-ID: <CAOTQaXEMKvWRH4Aexf3bXzsdx0488TkWmVq2-7+v4Ak7dar7jw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11468e0e7bbde7053a45be62
Date: Wed, 17 Aug 2016 17:01:45 +0200
From: Gsunde Orangen <gsunde.orangen@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-5696: linux kernel - challange ack
 information leak.
To: oss-security@lists.openwall.com

--001a11468e0e7bbde7053a45be62
Content-Type: text/plain; charset=UTF-8

> > Heh, fair enough.  This fix is now in the kernels that were released
today
> > (4.7.1, 4.6.7, 4.4.18, and 3.14.76), hope that helps.
It seems that Greg keeps on being bothered with questions ;-)
Here's one more: the relevant Upstream commit
75ff39ccc1bd5d3c455b6822ab09e533c551f758
is referenced in all change logs of yesterday's kernel releases...
... Except for: 4.7.1 (https://cdn.kernel.org/pub/
linux/kernel/v4.x/ChangeLog-4.7.1)
Did 4.7.1 miss the fix?

Thanks again,
Gsunde

2016-08-17 14:16 GMT+02:00 Greg KH <greg@kroah.com>:

> On Wed, Aug 17, 2016 at 11:54:56AM +0000, Sona Sarmadi wrote:
> >
> > > > > You can _always_ just apply the patch to your local tree, there's
> > > > > never a need to wait for me to get a kernel out.  That's the
> > > > > advantage of having the source for your systems :)
> > > > Yes, we can do that but sometimes the patches for newer kernels don't
> > > > apply cleanly on older versions.
> > > > There is always a risk that our home grown patches have undesired
> side
> > > > effects. We prefer your sign of approval on patches for older kernels
> > > > :)
> > >
> > > Heh, fair enough.  This fix is now in the kernels that were released
> today
> > > (4.7.1, 4.6.7, 4.4.18, and 3.14.76), hope that helps.
> > >
> > > greg k-h
> >
> > Thanks a lot Greg, yes this helps :) I could apply  patch from
> linux-3.14.y branch
> > to linux-3.12.y as well (the code looks similar).
>
> Note, I got the patch a bit wrong, it's not as fast as it could be,
> here's an update to put on top of the one you took from 3.14.y:
>         https://git.kernel.org/cgit/linux/kernel/git/stable/
> stable-queue.git/commit/?id=e09bea58ec0552dbbf71fb22bf7a46da9a288fc8
>
> thanks,
>
> greg k-h
>

--001a11468e0e7bbde7053a45be62--
