X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1084" "Wednesday" "19" "August" "2015" "15:34:52" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNWJUr+wOmft+vq2R1dr97BSE_xkeVfg9Eyx+CGUeXfWPA@mail.gmail.com>" "25" "Re: [oss-security] CVE REJECT noise" nil nil nil "8" "2015081922:34:52" "[oss-security] CVE REJECT noise" (number mark "        reed@reedlod Aug 19   25/1084  " thread-indent "\"Re: [oss-security] CVE REJECT noise\"\n") "<20150819220635.GA20939@openwall.com>" ("<20150819214225.GA20825@openwall.com>" "<CANO=Ty3WvawiwP7FbyzCjPrx9BK9pnzPc-EPq2RHw=E2uKH_ow@mail.gmail.com>" "<20150819220635.GA20939@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22218 invoked by uid 550); 19 Aug 2015 22:35:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22190 invoked from network); 19 Aug 2015 22:35:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=skFuztrnpi1M1x0Qb6bfqNYuUHGNK5qJl2ha4LWaxOc=;
        b=f73GCJDC1qWbYnnkDfjEkTdnVsMCthpTnO1slzgLOyW3+V6LbDvjyDA8Kx7eS9TYrx
         z24YYbzI2jZx4oOm87+KzlQ9z836o4ugm8Lvqpn8UUQq7ySxRJhZiSUZYNhWWldp1WX/
         mFU8mbcjlETszOVnDKvcIGY+klG9Bvjm9Jp4E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=skFuztrnpi1M1x0Qb6bfqNYuUHGNK5qJl2ha4LWaxOc=;
        b=WcqU2SRKkYKj1jphaZEK100L4ZmVktXarTMeDB4a2ixcKGHLDWfKlg3h7J8MpIKGrD
         OouXgMF4NAMCnMEW5RwuJShdCDpzLTjS8cRexpZO1P/twb9FCOl36Ki2Myja5jpnVdeW
         GHH4OC1CiXmCoc4GCpLFIFu7INPqrYvi6Aon1KkSP78y55RCeBA6Bh3f/F4TQxbTHv8m
         VI3oxIIEaIn9R9UtPlwwWOUjlhErPPh7AkWILMGw766bZC/J3tsZn9N6Zh9eOPHrBdeK
         DjKNNaba3HiU+lUDRd5ThSc+scs1vry/rjiUtS2IXBvnq9BiE/kuggd77Q39Y44EXAto
         DnpQ==
X-Gm-Message-State: ALoCoQmGiUG2X9a9360xlX20H7xDK0NMXL0Ob7boDaAqG3JI6UjkNnKpGUcrXn4YuL5Yp+UkGUWP
X-Received: by 10.50.143.2 with SMTP id sa2mr4743783igb.92.1440023711521; Wed,
 19 Aug 2015 15:35:11 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150819220635.GA20939@openwall.com>
References: <20150819214225.GA20825@openwall.com> <CANO=Ty3WvawiwP7FbyzCjPrx9BK9pnzPc-EPq2RHw=E2uKH_ow@mail.gmail.com>
 <20150819220635.GA20939@openwall.com>
Message-ID: <CALPTtNWJUr+wOmft+vq2R1dr97BSE_xkeVfg9Eyx+CGUeXfWPA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1134b594cb32eb051db1a521
Date: Wed, 19 Aug 2015 15:34:52 -0700
From: Reed Loden <reed@reedloden.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE REJECT noise
To: oss-security@lists.openwall.com

--001a1134b594cb32eb051db1a521
Content-Type: text/plain; charset=UTF-8

On Wed, Aug 19, 2015 at 3:06 PM, Solar Designer <solar@openwall.com> wrote:

> So, once again, can _only_ those people who want to see non-informative
> CVE REJECT postings in here state so, please?  I don't need to hear from
> the 99%+ of people who I am sure don't want to see those postings in
> here.  That's obvious.  I also already know your preference, Kurt.
>
> And let's end this thread soon.  It isn't meant to be long, or that
> would defeat the purpose.  But for now, the thread is open in case
> anyone at all (besides Kurt) has any objections to the proposed decision
> or wants to establish another mechanism for them to receive those
> seemingly useless messages.
>

It really comes down to whether the (invalid) CVE assignment has been used
in any public capacity at all. If it has, then it's very useful to know
about it, as that has been a source of confusion in the past. If not, then
only MITRE really needs to know so they can update their records.

~reed

--001a1134b594cb32eb051db1a521--
