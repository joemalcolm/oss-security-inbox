X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1127" "Wednesday" "13" "February" "2019" "02:41:48" "-0800" "EJ Campbell" "ejc3@verizonmedia.com" "<CABOq=i38wC9q1hvydmhuYK7bPCDYbUjpTHHPRxD7gGMFNXmEPQ@mail.gmail.com>" "34" "Re: [oss-security] CVE-2019-5736: runc container breakout exploit code" "^Cc:" nil nil "2" "2019021310:41:48" "[oss-security] CVE-2019-5736: runc container breakout exploit code" (number mark "        ejc3@verizon Feb 13   34/1127  " thread-indent "\"Re: [oss-security] CVE-2019-5736: runc container breakout exploit code\"\n") "<20190213095743.ek3x42ok7bengua5@yavin>" ("<20190213093151.znxnjuqtwbdlwnom@yavin>" "<CABOq=i3PAbRT5GpJZiAHb-BDpQkx0n0k=M8JeupjNKUK+Wi78A@mail.gmail.com>" "<20190213095648.ibfskgddfa4zgdlo@yavin>" "<20190213095743.ek3x42ok7bengua5@yavin>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14122 invoked by uid 550); 13 Feb 2019 11:13:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3894 invoked from network); 13 Feb 2019 10:42:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=verizonmedia.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RzdrmxVCCfqlKH12frnGnwhnh4Uerpoaf6ciE8A+C7E=;
        b=DsM4QVp+n28ohfGBUja3gbKd4XpV+ze/AQjRpGaRQ+0NygccaiIKlv7d69lst4QoDR
         XYvjrIQIz+BkDJRpBubh+JSJXJrGp7s2Il3abmXJDglhBUjbM7OeC80O1QJzzzkjnT3x
         VcCuUAEtm45x4AR0xu+qCoxuUvYKSfqjXzPu0PgCwYtFWgs6UYr84+LG/902fZ9YJUWx
         d/e5LXx5YvcJXDvMmQan3P4MUuOHoEUZblhI2nTJCzjjRksmjW5Ix1F187RiuE25rebG
         ywYdurNphMYwy7X6GGlaEzSj+i/LiPxSIiKkV5P0BazUmQzfn9ds6VcGVRMNp9GXm3gd
         xpkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RzdrmxVCCfqlKH12frnGnwhnh4Uerpoaf6ciE8A+C7E=;
        b=t/n3EhPRfxOpwlj6BT8sMpIN8+J1VhH4e8HDt57jX+U1naE2Bkvt9dkyQg0TF8LZsw
         tt9mHkaXp4/EnkqoXZgFmkrm3r62i4fSizSFd+lBvEBO8Sd24wnFvIdfNyvVsR3YefrY
         0TW9vV7jIa7w7SGbxy8cRr046oiovpNcRkHbS2oxUxm5ZBSdMggLPsrdL9/YgBBE9k4U
         zCqCXm40HY2uBrjE2rgWN9rYSmQGbVk5xPUgEJRN7gKdw9+LaQMJAPbiMGUSP5znS+rj
         seCWHIqKbt5HtYISsxwsy5ZRAskA12QkWlDwjBSPraJD+iGYjpRto5eBqHYIyY2iNH23
         hmVQ==
X-Gm-Message-State: AHQUAuYCBlMT4quUtI6eFk1YGEl3YCmz7J81eg7FJ28blAMXaH3IhY94
	JZDTULeOA1+uAsN4FiZz5SEMrye7HBsY7fLkeyPEpA==
X-Google-Smtp-Source: AHgI3IbJ8aTAerHpuxmwoKkzSTRrtZbVhREPH1yGrsewHMxJvQ3akP2UgPaaeYloyzHakfUB31p0G3KkA3WDcUWX6wk=
X-Received: by 2002:aca:e5c9:: with SMTP id c192mr297455oih.118.1550054519688;
 Wed, 13 Feb 2019 02:41:59 -0800 (PST)
MIME-Version: 1.0
References: <20190213093151.znxnjuqtwbdlwnom@yavin> <CABOq=i3PAbRT5GpJZiAHb-BDpQkx0n0k=M8JeupjNKUK+Wi78A@mail.gmail.com>
 <20190213095648.ibfskgddfa4zgdlo@yavin> <20190213095743.ek3x42ok7bengua5@yavin>
In-Reply-To: <20190213095743.ek3x42ok7bengua5@yavin>
Message-ID: <CABOq=i38wC9q1hvydmhuYK7bPCDYbUjpTHHPRxD7gGMFNXmEPQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000077dec0581c4314c"
Cc: oss-security@lists.openwall.com
Date: Wed, 13 Feb 2019 02:41:48 -0800
From: EJ Campbell <ejc3@verizonmedia.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2019-5736: runc container breakout exploit code
To: Aleksa Sarai <cyphar@cyphar.com>

--000000000000077dec0581c4314c
Content-Type: text/plain; charset="UTF-8"

That should have been +i, sorry. Thank you for your quick response.

EJ

On Wed, Feb 13, 2019 at 1:58 AM Aleksa Sarai <cyphar@cyphar.com> wrote:

> On 2019-02-13, Aleksa Sarai <cyphar@cyphar.com> wrote:
> > On 2019-02-13, EJ Campbell <ejc3@verizonmedia.com> wrote:
> > > While fixing docker / runc is clearly the right fix, would using
> chattr -i
> > > on runc be a quick mitigation for the issue? I believe that will
> prevent
> > > the file from being overwritten by the exploit and Etienne Stalmans
> > > verified that it helped:
> > >  https://twitter.com/_staaldraad/status/1095354945073754112
> >
> > The privileged user in the container could just un-set the immutable
> > bit using "/proc/self/fd/..." and then open it for writing. A read-only
> > filesystem would work much better.
>
> Sorry, I forgot that CAP_LINUX_IMMUTABLE is dropped by default in
> Docker. Yes that mitigation would also work.
>
> --
> Aleksa Sarai
> Senior Software Engineer (Containers)
> SUSE Linux GmbH
> <https://www.cyphar.com/>
>

--000000000000077dec0581c4314c--
