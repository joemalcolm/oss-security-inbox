X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2933" "Tuesday" "21" "August" "2018" "13:12:43" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkJpnGtG6D3JZVaC5KJiNzsJ6vjJK0oXRfirR8QsdFbZVQ@mail.gmail.com>" "77" "Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" "^Date:" nil nil "8" "2018082120:12:43" "[oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" (number mark "        taviso@googl Aug 21   77/2933  " thread-indent "\"Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?\"\n") "<CAFRnB2U+QMGmAMoZqbCgTjEx_o_NA+Y9eBE6eDBgJJ0hZdQ4GQ@mail.gmail.com>" ("<CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>" "<CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com>" "<alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org>" "<CAFRnB2U+QMGmAMoZqbCgTjEx_o_NA+Y9eBE6eDBgJJ0hZdQ4GQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 4048 invoked by uid 550); 21 Aug 2018 20:13:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 4030 invoked from network); 21 Aug 2018 20:13:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=cIxHcRznG41B4YCr1eHNQxKUqeJTQCNCJqLQJJITZYE=;
        b=HTSJynYFJ4XrgYSTpczdgKQu8kqBzRmD4m7XfrfWmwYbfHXTEe109u9ivp2NcZTugU
         Bn5Eu7x1+F0gPEpS5Xadz1EvK8/eyV4Ot6w5xW947FoeM3EapWo5v7VkSAbVPtgUuwYr
         cgryCyJoIJRlbp4lFaPfcL4pVFKjCyKJoiYdSDzZUB2QxeqG5nPX/SFgUNS/8DV37V+b
         RWnEhyk/QaL/xnkvRERuGKMOJqCE7dNhB5MCHMaKzMzFcSQyyOsjCh7obk7OUm5l4N9H
         dFRWjsfJsuPAqa4PwdpNl2wPS+b2AsWTpK3t9pv7RXpg+GU19Fh+G3IvjnxvHw+yx6gn
         ncXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=cIxHcRznG41B4YCr1eHNQxKUqeJTQCNCJqLQJJITZYE=;
        b=m5qlV0wXik/f+lX00kfiXefeEBd4PaAlFX77XSIsKMPXDH+1fpMBTlBlCvIgf0vb8d
         J7T96SGx8LhHq6qKksQrrnMu20hHcQoPTcyFXUGJh262pMNqDSefgtBDzuyRKE/H5OIZ
         Aq/FWilAzrPzCgfijYBNjTh7obEIhRHnIghflrnSrqrA8Xa4K1N5eYDor9wUwNwDhn8V
         9Rgd+ezo4ed0cevVlWzKmE9j45hduTPwDM53lxgyS6q/P7qzilm4GAj/5lrzSXywrZhG
         zWETGEVZjZO6CdHz/9V5IvGlTIz3tE7KsVeytWTswvT4qLaAb/J7dLmuHgsqxxshBVIM
         Gi8w==
X-Gm-Message-State: AOUpUlE9/e+YzvTcju/h1SkRJu9FEJvMSKzIjdouFNiskQQaiBCqrouC
	RayoSizKpFAbtsAjHk/Hiwb9iaFCcCkHJ9aycN3CKDlMz/0=
X-Google-Smtp-Source: AA+uWPywaErbxfRpSx0JAuioBYmGUQ9WE9XYn3qD5TGlz8FtCB2aGkeXh8a7AQ3IxzINbP4tPVtu+dAJ5wUEQPBnWWg=
X-Received: by 2002:ae9:dc05:: with SMTP id q5-v6mr48701426qkf.332.1534882375639;
 Tue, 21 Aug 2018 13:12:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>
 <CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com>
 <alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org> <CAFRnB2U+QMGmAMoZqbCgTjEx_o_NA+Y9eBE6eDBgJJ0hZdQ4GQ@mail.gmail.com>
In-Reply-To: <CAFRnB2U+QMGmAMoZqbCgTjEx_o_NA+Y9eBE6eDBgJJ0hZdQ4GQ@mail.gmail.com>
Message-ID: <CAJ_zFkJpnGtG6D3JZVaC5KJiNzsJ6vjJK0oXRfirR8QsdFbZVQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000c64c0d0573f7a60f"
Date: Tue, 21 Aug 2018 13:12:43 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS
 coders in policy.xml by default?
To: oss-security@lists.openwall.com

--000000000000c64c0d0573f7a60f
Content-Type: text/plain; charset="UTF-8"

Thanks Alex.

FWIW, not all of these are visible, but I've started filing bugs, I'll file
a few more today and then let the developers work through the most serious
ones.

699654 /invalidaccess checks stop working after a failed restore
699655 missing type checking in setcolor
699656 LockDistillerParams boolean missing type checks
699659 missing type check in type checker (!)
699657 .tempfile SAFER restrictions seem to be broken
699658 Bypassing PermitFileReading by handling undefinedfilename error
699660 shading_param incomplete type checking
699661 pdf14 garbage collection memory corruption
699662 calling .bindnow causes sideeffects
699663 .setdistillerkeys memory corruption
699664 corrupt device object after error in job

I'm working on getting reproducers working for the developers for all bugs.

On Tue, Aug 21, 2018 at 8:22 AM Alex Gaynor <alex.gaynor@gmail.com> wrote:

> A small note. Both ImageMagick and GraphicsMagick process various file
> formats that can nest a different image file inside of them. These are very
> frequently implemented with a call to ReadImage(), with no checking that
> it's the expected file format. (As a result, the fuzzer finds various
> impressive chains, with sometimes 3 different image formats nested inside
> of each other).
>
> The conclusion of this is that people _must not_ attempt to do their own
> format detection and then pass the data to IM/GM, because this can be
> bypassed with nested formats. It's imperative that GS truly be disabled
> with either policy.xml or by uninstall GS.
>
> Alex
>
> On Tue, Aug 21, 2018 at 11:01 AM Bob Friesenhahn <
> bfriesen@simple.dallas.tx.us> wrote:
>
> > On Tue, 21 Aug 2018, Tavis Ormandy wrote:
> > >
> > > I think those thumbnails should be disabled, but you've probably
> noticed
> > I
> > > think everything related to untrusted ghostscript should be disabled
> :-)
> >
> > I have posted to the GraphicsMagick Announcements mailing list
> > regarding your findings (with a link to this list) and suggested that
> > a fool-proof solution is that Ghostscript should be uninstalled.
> >
> > Uninstalling Ghostscript entirely might cause software using libgs to
> > not execute at all unless a stub library is put in its place.
> >
> > Dependencies on Ghostscript are much larger than one would initially
> > think due to Postscript being the traditional output from Unix
> > software for "printing" and thus it is used as an intermediate format
> > in order to convert between formats.  EPS content is also embedded in
> > some other formats.
> >
> > Bob
> > --
> > Bob Friesenhahn
> > bfriesen@simple.dallas.tx.us,
> http://www.simplesystems.org/users/bfriesen/
> > GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
> >
>
>
> --
> All that is necessary for evil to succeed is for good people to do nothing.
>

--000000000000c64c0d0573f7a60f--
