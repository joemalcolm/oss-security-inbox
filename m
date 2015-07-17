X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2834" "Thursday" "16" "July" "2015" "17:41:35" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNUgpuWSznYT77cY8fTFPMgzDW-TN-VC3agv982Socc4Qg@mail.gmail.com>" "88" "Re: [oss-security] Re: ezmlm warning" nil nil nil "7" "2015071700:41:35" "[oss-security] Re: ezmlm warning" (number mark "        reed@reedlod Jul 16   88/2834  " thread-indent "\"Re: [oss-security] Re: ezmlm warning\"\n") "<CAPiURgVcmtPDG6APOESc5tG_sAjaA2JHOwThc+ByeSHQftDb8g@mail.gmail.com>" ("<1436834771.18369.ezmlm-warn@lists.openwall.com>" "<CAPiURgVcmtPDG6APOESc5tG_sAjaA2JHOwThc+ByeSHQftDb8g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22497 invoked by uid 550); 17 Jul 2015 00:42:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22479 invoked from network); 17 Jul 2015 00:42:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=ROvKGehqgju3DajxS3wmlDP1f56EgJqmY0Hx1l+a/dE=;
        b=S0/RfLYYdjFqCUMnnvtW1WBxRb2qToFfyhn4qAvvLs/L3GtzoTnVaYz8IPrdDMvUUq
         hmxzQYOsEDN597kUmDm9krr4weVoIBf+JlMWxnrZgH8N9ohRftE6Sw3831p6o/uUPj77
         fVOu2S49v/cVJwRR5XlScTdtS2J3q02Bpnk+o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=ROvKGehqgju3DajxS3wmlDP1f56EgJqmY0Hx1l+a/dE=;
        b=W4cXwIcMv3MIxjcre9H16YCXc3JNkfo8MTi3xO/goVuGlpxe8usBqPlRthHAY6hEpO
         aOTTJb20YDnB7ASoDbb+qKkvUewiJjnG8Zgm04Etswany1lkEq4pQGVi3e0/C2ev4lAn
         /Xd+9gxlIp7CQRxsyDDMiIgPHVmpomkrXuMsxXY2nAzniCifc5ID277tkemKc06HNO/n
         hbUtagHOoQAx1GfZtnjkkuRBg56YrGlAgmkDTKGXxBf/blI6ezpSeevw5bZkyIHxoLA0
         znOWUIRrvms9VziFlfcLZytWTzh+QvlMEbGd2Be+mKipEUhLTB/K946PkkN8wj/TF4xd
         vRSA==
X-Gm-Message-State: ALoCoQmB6Jw1OL6Z6NpM4C3C3XeFydBpDlX5BbCFn+PHnfvuFu/cp3p4JBvTuRfjsWqHu0jT8Uyo
X-Received: by 10.50.7.68 with SMTP id h4mr8255317iga.40.1437093714832; Thu,
 16 Jul 2015 17:41:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAPiURgVcmtPDG6APOESc5tG_sAjaA2JHOwThc+ByeSHQftDb8g@mail.gmail.com>
References: <1436834771.18369.ezmlm-warn@lists.openwall.com> <CAPiURgVcmtPDG6APOESc5tG_sAjaA2JHOwThc+ByeSHQftDb8g@mail.gmail.com>
Message-ID: <CALPTtNUgpuWSznYT77cY8fTFPMgzDW-TN-VC3agv982Socc4Qg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e0102f45661cc59051b0774ed
Date: Thu, 16 Jul 2015 17:41:35 -0700
From: Reed Loden <reed@reedloden.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: ezmlm warning
To: oss-security@lists.openwall.com

--089e0102f45661cc59051b0774ed
Content-Type: text/plain; charset=UTF-8

Yup, I get these, too... Been happening for almost a year. See also
http://seclists.org/oss-sec/2014/q3/471.

Likely, the ezmlm instance on lists.openwall.com needs to be updated to get
some of the DMARC compliance changes that were made last year (
http://untroubled.org/ezmlm/archive/7.2.2/CHANGES).

~reed

On Mon, Jul 13, 2015 at 5:48 PM, Grant Ridder <shortdudey123@gmail.com>
wrote:

> Anyone else get an email like this?  Is the list misconfigured due to
> Yahoo's DMARC change a bit ago?
>
> -Grant
>
> On Mon, Jul 13, 2015 at 5:46 PM, <oss-security-help@lists.openwall.com>
> wrote:
>
> > Hi! This is the ezmlm program. I'm managing the
> > oss-security@lists.openwall.com mailing list.
> >
> > I'm working for my owner, who can be reached
> > at oss-security-owner at lists.openwall.com.
> >
> >
> > Messages to you from the oss-security mailing list seem to
> > have been bouncing. I've attached a copy of the first bounce
> > message I received.
> >
> > If this message bounces too, I will send you a probe. If the probe
> bounces,
> > I will remove your address from the oss-security mailing list,
> > without further notice.
> >
> >
> > I've kept a list of which messages from the oss-security mailing list
> have
> > bounced from your address.
> >
> > Copies of these messages may be in the archive.
> >
> > To retrieve a set of messages 123-145 (a maximum of 100 per request),
> > send an empty message to:
> >    <oss-security-get.123_145@lists.openwall.com>
> >
> > To receive a subject and author list for the last 100 or so messages,
> > send an empty message to:
> >    <oss-security-index@lists.openwall.com>
> >
> > Here are the message numbers:
> >
> >    17183
> >    17194
> >
> > --- Enclosed is a copy of the bounce message I received.
> >
> > Return-Path: <>
> > Received: (qmail 12122 invoked for bounce); 2 Jul 2015 05:03:53 -0000
> > Date: 2 Jul 2015 05:03:53 -0000
> > From: MAILER-DAEMON@mother.openwall.net
> > To: oss-security-return-17183-@lists.openwall.com
> > Subject: failure notice
> >
> > Hi. This is the qmail-send program at mother.openwall.net.
> > I'm afraid I wasn't able to deliver your message to the following
> > addresses.
> > This is a permanent error; I've given up. Sorry it didn't work out.
> >
> > <shortdudey123@gmail.com>:
> > 64.233.165.26 failed after I sent the message.
> > Remote host said: 550-5.7.1 Unauthenticated email from yahoo.com is not
> > accepted due to domain's
> > 550-5.7.1 DMARC policy. Please contact administrator of yahoo.com domain
> > if
> > 550-5.7.1 this was a legitimate mail. Please visit
> > 550-5.7.1  https://support.google.com/mail/answer/2451690 to learn about
> > DMARC
> > 550 5.7.1 initiative. qo3si969874lbb.122 - gsmtp
> >
> >
>

--089e0102f45661cc59051b0774ed--
