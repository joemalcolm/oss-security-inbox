X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1166" "Saturday" "11" "April" "2015" "15:07:35" "+1000" "Michael Samuel" "mik@miknet.net" "<CACYkhxjCZOq_yxpn2C9PHRdZVxfs7HMM5K2Af4k-zURqTfeydw@mail.gmail.com>" "43" "Re: [oss-security] Re: [CVE Requests] rsync and librsync collisions" nil nil nil "4" "2015041105:07:35" "[oss-security] Re: [CVE Requests] rsync and librsync collisions" (number mark "        mik@miknet.n Apr 11   43/1166  " thread-indent "\"Re: [oss-security] Re: [CVE Requests] rsync and librsync collisions\"\n") "<552897A1.7040504@redhat.com>" ("<540E7816.90001@redhat.com>" "<20140912183958.D1DA96C000A@smtpvmsrv1.mitre.org>" "<CACYkhxhmU74Xsi4H_tBYxY17Y0ovHDdrPfn1pLp1hW6OY6U8dw@mail.gmail.com>" "<CAOp4FwTAFW816AHSE8xZHvVXTYEtArDTNPzTiU+5sOYdEw4efA@mail.gmail.com>" "<CACYkhxjxuCUj0b5VzicAzKgq42xFU2Rdk736yETPY1d11h5xcw@mail.gmail.com>" "<20150410092652.GA27909@blema.cz>" "<CACYkhxi5OpJ_RBHMC8Eyx514Pd_DuhNUr3pkWB3DjVG=Jx6XNA@mail.gmail.com>" "<552897A1.7040504@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19860 invoked by uid 550); 11 Apr 2015 05:08:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19839 invoked from network); 11 Apr 2015 05:08:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=miknet.net; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=nARx1X4c4gNTXA3hEsvKDAs75zkiirDjn7itjk6rBxQ=;
        b=MDxBv7fLGx5WmAh4qsI0hzneO6VTVFBfxVxDDTAG877PuChJz+xCZT/fW3DSXxCrQu
         lmjcycEv+pw2EM8m6SrOjp2DyJ+6ruHpCa5o8MV0A5sZnZVGo5QnJT5s+Q5hwDriyqB7
         Tt6U0aq3cZyLYZ4fGjCDLHFtdsqlu6fWb9++c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=nARx1X4c4gNTXA3hEsvKDAs75zkiirDjn7itjk6rBxQ=;
        b=Fso7l5FULysuzyFfglhd40yqJRhZguyInak+ZS2DoOzs68VLTq3I+xZpt/RtlbcF1J
         hRc+e9j8P7/j8QcjJUWJYfEWMP2CYgvVZAsAJfKSmOB/SKVv8lx9gadUVIeP7hso7w3R
         7rpmP1tWg+5nNmnLxHmurBoJYEKVFwa13tN6c2XpyrC5nnL35k9HplWPMnadr2B5QQha
         7Wpcc/E+y2kwwpc9TfahaGIAqXVgK9mINPyrbt2jySmJoqKoxMARK9JjMfafv+ar4Oki
         hwhfah160NOHsh5U5QLCQqTD1WpKs9hWgsrgTDGE64s465K7pc3S0zwvKAmtqMCYNr/o
         Yv+w==
X-Gm-Message-State: ALoCoQlrhzirf3YrKaBk8VqvS7yJfQ6s1QTMc9e8EjQSFjAQMHFrChaPIscYineWAz3ZGMZsnQKx
X-Received: by 10.42.224.1 with SMTP id im1mr7779818icb.55.1428728876073; Fri,
 10 Apr 2015 22:07:56 -0700 (PDT)
MIME-Version: 1.0
X-Originating-IP: [202.147.141.11]
In-Reply-To: <552897A1.7040504@redhat.com>
References: <540E7816.90001@redhat.com> <20140912183958.D1DA96C000A@smtpvmsrv1.mitre.org>
 <CACYkhxhmU74Xsi4H_tBYxY17Y0ovHDdrPfn1pLp1hW6OY6U8dw@mail.gmail.com>
 <CAOp4FwTAFW816AHSE8xZHvVXTYEtArDTNPzTiU+5sOYdEw4efA@mail.gmail.com>
 <CACYkhxjxuCUj0b5VzicAzKgq42xFU2Rdk736yETPY1d11h5xcw@mail.gmail.com>
 <20150410092652.GA27909@blema.cz> <CACYkhxi5OpJ_RBHMC8Eyx514Pd_DuhNUr3pkWB3DjVG=Jx6XNA@mail.gmail.com>
 <552897A1.7040504@redhat.com>
Message-ID: <CACYkhxjCZOq_yxpn2C9PHRdZVxfs7HMM5K2Af4k-zURqTfeydw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Sat, 11 Apr 2015 15:07:35 +1000
From: Michael Samuel <mik@miknet.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: [CVE Requests] rsync and librsync collisions
To: oss-security@lists.openwall.com

Hi Kurt,

Murray McAllister handled the response to this when I reported it to secalert@
but it's currently languishing in BZ#1126713

If you want I can send my patch as a starting point - it got really
nasty because
nobody considered that strong sums would be >16 bytes when writing rsync.

Regards,
  Michael

On 11 April 2015 at 13:40, Kurt Seifried <kseifried@redhat.com> wrote:
> If you'd like Red Hat can:
>
> 1) handle disclosure coordination (like we do for OpenSSL)
>
> and/or
>
> 2) handle patching/etc, we ship rsync so this is obviously of interest
> to us.
>
> Contact secalert@redhat.com if you want and either myself or a coworker
> will handle this. Thanks!
>
> On 04/10/2015 08:06 PM, Michael Samuel wrote:
>> Hi,
>>
>> On 10 April 2015 at 19:26, Vitezslav Cizek <civ@blema.cz> wrote:
>>
>>> Was there any further progress with the rsync upstream?
>>> Are they planning to address this issue or is there no interest?
>>
>> No further progress with upstream, it's possible that rsync is abandoned.
>>
>> Regards,
>>   Michael
>>
>
> --
> Kurt Seifried -- Red Hat -- Product Security -- Cloud
> PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
>
