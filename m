X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["736" "Friday" "15" "June" "2018" "07:57:21" "-0700" "Anthony Liguori" "anthony@codemonkey.ws" "<CA+aC4kut+oE2UsWj0nro+_qpKgwvZqV-pfAKBP8y_xT2WMVjCA@mail.gmail.com>" "21" "Re: [oss-security] Intel FP security issue" "^Date:" nil nil "6" "2018061514:57:21" "[oss-security] Intel FP security issue" (number mark "        anthony@code Jun 15   21/736   " thread-indent "\"Re: [oss-security] Intel FP security issue\"\n") "<20180615141249.GA14370@openwall.com>" ("<7ea0793c-b5c5-429c-adbe-96bb8437bd69@amazon.com>" "<20180615141249.GA14370@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1822 invoked by uid 550); 15 Jun 2018 15:24:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11325 invoked from network); 15 Jun 2018 14:57:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codemonkey-ws.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=Cuf0Zuqe5uKZbnY2dvO0mevyLwihyiMVVaWZVfH+IOc=;
        b=bnILb9PhTcfiKzb/XgIug2V6IRf3pi1p73RL4CNXpUl1SIUBiVnemBI+PioO8FRCQr
         rZRH/FQuyAs5870OVIgsXIDhlPY923e1AzyhN3PnEd6odwHhuFhF8f/p+2ZRGjwLLcFD
         efhJo+/nIUD+jL5y/Pk+Nspj+Qfdq1+o2x1UkqZR9Ia+037RAAPHoNf15tTz+Xpe7p5f
         44lHo5TN3IHYojeTnmqJV+w0VUZ/rfRvFms7WmZ+L4pHSwmxk5d31EzNI+R0MPYh8lpo
         ZTDappYUEnq/aLW638Ogd345sxrgixJt3tBmPipkZNmvk5V7Dw/v0V/nAHlalVKQsNaA
         4lLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=Cuf0Zuqe5uKZbnY2dvO0mevyLwihyiMVVaWZVfH+IOc=;
        b=BnYCZ4r/bq1Jyhk6bPXYBpLk3r74nR08bIk/htF3VGxj+GVgzJk4nPPFUSw7YrPhIt
         nZDf0AlljZQVLngRGzIAxc+BtlqSMDyQpNHKrTN8hY6WW+od0mvYxkwK109sEy5EBFZK
         3UPVvDtUc/BHhjbPutc/dmJ39qd141xilReAOHweKANpk93ABUwBVVsVq1wB3yodIJZU
         tiC9maXXS7YLuYSQ70qPSAzc4q14jr06BOjprWfPtro6jwWkY2WBiFGVSQq+NDJJWj+g
         KlVVME8JTYBuBjEAkPb1zvT71pWfXJW7heGb95jhViEnxfS4MThMrTQ25TGgyVIOBeaF
         kfBA==
X-Gm-Message-State: APt69E1JcAYZZ8L9auARBFHMEIfFGdZeYfcit5Tl2uhloJAutVBtkRCU
	V+acRgmKZXnZXHGH3cyAgTmOzex4HFaDDy080zv5IxEP
X-Google-Smtp-Source: ADUXVKLMpfRGpN2c/a19Y6ST1AAJfauMgUWF7fSMOPda5hXAF9Yu/4EopuCbXILNS8A3ajC2gP+CupZYjhwdG65ZkTA=
X-Received: by 2002:a19:184e:: with SMTP id o75-v6mr1300880lfi.118.1529074641592;
 Fri, 15 Jun 2018 07:57:21 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180615141249.GA14370@openwall.com>
References: <7ea0793c-b5c5-429c-adbe-96bb8437bd69@amazon.com> <20180615141249.GA14370@openwall.com>
Message-ID: <CA+aC4kut+oE2UsWj0nro+_qpKgwvZqV-pfAKBP8y_xT2WMVjCA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 15 Jun 2018 07:57:21 -0700
From: Anthony Liguori <anthony@codemonkey.ws>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Intel FP security issue
To: oss-security@lists.openwall.com

On Fri, Jun 15, 2018 at 7:12 AM, Solar Designer <solar@openwall.com> wrote:
> On Fri, Jun 15, 2018 at 01:36:05PM +0000, Liguori, Anthony wrote:
>> The discover sent a post here but I suspect it's stuck in the moderation queue.  I'll repost later today.
>
> There's nothing like this in the moderation queue.  Also not in the spam
> filter.  Please repost right away.

Hrm, I'll check with the reporter but I just sent it myself.  Should
appear shortly.

> BTW, the above message of yours lacks an In-Reply-To header, even though
> it appears to be a reply to Marcus' message.  So technically it started
> a new thread.  There's probably something broken on your end.

Yes, phone email client :-/

Regards,

Anthony Liguori

> Alexander
