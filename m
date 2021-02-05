X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1126" "Friday" "5" "February" "2021" "10:02:09" "-0500" "Alex Gaynor" "alex.gaynor@gmail.com" "<CAFRnB2W5J+vibKP58U36UJkq=G1BAzSLKtNHqodgi+LAhkrvNg@mail.gmail.com>" "44" "Re: [oss-security] CVE-2021-20226 kernel: use-after-free in io_uring feature" nil nil nil "2" "2021020515:02:09" "[oss-security] CVE-2021-20226 kernel: use-after-free in io_uring feature" (number mark "U       alex.gaynor@ Feb  5   44/1126  " thread-indent "\"Re: [oss-security] CVE-2021-20226 kernel: use-after-free in io_uring feature\"\n") "<CAKx+4-p+SyakmdxCd0XDm-1U3inx6uMdCNbhg_Y6270aXkaNJg@mail.gmail.com>" ("<CAKx+4-p+SyakmdxCd0XDm-1U3inx6uMdCNbhg_Y6270aXkaNJg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-20226 kernel: use-after-free in io_uring feature" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21994 invoked by uid 550); 5 Feb 2021 15:02:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21967 invoked from network); 5 Feb 2021 15:02:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=/5+i3RtKV6tgno9JFp1PrGcA/Vk249FIz5o0ClqmBCI=;
        b=TYfIVNCN2952uzV6EWrAPde+IdTWtyBikd9k4Q1niArvJA6xnEtx9fgz++uNipWNpX
         BY0ToUpX/F1zP+xX09r9EXibvZhe03rCCwM+asWtGIxEWv9z+Lns9zhTSBn5e6kKU9hD
         dYrXFvudVNPzD7X1gdF0ZaSDEseNYaly3DecAD3j/3MiX3o17yRPwWbTnjLAA/qVCxb8
         bkfUA4YHXH+8crTMvzKNNSehFbjhjIqaJNN8cII9v7bdxRVrCHC/H+pDmLu+tYtxQYRy
         E7JScrWXzjNoBYPVdF2jqVen2mPmVkeHpB7t/iBxHAxIjypHQcWtIKKK2qM2rdHsIC1C
         R4HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=/5+i3RtKV6tgno9JFp1PrGcA/Vk249FIz5o0ClqmBCI=;
        b=H8mFBaUKgSnaa5QScUz2+gs0EvFEx3PRL1nMjWTH04f+LFnWuNExd+IU4JSrtpzq5y
         xVwmgn+nIDm6p8Xi7QFcEl/DOXYOimhOtOdAAUD3xz0fknhGUSju+sx0S0tFoW96s0sH
         YaFVyhaJknX8Q3Qd1WMddDeieq3iLLYJkWon1yOEQ90V8Xm0W8lPYW6errIAY4/o0Mq2
         ewGgvkTCCUEtTM7+NCm8/U9u7vCg8sYijS28WXBaZZT+DQ4isz+3f61bpN3ynUD2k87m
         G7Di+XpBoZJ7xbQEQqp6eXyumQAjRN20OyP4vfmmZlWPlo219ssIGyJcm0LCwd84kq4X
         IJQw==
X-Gm-Message-State: AOAM532gJ4cLw/sycY0anpKs1EWGpqh/2/P54O3852EhdCXne2DMaY0W
	jNvnaw7y7Kabic37Lwn6YLV3yOqYqkQoo/Y5h3GVvLnLPKs=
X-Google-Smtp-Source: ABdhPJyq7usBZYCf/AH0l70NqcOdMwdLEqyhQ+Jj0ytm+G2GLB5AIdVDPsLzK43FXwpPnagjT5gmoarpkncbohmvazE=
X-Received: by 2002:a62:a20d:0:b029:1c7:eecb:b0c6 with SMTP id
 m13-20020a62a20d0000b02901c7eecbb0c6mr4746574pff.39.1612537340834; Fri, 05
 Feb 2021 07:02:20 -0800 (PST)
MIME-Version: 1.0
References: <CAKx+4-p+SyakmdxCd0XDm-1U3inx6uMdCNbhg_Y6270aXkaNJg@mail.gmail.com>
In-Reply-To: <CAKx+4-p+SyakmdxCd0XDm-1U3inx6uMdCNbhg_Y6270aXkaNJg@mail.gmail.com>
From: Alex Gaynor <alex.gaynor@gmail.com>
Date: Fri, 5 Feb 2021 10:02:09 -0500
Message-ID: <CAFRnB2W5J+vibKP58U36UJkq=G1BAzSLKtNHqodgi+LAhkrvNg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2021-20226 kernel: use-after-free in io_uring feature

Hey,

Your message says that this is a DoS, however the ZDI page says it's a
priv-esc. Which is right?

Alex

On Fri, Feb 5, 2021 at 10:00 AM Rohit Keshri <rkeshri@redhat.com> wrote:
>
> Hello Team,
>
> A use-after-free flaw was found in the io_uring in Linux kernel, where a
> local attacker with a user privilege could cause a denial of service
> problem on the system
>
> The issue results from the lack of validating the existence of an object
> prior to performing operations on the object by not incrementing the file
> reference counter while in use.
>
> The highest threat from this vulnerability is to data integrity,
> confidentiality and system availability.
>
>
> 'CVE-2021-20226' was assigned by Red Hat.
>
> This issue was reported by Ryota Shiga of Flatt Security Team.
>
>
> Reference:
>
> https://www.zerodayinitiative.com/advisories/ZDI-21-001/
>
>
> Thanks and Regards
> ..
> Rohit Keshri / Red Hat Product Security Team
> PGP: OX01BC 858A 07B7 15C8 EF33 BFE2 2EEB 0CBC 84A4 4C2D
>
> secalert@redhat.com for urgent response



-- 
All that is necessary for evil to succeed is for good people to do nothing.
