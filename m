X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["555" "Thursday" "21" "June" "2018" "08:11:42" "-0700" "Gordon Tetlow" "gordon@tetlows.org" "<CAKghNw0_qr10=pAkKbn1hhnVxiPuHGEo2rBscNqnh59E9qXzcw@mail.gmail.com>" "20" "Re: [oss-security] Intel hyper-threading security issues" "^Date:" nil nil "6" "2018062115:11:42" "[oss-security] Intel hyper-threading security issues" (number mark "        gordon@tetlo Jun 21   20/555   " thread-indent "\"Re: [oss-security] Intel hyper-threading security issues\"\n") "<20180621115856.5py2a5skjiogfgrc@sivokote.iziade.m$>" ("<CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com>" "<20180621045642.fy67joeaxu2n4j56@sivokote.iziade.m$>" "<20180621115856.5py2a5skjiogfgrc@sivokote.iziade.m$>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17854 invoked by uid 550); 21 Jun 2018 15:31:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6039 invoked from network); 21 Jun 2018 15:11:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tetlows.org; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=fRKHHOqUh50+8/WhIJQfl21jJqoSuIc5KZBoGCuEVJs=;
        b=Ee1Zb2Jw2UWdPQAW3X7Mc/bG+DnXnAkOlJjfAhA7SurLPAVvscWAgJDUkdQPu8/dYh
         JxoDnf3jIDH/zUv1sKorA4WfW4qMOIh3PcfeGivlKZJv9KzUKssNbtXDu6jmG3MBuzQO
         2ZqW1QEmKUQyHLHrE2rDbR0oeJzKFspUn8Hps=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=fRKHHOqUh50+8/WhIJQfl21jJqoSuIc5KZBoGCuEVJs=;
        b=mdXDaGv9/zG65apP8Cr8pTVaZQLyVl6hUKxCnMHBxjrGf2OKo/Nm0A6KEjpUblOxKe
         bbZkv/o968KjU0kzNzRwuTCpX3C9HwPgOJCMwKT+JXEX0Lq0ozncKxlRpK/Kh3vjoNQB
         jLKCWEA1gZ22lUUUDGLl78pqTBY5+fY0tgsK0RBdM+88yQzZ743ppF6Xtl/OLzSe/n9p
         rQLQjmY3wI4T/Ii9y7mRe70kGfYKHs3q2JKyscfi+BuEzvfiwV97LO6YD77f/FRwi5nS
         Tf/0OiBfbzjkAipu4jTm2acTfJXGhpdOOrn2zeZJMp5iPdY9uqDPxDnLXcv8Ia/5a2hX
         /xlA==
X-Gm-Message-State: APt69E2R+JfkJa2i7/6fMgsduO9lBNJue6H/Pc95b5tbgiKoa0wmy0n1
	xBs+ap+bujputicnGiTFKfx2zGc22KoxvxaxlM54fcO4Lg==
X-Google-Smtp-Source: ADUXVKI1/n3/evKv6aftLbUN/tE76nzz63C49rg93Q6oJfnSpS0yCsfQ30otOwGRGh7GFkQfH9fnzjsiLj8DNfVVfsY=
X-Received: by 2002:ab0:13c8:: with SMTP id n8-v6mr16452935uae.140.1529593903236;
 Thu, 21 Jun 2018 08:11:43 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180621115856.5py2a5skjiogfgrc@sivokote.iziade.m$>
References: <CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com>
 <20180621045642.fy67joeaxu2n4j56@sivokote.iziade.m$> <20180621115856.5py2a5skjiogfgrc@sivokote.iziade.m$>
Message-ID: <CAKghNw0_qr10=pAkKbn1hhnVxiPuHGEo2rBscNqnh59E9qXzcw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Thu, 21 Jun 2018 08:11:42 -0700
From: Gordon Tetlow <gordon@tetlows.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Intel hyper-threading security issues
To: oss-security@lists.openwall.com

On Thu, Jun 21, 2018 at 4:58 AM, Georgi Guninski <guninski@guninski.com> wrote:
> On Thu, Jun 21, 2018 at 07:56:42AM +0300, Georgi Guninski wrote:
>> V.   Solution
>>
>> Disable Hyper-Threading Technology on processors that support it.
>>
>
> Is Freebsd safe from this or requires patch?

FreeBSD allows disabling of HT processors if the user decides to do so.

Add to /boot/loader.conf:
machdep.hyperthreading_allowed=0

And reboot the host.

Please note this isn't an endorsement of disabling HT, just an
explanation of how to do so on FreeBSD.

Gordon
