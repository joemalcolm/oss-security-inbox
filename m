X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1150" "Saturday" "8" "May" "2021" "00:24:11" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" nil "40" "Re: [oss-security] Linux kernel: f2fs: out-of-bounds memory access bug" nil nil nil "5" nil nil (number mark "U       butterflyhua May  8   40/1150  " thread-indent "\"Re: [oss-security] Linux kernel: f2fs: out-of-bounds memory access bug\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: f2fs: out-of-bounds memory access bug" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5985 invoked by uid 550); 7 May 2021 16:27:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3769 invoked from network); 7 May 2021 16:24:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=rtJJtj8HqgIp1F7y2/U5j0JoliiDLMMXdFu0Hq0Nh1Q=;
        b=QR6bduCnlikuRFWibgU/tPjNLB9Zyopojk9qL30pFyY4sTWaDm0uvp6evgPAD/DYeD
         WJNFAoCLV2lzWU1HuhuIe511zw8tQS8WtFzk0XndHumKkyUce3U9Mk/Jc47mb2K6EZVQ
         Uy1PkuilAdYfaVrpYebP/rmbSxC0Q+mCTihybzb/X12ijtIZwJHV1xqnAsneCQgFlugn
         A3Gv7uVnVN87wtnLQGy7QRFKYQ9dPwdNp2Z5S/yyliESiIO/R1V4TrHq3kNOQAAzCa4p
         rPf1Vhb0TB7qKKPPm72hO2PSlfMEtJ69poLmdc2qraPeFpSlxv0tPmhVCb3NPCSeA6UE
         X8sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=rtJJtj8HqgIp1F7y2/U5j0JoliiDLMMXdFu0Hq0Nh1Q=;
        b=gDDsIekK0//nfkpnaeLVVtjsfg9jBX6oq5GDlPM0OIQ0iOLEti9hbDj0ZNPQOwVLwd
         YoUIcjiyOA1Xajjbly+vOXgFY0q5UlslGbmRDIT0RA25KUNKx8/vfxecoX+2oQSQ/XvK
         WXj4FAKtIitNd+olQCWl2jTDB9hlf1vHrMNDoaTH61VV97iim50bW6q+8L4oEysPOefG
         9bLUfnCWwdgxPdWbA3JLm4JsVXP8Qi94ZCu6+ABBqWOIGFgonE4+9vGjEHLlnkdBTn+1
         vN/vP0+jrclW2cYWP9dtHidqxLz3N4zgH+aO5HU4WygdvrJhG32S5kcOi1ttzVllOwIL
         Jubw==
X-Gm-Message-State: AOAM530AmrqPsa2CP2kQjr82xqueTdw5pdXVL9jseUcTxA2CxCQ6SYU/
	EIgS1rQ7AtThh6E5HHMEeMmEplIIzZ+viTql3eCPQbkC
X-Google-Smtp-Source: ABdhPJwU5e+GBIjAJscXR7t/gmcEnJlzmjVMeutJGQ9zMQmsNGouCUkZgEiNhZhj6OAL/lFA/cba/cHKt/7htkiAmPI=
X-Received: by 2002:a25:2944:: with SMTP id p65mr14479578ybp.90.1620404662733;
 Fri, 07 May 2021 09:24:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAFcO6XO2k=X2H24tg_GTgoTQMLv=0ajAyuyeK0YKgvqiM5vPWg@mail.gmail.com>
In-Reply-To: <CAFcO6XO2k=X2H24tg_GTgoTQMLv=0ajAyuyeK0YKgvqiM5vPWg@mail.gmail.com>
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Sat, 8 May 2021 00:24:11 +0800
Message-ID: <CAFcO6XOOjFd7XKuMVDyGXka+jdk3=RXFAe2a11SV20_JZzYHqw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Linux kernel: f2fs: out-of-bounds memory access bug

The patch is for this issue in upstream linux:

https://git.kernel.org/pub/scm/linux/kernel/git/jaegeuk/f2fs.git/commit/?h=dev&id=b862676e371715456c9dade7990c8004996d0d9e

Regards,
 butt3rflyh4ck.


On Mon, Mar 29, 2021 at 12:00 AM butt3rflyh4ck
<butterflyhuangxx@gmail.com> wrote:
>
> Hi,
>
> I reported an out of bounds memory access bug in get_next_net_page()
> in fs/f2fs/node.c and reproduce in 5.12.0-rc3. Now the patch is out
> and tested it in 5.12.0-rc4.
>
> Root Cause:
>  the f2fs_flush_nat_entries()  function is called during the
> checkpointing process,
> when it flush dirty nats in nat entry sets, it will call
> __flush_nat_entry_set(), but before call it,the legality of nids is
> not correctly tested. If the nids is out of range, may access
> out-of-bounds memory.
>
> Some details and Patch for this issue:
> https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg2520013.html
> Now the patch is not available in upstream, CVE is not assigned.
>
> Now announced on oss-security@lists.openwl.com.
>
> This issue was discovered by the ADLab of venustech.
>
> Regards,
>  butt3rflyh4ck.



-- 
Active Defense Lab of Venustech
