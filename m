X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1711" "Saturday" "24" "June" "2017" "23:26:00" "+0800" "Shawn" "citypw@gmail.com" "<CABniQZPtHV+-XiHPRUGcDe+KwEd1JpPdcDb2Xn63t2Z_Os6ETQ@mail.gmail.com>" "51" "Re: [oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method" "^Cc:" nil nil "6" "2017062415:26:00" "[oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method" (number mark "        citypw@gmail Jun 24   51/1711  " thread-indent "\"Re: [oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method\"\n") "<CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>" ("<20170624005003.GB27479@grsecurity.net>" "<CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25767 invoked by uid 550); 24 Jun 2017 15:37:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3658 invoked from network); 24 Jun 2017 15:26:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Yte0345DvZuhb3d1MuiKM6rir8J1IDlEfRu/l2eN/uE=;
        b=YQSNmqkGUBOWeA+Gi39rp3CGVQjwnJ7FrE3oDlhNzUYbMFqpQEHUB4t1XTmXGHVNRm
         IWRe4eBQdnjTrCyGGFg2xRHZRbxNduyynrp334OTew/5B6JvPf3L/7hiQ7R7F933k2k8
         UcMxBm/VXCnSTiuYCMgnw12nN7bITzJK+POOlZn5+vBuARGbuHeILyXvXZPv5QhY1CWw
         unPVjH7KlOOMHmDvuvGSG+EHv31rzkhwE79+7jTaigVXVkJdr7OA/290aVSGIvCNfRnH
         AIX8lzpGfrSbnlHP0RRxPBqk47/2wVIX1/6N4Yr2a2I6BCTd/vsD4gZ57ve3AfaKqca3
         9MVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Yte0345DvZuhb3d1MuiKM6rir8J1IDlEfRu/l2eN/uE=;
        b=m3etcR54oEAmhwBHTSSAqfFR+wLmbzXYRONUBFP/Bs8XT8zt0+MKUeebQECGex6q54
         OCkoR8l/pFOJBdGccrS63dyUewqeZuGSOiXIuZsOJ7akwLd3funMiVDIpP2h3kXBQY4u
         x+Hsl9jPtrqhTIT8KJv0q6YEwyxeCsU9cvvRw5mJHM+lO4YRIR+p+yJ6UNecHGFZzIoX
         jko8nBPfg+mbGNnNV3TpxZkKVYhxqZxYiqJMu71Zgsa6edTAX+6vylwDb3u4Qi347Oi0
         Sg0Rq/R/fKousEXeE9Jpob9PHWf9scz24tl/XTaLylqe95VcVIS7eY5Nohc8oUQP6o9u
         LCUA==
X-Gm-Message-State: AKS2vOwcIjcnRY7o7hipQkpEwPZAcSuM7WQkWzY+WbnXMdQHhHTr0GEe
	+nSPaMBqQ5ipwrBf+B1uk93CXf9a/w==
X-Received: by 10.13.235.20 with SMTP id u20mr1842798ywe.45.1498317961272;
 Sat, 24 Jun 2017 08:26:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>
References: <20170624005003.GB27479@grsecurity.net> <CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>
Message-ID: <CABniQZPtHV+-XiHPRUGcDe+KwEd1JpPdcDb2Xn63t2Z_Os6ETQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Brad Spengler <spender@grsecurity.net>, pageexec@freemail.hu, 
	kernel-hardening@lists.openwall.com
Date: Sat, 24 Jun 2017 23:26:00 +0800
From: Shawn <citypw@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities,
 refcount_t UAF, and an ignored Secure Boot bypass / rootkit method
To: oss-security@lists.openwall.com

Hi Linus,

Not sure how you got the conclusion like "Their patches are pure
garbage."( https://www.spinics.net/lists/kernel/msg2540934.html). I'm
wondering why there's a group of ppl called themselves KSPP got paid
by big corps are still trying to copy+paste PaX/Grsecurity to the
upstream if you think it's a garbage? Did you try to tell KSPP guys to
stop their work( cc'ing kernel-hardening mailinglist)? It's so obvious
to see the most security work( more than just a specific OS)
originally done by PaX/Grsecurity:

https://github.com/hardenedlinux/grsecurity-101-tutorials/blob/master/kernel_mitigation.md

And my customers has been suffering from your philosophical ideas of
"A bug is bug" for too long. I really respect your contributions(
linux kernel/git) to the FLOSS world. But even the open source king
can't change the truth:

https://github.com/hardenedlinux/grsecurity-101-tutorials/blob/master/kernel_vuln_exp.md

btw: You didn't answer Brad's question.


On Sat, Jun 24, 2017 at 9:04 AM, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
> On Fri, Jun 23, 2017 at 5:50 PM, Brad Spengler <spender@grsecurity.net> wrote:
>>
>> BTW, we're happy to go toe-to-toe with you here in public on actual facts
>> instead of pathetic ad hominems.
>
> Quite frankly, I'd much rather see *you* actually send in patches that
> are acceptable for inclusion, something you've never done.
>
> As it is, other people have tried to clean up parts of the grsecurity
> patches, and tried to make them acceptable.
>
> Wouldn't it be nice if you actually tried to make the baseline actually better?
>
> Please.
>
>                 Linus



-- 
GNU powered it...
GPL protect it...
God blessing it...

regards
Shawn
