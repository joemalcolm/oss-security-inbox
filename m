X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1929" "Thursday" "16" "July" "2015" "23:24:12" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNXuQKjxaBKb2rUz0simdcH9Rr_TLKZ2cyi1r_Z6mg-zTw@mail.gmail.com>" "46" "Re: [oss-security] Re: ezmlm warning" nil nil nil "7" "2015071706:24:12" "[oss-security] Re: ezmlm warning" (number mark "        reed@reedlod Jul 16   46/1929  " thread-indent "\"Re: [oss-security] Re: ezmlm warning\"\n") "<874ml3nwkm.fsf@mid.deneb.enyo.de>" ("<1436834771.18369.ezmlm-warn@lists.openwall.com>" "<CAPiURgVcmtPDG6APOESc5tG_sAjaA2JHOwThc+ByeSHQftDb8g@mail.gmail.com>" "<CALPTtNUgpuWSznYT77cY8fTFPMgzDW-TN-VC3agv982Socc4Qg@mail.gmail.com>" "<874ml3nwkm.fsf@mid.deneb.enyo.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1779 invoked by uid 550); 17 Jul 2015 06:24:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1759 invoked from network); 17 Jul 2015 06:24:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=rabEURmeLQGV0zy76YHucp885OHyT56Z+917ZIg2lzI=;
        b=cl/U4Xl6+pH3p4ukp4XXvi5j7hlqP4S4Br9EhcJP5B84BOAEMeFVC0dnrlA/ShfNAe
         vuPsCBJlEqR4ZQHqoO/P2qYJSdqL8JEjO9zczfh/nS4X1+wSdETPy/ON4juo9HzNCW+Z
         Sx5yyUbT2HLdWCDwK3snm2nV3Qz7eiIBOjETQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=rabEURmeLQGV0zy76YHucp885OHyT56Z+917ZIg2lzI=;
        b=QBoRDLgVxSqMyjIedrn7r2tgsbepgduJ1ipkcj237AalAISJoab700FFaw+/cqnGWB
         oBpZA1U9DabGIomLKrgHU2TGmpcBvnLz2W1dlGaldjU0Km8jRMLQEf+o8q+87TKKa0N/
         ozKVqPwVH/LxChR8rFs1rl3IJFa73tcT7L+wVN5dBaACyrGvaTEXMZQMPAt9mem0z+TN
         YXO/GoRrDB6Py9Oti3LHYsVgeFb4yEHHmdnQn4UaqjdyNTgzFTf2kwahMWlyWw8a2drf
         GlEi1GrnUJJzHS8XLYMSqC40iwfsDlhYCP/pUTh1dY2DkHn2At5iXHB/8NPXw8UpjiP5
         C8uA==
X-Gm-Message-State: ALoCoQkf0m4YjTZwmxUfGDyGG8SpV9n54gyzyYwt5VpMn+IMC96RUuAQTTjYvp56FIDd1Bb5BwLD
X-Received: by 10.107.25.84 with SMTP id 81mr15774919ioz.169.1437114271746;
 Thu, 16 Jul 2015 23:24:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <874ml3nwkm.fsf@mid.deneb.enyo.de>
References: <1436834771.18369.ezmlm-warn@lists.openwall.com>
 <CAPiURgVcmtPDG6APOESc5tG_sAjaA2JHOwThc+ByeSHQftDb8g@mail.gmail.com>
 <CALPTtNUgpuWSznYT77cY8fTFPMgzDW-TN-VC3agv982Socc4Qg@mail.gmail.com> <874ml3nwkm.fsf@mid.deneb.enyo.de>
Message-ID: <CALPTtNXuQKjxaBKb2rUz0simdcH9Rr_TLKZ2cyi1r_Z6mg-zTw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113ff09cab6adb051b0c3d90
Date: Thu, 16 Jul 2015 23:24:12 -0700
From: Reed Loden <reed@reedloden.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: ezmlm warning
To: oss-security@lists.openwall.com

--001a113ff09cab6adb051b0c3d90
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 16, 2015 at 11:10 PM, Florian Weimer <fw@deneb.enyo.de> wrote:

> * Reed Loden:
>
> > Yup, I get these, too... Been happening for almost a year. See also
> > http://seclists.org/oss-sec/2014/q3/471.
> >
> > Likely, the ezmlm instance on lists.openwall.com needs to be updated to
> get
> > some of the DMARC compliance changes that were made last year (
> > http://untroubled.org/ezmlm/archive/7.2.2/CHANGES).
>
> Or you need to upgrade your email service to something that supports
> mailing lists.  oss-security uses Internet Mail in the way it is
> intended and specified.  If recipient mail servers cannot accept those
> messages, it is really their fault.
>

You can complain all your want, but it's not going away. It cuts down on
spam and spoofing mails too much. DMARC isn't some rogue thing that just a
few people are doing. It's all been codified as RFC 7489, and lots of mail
providers have implemented it. There are definitely some things that can be
improved about it (the DMARC WG in the IETF is very busy --
https://tools.ietf.org/html/draft-ietf-dmarc-interoperability-04 for their
latest work on this), but ignoring DMARC is just putting your head in the
sand. Best to deal with the annoying workarounds for now until the next
evolution can be spec'd out and implemented. Otherwise, you risk losing
important e-mail (like joyful oss-security@ mails ;-]).

DMARC is just one aspect of that.  For example, would you also request
> that Openwall will never deploy IPv6 because Gmail rejects mail sent
> over IPv6?
>

[citation needed], considering I've sent mail over IPv6 and received it
just fine on Gmail (Google Apps, specifically).
https://support.google.com/mail/answer/81126?hl=en#authentication even
mentions IPv6 is supported but just has a few extra caveats that must be
followed.

~reed

--001a113ff09cab6adb051b0c3d90--
