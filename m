X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["518" "Thursday" "28" "January" "2021" "08:24:10" "+0530" "Siddhesh Poyarekar" "siddhesh.poyarekar@gmail.com" "<CAAHN_R0By+J-YoqZ-8amdM9SrZ8_EnHdTgiVtufPPZF-ZwEgPw@mail.gmail.com>" "13" "Re: [oss-security] glibc iconv crash with ISO-2022-JP-3" nil nil nil "1" "2021012802:54:10" "[oss-security] glibc iconv crash with ISO-2022-JP-3" (number mark "U       siddhesh.poy Jan 28   13/518   " thread-indent "\"Re: [oss-security] glibc iconv crash with ISO-2022-JP-3\"\n") "<CAAHN_R0exjG2uBAqMWF-4Pznew5==DzzH8dNQdj=4vXXoX1dyw@mail.gmail.com>" ("<rus04o$q3o$1@ciao.gmane.io>" "<CAAHN_R0exjG2uBAqMWF-4Pznew5==DzzH8dNQdj=4vXXoX1dyw@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] glibc iconv crash with ISO-2022-JP-3" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13820 invoked by uid 550); 28 Jan 2021 17:49:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31760 invoked from network); 28 Jan 2021 02:54:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=Ist3Uc/TS17PrrDoehgbltqcoywIy644dLpY6SUxDXE=;
        b=L9uBQoKTzXqpzsqyLo8Ei/jns04k8u/wWdKMH7W0VIkYHR2oZDBBK1kUqPR8Go2qtr
         UskuS1g98B6x4zv1HGoigFMp8WRYmleG7/YwghlVdV83NtcWSYLtBySUgM6lKxtehhSq
         w6UbDRTjAAInNeQYbBfQfN+Drcp2jN6zH1JU3JDlZ3Ur1kUj4LamCrfY6sUQoz17nUi/
         fzuGfYLBwSf/0dykMWF1/l0jTOWnekbbgiXodIWbfu7ZNjeBdGf9FJg6fkpy8MruT7wo
         LI0GmYGA7Z+Ggr+ihM1Yl5cKBMRgepzB9a8cvKzgscJoe/Hxjcm7ksBN5dWImKO9xHS+
         /GLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=Ist3Uc/TS17PrrDoehgbltqcoywIy644dLpY6SUxDXE=;
        b=PSA+8FpSjP7fBPjDjKXkyHXMTF5Cl5SFrAXMsHxWNUZGzYgjIqDn88p341/kJ+QJLt
         f0Htf7dNvtNvAZte5KvInPPj0vfGy5gApLYaFXf4g4jWYI5c/ZXFoeEaMocg3QSsplip
         I2JEawjCPUURnvTsoS2UI17yi10sfNgcp/SJ6OeoQL2Wb78Ko4vVhhDzKobwkmJhHM2Z
         kR48dQ2/DnSmpbUbfSi3L2ub3LeFpdGQFai/IqD6O4lvoDU9Y9AWO3OsR4wcDMQLBiFT
         ZRIcZlVHKnBGWAxHmaYZAOZ8PTJLFYMc7oXiiNx2vJFIYTgLw4tUh9MyXQSPyEd1wMPN
         LlQw==
X-Gm-Message-State: AOAM5302/f1bk/d5eU1uiiLExRbHBLRPCKIxTYm164FKbK9VV0+5fYt8
	dNHBL4BW7hwMLpqsRgPC7LgyaVvT96/gTcxWdOSLzH4Wxmw=
X-Google-Smtp-Source: ABdhPJwQSrXONflneH/IF9LKPMe7DlaUoQa+Xun3Fi8+JQ1uhjD2urNdljx9hCT61QHzq5v4XXPcvdcYSSrbBgD+m7c=
X-Received: by 2002:a05:6512:751:: with SMTP id c17mr5694442lfs.94.1611802464788;
 Wed, 27 Jan 2021 18:54:24 -0800 (PST)
MIME-Version: 1.0
References: <rus04o$q3o$1@ciao.gmane.io> <CAAHN_R0exjG2uBAqMWF-4Pznew5==DzzH8dNQdj=4vXXoX1dyw@mail.gmail.com>
In-Reply-To: <CAAHN_R0exjG2uBAqMWF-4Pznew5==DzzH8dNQdj=4vXXoX1dyw@mail.gmail.com>
From: Siddhesh Poyarekar <siddhesh.poyarekar@gmail.com>
Date: Thu, 28 Jan 2021 08:24:10 +0530
Message-ID: <CAAHN_R0By+J-YoqZ-8amdM9SrZ8_EnHdTgiVtufPPZF-ZwEgPw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] glibc iconv crash with ISO-2022-JP-3

On Wed, 27 Jan 2021 at 21:08, Siddhesh Poyarekar
<siddhesh.poyarekar@gmail.com> wrote:
>
> On Wed, 27 Jan 2021 at 21:03, Tavis Ormandy <taviso@gmail.com> wrote:
> > The impact is just that you can't open your mail client, because it
> > crashes as soon as it sees the subject.
> >
> > Upstream bug: https://sourceware.org/bugzilla/show_bug.cgi?id=27256
> > Patch: https://sourceware.org/pipermail/libc-alpha/2021-January/122058.html
>
> FYI, I have filed a CVE request for this with Mitre.

This is now CVE-2021-3326.
