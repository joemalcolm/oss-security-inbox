X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["848" "Monday" "19" "September" "2016" "14:01:08" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNX6gO6We7_3=Wf4xXdt6er8PwmPNjCWTwhZ-0jQ5GkU-g@mail.gmail.com>" "27" "Re: [oss-security] Re: ezmlm warning" nil nil nil "9" "2016091921:01:08" "[oss-security] Re: ezmlm warning" (number mark "U       reed@reedlod Sep 19   27/848   " thread-indent "\"Re: [oss-security] Re: ezmlm warning\"\n") "<20150718174051.GB2727@openwall.com>" ("<1436834771.18369.ezmlm-warn@lists.openwall.com>" "<CAPiURgVcmtPDG6APOESc5tG_sAjaA2JHOwThc+ByeSHQftDb8g@mail.gmail.com>" "<CALPTtNUgpuWSznYT77cY8fTFPMgzDW-TN-VC3agv982Socc4Qg@mail.gmail.com>" "<20150718174051.GB2727@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15490 invoked by uid 550); 19 Sep 2016 21:01:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15468 invoked from network); 19 Sep 2016 21:01:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=F8ZTqHvTa/yt8j2qXJjxx/ruODU5AoqpxGsI0m6PtUw=;
        b=FF9SyVpc9M+HXX1Rc+1+cgxowiqr39go/osz2uGjPUBeEYnwWXagpbugXTgVbu51f8
         Xc5JI9A4wggcVtFoUQVbrs8/C4F4NyU2CQ8fZ3ezOLGSykw0eO5d8Z8G7XOwtfgM0XhL
         ukfKgNeUCsNWQtlCsfA+hD0b5B7nYI2DbYun4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=F8ZTqHvTa/yt8j2qXJjxx/ruODU5AoqpxGsI0m6PtUw=;
        b=kIpmlf1FTxoNXxHaf/g+GjmKsPHY+2I/cm/snmAu7K+8rHq1JKesNiC5tx7x04WYXH
         X+noqluFJYs/6+9AakGI7PTmfFxpKYiegFR8SS66E8VqZWezx0pKgj0rqrjaJCxgEeFg
         RjhpWdBaF6tCTqxPMsSfh/bH21m/hlApW3nP7UmG5RadUp3NPX2kiIQ5bGqxWx0so63d
         IA7rmsd4bmH5g4BQnt8hkKpw3r3qO/B4vIVjUwSR/+A6EEDZgrr34/vIqoHxfqX81dxM
         rYR7DNSSa6TtHUwaAmFHRlrVI+uC+MqBvR3i8fqRNPC1LBySleUeuZuV1A0v1D9EDrNr
         bY+w==
X-Gm-Message-State: AE9vXwOY8/xSfgvmmvTNLYp7bC8xbOGrB7e5fERqLDKuwMNhw6RwovT2S0EVIejWk02HxEt7HfJqNKVqhApUjkQE
X-Received: by 10.107.27.14 with SMTP id b14mr43013822iob.60.1474318888573;
 Mon, 19 Sep 2016 14:01:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150718174051.GB2727@openwall.com>
References: <1436834771.18369.ezmlm-warn@lists.openwall.com>
 <CAPiURgVcmtPDG6APOESc5tG_sAjaA2JHOwThc+ByeSHQftDb8g@mail.gmail.com>
 <CALPTtNUgpuWSznYT77cY8fTFPMgzDW-TN-VC3agv982Socc4Qg@mail.gmail.com> <20150718174051.GB2727@openwall.com>
From: Reed Loden <reed@reedloden.com>
Date: Mon, 19 Sep 2016 14:01:08 -0700
Message-ID: <CALPTtNX6gO6We7_3=Wf4xXdt6er8PwmPNjCWTwhZ-0jQ5GkU-g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a113fdd68a3b018053ce29d1e
Subject: Re: [oss-security] Re: ezmlm warning

--001a113fdd68a3b018053ce29d1e
Content-Type: text/plain; charset=UTF-8

On Sat, Jul 18, 2015 at 10:40 AM, Solar Designer <solar@openwall.com> wrote:

> On Thu, Jul 16, 2015 at 05:41:35PM -0700, Reed Loden wrote:
> > Likely, the ezmlm instance on lists.openwall.com needs to be updated to
> get
> > some of the DMARC compliance changes that were made last year (
> > http://untroubled.org/ezmlm/archive/7.2.2/CHANGES).
>
> Thank you.  I assume you mean primarily this one:
>
> - Added optional rewritefrom feature to ezmlm-send, automatically
>   enabled when the sender has a "reject" DMARC policy.
>

Alexander,

Any update on getting the ezmlm instance on oss-security updated so people
with e-mail providers who have implemented DMARC don't get their e-mails
rejected? Would be much appreciated.

Thanks,
~reed

--001a113fdd68a3b018053ce29d1e--
