X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3379" "Tuesday" "5" "November" "2019" "19:04:00" "-0800" "Anthony Liguori" "anthony@codemonkey.ws" "<CA+aC4ktDM9-TmhOOKx_C7zSZbKnAJVVe4XSLCGXvaY59q+vBzA@mail.gmail.com>" "76" "Re: [oss-security] Contributing Back" nil nil nil "11" "2019110603:04:00" "[oss-security] Contributing Back" (number mark "U       anthony@code Nov  5   76/3379  " thread-indent "\"Re: [oss-security] Contributing Back\"\n") "<20191105184228.GA27029@openwall.com>" ("<CAPsnWaD_9QOiV+513eH=ECkwBo+AWN38N9x7xauKcFyVpvc-Og@mail.gmail.com>" "<20190714174509.GA8267@openwall.com>" "<CAPsnWaD3YKPx6hnLoEmfM5VdKqFHrTKjvqRo1uG=8U1xU70-+Q@mail.gmail.com>" "<CA+aC4kuU2KVonpSER4rPb5asFR+gw8t0RAWXX7Di=4nDEJQnJw@mail.gmail.com>" "<20190715192801.GA12290@openwall.com>" "<20191105184228.GA27029@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] Contributing Back" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30660 invoked by uid 550); 6 Nov 2019 10:18:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24384 invoked from network); 6 Nov 2019 03:04:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codemonkey-ws.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+s+9JL4tGPgs/FHs4No0/lDRNS2VSE9WMYP8mFNI6es=;
        b=wv4EIcDVdPH9j/ubJU0GrhJDO9pF6KO8eH5e8az6MhpUPyX/W1r8sfbWurf2YiMrjO
         qYLc829Khdr3nOkDXGtHDm7A8nmqKXc0rOVO6HweGs0YgCkE1Ox/YhSfPdlCjNiJCx3M
         B4kmlHVXfwQTjT6CIrTwpKGJZl8mBS2Z8pBzQMA/gBcLW8S2BhjeKbDTxBQ4fv+a2JsW
         /crnKcfw3CVLCamoK9CqFoncUw5Hx6tSFTNSVaW+gduzcBJHNeNqO73/2TBv4UE7kW5J
         6WhHlqEEo+7pPUfCNlQ1qjjWW1U5P/im8eG3Qn23q0nf3mepkc85EIVyoDgC+c9Qp/4E
         u+vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+s+9JL4tGPgs/FHs4No0/lDRNS2VSE9WMYP8mFNI6es=;
        b=oxlcx8+6+QsZ7xooPDoKhNB9+0I49nOgZO9QzTw9NXyfJlEETRo0SUFYf0C872D4Yx
         DtKhUvPuDCraiX2SoQJqy08IXk4Y/lX7zzJbzADx7cWB+YqCk9CFHJOxzr/RET5GWoBt
         GGqf21S9YX+28Sn2skuX/0HyyspQDiiQBz974vmrO4L3fyFJ9AA5saZGDiam0lYZLKpy
         IlknhToD5OkxDR+v5Rugsl4swglL8JhxQXA0iw4HGtZUss0e/vfcN1N+cB4B/lvdTYaZ
         GMBqCv4zhRi7i73jtXo0Kkodf+HOsLBEtJpDRRV9tpM631vIM0k4FEFSKVyU3DhfRWva
         Xn/w==
X-Gm-Message-State: APjAAAW16x2+eNuISMixAjzPJSKW0gPiZ+xkv4NVJn007YTkBtUcaPBb
	VJhS0Te1SHQu5i6yARYNkasgbUvZFIX8HKLY1abWey0fyxM=
X-Google-Smtp-Source: APXvYqwNVlFH3V1A7RZMqONEpWVn3McPN2GQcPKkHnMh3c22SiDPXb1+8+HfxPpapTK0C6gm1kdRuUi/UpDFv+6FwQI=
X-Received: by 2002:aca:b7c2:: with SMTP id h185mr263788oif.76.1573009451724;
 Tue, 05 Nov 2019 19:04:11 -0800 (PST)
MIME-Version: 1.0
References: <CAPsnWaD_9QOiV+513eH=ECkwBo+AWN38N9x7xauKcFyVpvc-Og@mail.gmail.com>
 <20190714174509.GA8267@openwall.com> <CAPsnWaD3YKPx6hnLoEmfM5VdKqFHrTKjvqRo1uG=8U1xU70-+Q@mail.gmail.com>
 <CA+aC4kuU2KVonpSER4rPb5asFR+gw8t0RAWXX7Di=4nDEJQnJw@mail.gmail.com>
 <20190715192801.GA12290@openwall.com> <20191105184228.GA27029@openwall.com>
In-Reply-To: <20191105184228.GA27029@openwall.com>
From: Anthony Liguori <anthony@codemonkey.ws>
Date: Tue, 5 Nov 2019 19:04:00 -0800
Message-ID: <CA+aC4ktDM9-TmhOOKx_C7zSZbKnAJVVe4XSLCGXvaY59q+vBzA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Joe McManus <joe.mcmanus@canonical.com>, Anthony Liguori <aliguori@amazon.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Contributing Back

On Tue, Nov 5, 2019 at 10:45 AM Solar Designer <solar@openwall.com> wrote:
>
> Hi Joe, hi Anthony -
>
> I'll over-quote a bit since it's an old thread:
>
> On Mon, Jul 15, 2019 at 09:28:01PM +0200, Solar Designer wrote:
> > On Mon, Jul 15, 2019 at 11:54:23AM -0700, Anthony Liguori wrote:
> > > On Mon, Jul 15, 2019 at 11:47 AM Joe McManus <joe.mcmanus@canonical.com> wrote:
> > > > > On Tue, Jul 09, 2019 at 07:00:36PM -0600, Joe McManus wrote:
> > > > > > Hey All - The Ubuntu Security Team would like to sign up for items 3,4
> > > > > > & 5 from the technical list <
> > > > > > https://oss-security.openwall.org/wiki/mailing-lists/distros#contributing-back
> > > > > > >:
> > > > > >
> > > > > > 3 - Review and/or test the proposed patches and point out potential issues
> > > > > >   with them [...]
> > > > > > 4 - Check if related issues exist in the same piece of software [...]
> > > > > > 5 - Check if related issues exist in implementations of similar
> > > > > >   functionality in other software [...]
> > [...]
> > > > Yes, this will be taken care of by Ubuntu Security Team members who
> > > > are already on the list, however if after some time we need to cycle
> > > > someone in or out I might come asking. I know you don't want to add
> > > > anyone so we will do our best to prevent this from happening.
> > > >
> > > > For 3 we can be either primary or backup, just let me know your
> > > > preference and we'll do the work.
> > >
> > > I would be happy for y'all to be primary.  We don't ship as many
> > > packages as Ubuntu does so there will be more things that you are
> > > likely to test compared to what we do.
> >
> > OK, I've just listed Ubuntu as primary for 3, 4, 5.  Amazon is now
> > backup for 3.
> >
> > Please note that these items include "and inform the list of the work
> > done even if no issues were encountered" (item 3), "and inform the list
> > either way" (items 4, 5), so we'll expect replies to the list as per
> > these items for each and every issue reported to there.
>
> I am not seeing this "inform the list either way" stuff actually
> happening.  Without it, no other distro has a way to know the work is
> actually being done.  Once I had pointed this need out a while before,
> Amazon briefly started making those mandatory postings for task 3, until
> they were replaced by Ubuntu as primary.  In fact, given the lack of
> such postings by Ubuntu, I would still expect Amazon to take over for
> task 3, which they're the backup for, and it looks like they did that
> exactly once:
>
> As far as I can see, the last time Amazon handled task 3 was on July 25,
> which is 10 days after Ubuntu became primary for that task.  This was
> much appreciated.  Unfortunately, as far as I can see, neither distro
> (visibly) handled these tasks ever since, with one exception:
>
> Ubuntu did point out that a patch didn't have a corresponding testsuite
> change, and thus tests failed, in a posting on October 10.  So hopefully
> they were doing the work, except for the "inform the list either way"
> part - but that's an important part!
>
> It is possible that I missed or don't recall some other occasions, but I
> think I got the overall picture right.
>
> Joe, Anthony - can you please have your distros start handling these
> tasks fully, as described?

Ack.

Regards,

Anthony Liguori

>
> Thanks in advance,
>
> Alexander
