X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1071" "Friday" "9" "November" "2018" "18:41:23" "+0200" "Billy Brumley" "bbrumley@gmail.com" "<CAFeDd5ZLjM4edCvtr646TnZ2or5AOcmiQ10HVi8m_k=xd9t37Q@mail.gmail.com>" "25" "Re: [oss-security] CVE-2018-5407: new side-channel vulnerability on SMT/Hyper-Threading architectures" "^Date:" nil nil "11" "2018110916:41:23" "[oss-security] CVE-2018-5407: new side-channel vulnerability on SMT/Hyper-Threading architectures" (number mark "        bbrumley@gma Nov  9   25/1071  " thread-indent "\"Re: [oss-security] CVE-2018-5407: new side-channel vulnerability on SMT/Hyper-Threading architectures\"\n") "<9dab0b73-3bc4-a942-bb9e-6c0b243784c2@canonical.com>" ("<CAFeDd5Ya=q28T2b0v9Z2guTGjwccaq8AU_5OnybvuEVABWnFJA@mail.gmail.com>" "<20181102114655.GA2758@openwall.com>" "<CAFeDd5bLk0N4g3LP0FUgX+XH2QMaV+=d3ybagBE4K6pAHQAxHA@mail.gmail.com>" "<20181106192131.GA14967@openwall.com>" "<CAFeDd5aqTomuwP=zf0EOVqWks819r5S+cr2mVkZGW0EuqttkGA@mail.gmail.com>" "<9dab0b73-3bc4-a942-bb9e-6c0b243784c2@canonical.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17797 invoked by uid 550); 9 Nov 2018 16:41:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17776 invoked from network); 9 Nov 2018 16:41:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=/8+ARhEeuJHo3ta8/8Lna0CFQA1pv9Zg+r33xGMd0LY=;
        b=EXL1RTjk+9yHhPUB2+7uz36XqpDF8RtipyWBbQTJCwtuxCfgs9aAANzGxNguBGUtPR
         5UFQQtA7SUBLlGv9wJqD6q8IlVkZ95bGR+g3xRQVJF66BGJRvLybmPIW5ORxwkSKt4Kg
         wi1ASDZlinc42URKEzTBJTHQsZREEcQlTEfDTO2mTSNT7dw+qQVo84BP9XT4I80+O7Z/
         Gf4rzuA8byYb3cPjyFycrdafeQEbD8gomH7Ej29qnvw4UDH0d3NAfpe0DRFuq+nhBHWM
         FtQ6ktBnjH1fK0ZMWnI5jpG0NLmrG8BTGFCfUr+vsNNjANRJ204ld+ySkrqkGS0SYwHI
         YflQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=/8+ARhEeuJHo3ta8/8Lna0CFQA1pv9Zg+r33xGMd0LY=;
        b=Uzyl2ElQQR1yEYEitdtSBQfRKAmeH9k1fp5HniQi7JPD8qxq0J3fY8Fy6jcPNRmawa
         vTsSyEcDzZiS0QGIlzqgcSBwRGaNGn8fwmf019curMgfqQe4o4n+m+IxvAsK7MO5csmF
         gNpK4Yek0Axt0ICSn4Ek3f05bCD5xw9CJklT7i4W0dTGbCl2KallDNZPbWcdnMLyc/VM
         QSDa8fRjcnG6A0UXV7uTUZULGVqukkGE7QnG10OkQpukOmryRF0A6gD/fj8+SZ+YSnnv
         qBVutgwL0LeovN53necGaYFYZmd/mDa8m41ubyovcfimm/BRuxAT2rR8NdrIb6gu6We2
         naFQ==
X-Gm-Message-State: AGRZ1gJ+T7LsZz7k8WoJVDhSBdXdQ1wdsEkBYgmhWgdG0J3igMSKlhSj
	wLUAmFumzoscGf4hanLNBLKXBNcZl4LDF+gWhyfw
X-Google-Smtp-Source: AJdET5eL8XZV+4gnYbSthH8pKa2b0Cg2kNsBFhZjPkMdh+mRvcJGs3tYDhsoXtviCOm3DtekdujZRrMivw8hgxUcw80=
X-Received: by 2002:a1c:2501:: with SMTP id l1-v6mr49946wml.133.1541781694988;
 Fri, 09 Nov 2018 08:41:34 -0800 (PST)
MIME-Version: 1.0
References: <CAFeDd5Ya=q28T2b0v9Z2guTGjwccaq8AU_5OnybvuEVABWnFJA@mail.gmail.com>
 <20181102114655.GA2758@openwall.com> <CAFeDd5bLk0N4g3LP0FUgX+XH2QMaV+=d3ybagBE4K6pAHQAxHA@mail.gmail.com>
 <20181106192131.GA14967@openwall.com> <CAFeDd5aqTomuwP=zf0EOVqWks819r5S+cr2mVkZGW0EuqttkGA@mail.gmail.com>
 <9dab0b73-3bc4-a942-bb9e-6c0b243784c2@canonical.com>
In-Reply-To: <9dab0b73-3bc4-a942-bb9e-6c0b243784c2@canonical.com>
Message-ID: <CAFeDd5ZLjM4edCvtr646TnZ2or5AOcmiQ10HVi8m_k=xd9t37Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 9 Nov 2018 18:41:23 +0200
From: Billy Brumley <bbrumley@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2018-5407: new side-channel vulnerability on
 SMT/Hyper-Threading architectures
To: oss-security@lists.openwall.com

> Could you please confirm the following commits are sufficient to fix CVE-2018-5407?
>
>
> Elliptic curve scalar multiplication with timing attack defenses (CVE-2018-5407)
> https://git.openssl.org/?p=openssl.git;a=commit;h=aab7c770353b1dc4ba045938c8fb446dd1c4531e
>
> Address code style comments
> https://git.openssl.org/?p=openssl.git;a=commit;h=f06437c751d6f6ec7f4176518e2897f44dd58eb0
>
> ladder description: why it works
> https://git.openssl.org/?p=openssl.git;a=commit;h=33588c930d39d67d1128794dc7c85bae71af24ad
>
> Pass through
> https://git.openssl.org/?p=openssl.git;a=commit;h=f916a735bcdce496cebc7653a8ad2e72b333405a
>
> Move up check for EC_R_INCOMPATIBLE_OBJECTS and for the point at infinity case
> https://git.openssl.org/?p=openssl.git;a=commit;h=b43ad53119c0ac2ecfa6e4356210ccda57e0d16b
>
> Remove superfluous NULL checks. Add Andy's BN_FLG comment.
> https://git.openssl.org/?p=openssl.git;a=commit;h=2172133d0dc58256bf776da074c0d1944fef15cb

It's a good start! But it's more than that. But it's Friday night so
it'll have to wait until Monday.

BBB
