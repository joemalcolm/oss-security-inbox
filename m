X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1093" "Saturday" "29" "April" "2017" "10:43:50" "+0800" "redrain root" "rootredrain@gmail.com" "<CAPGxrc_kUAFA6Y_QnSxx-iyt2kGoKG1=RCSKUGE=ot1qvTtL=w@mail.gmail.com>" "46" "Re: [oss-security] CVE-2017-8291 ghostscript remote code execution" "^Date:" nil nil "4" "2017042902:43:50" "[oss-security] CVE-2017-8291 ghostscript remote code execution" (number mark "        rootredrain@ Apr 29   46/1093  " thread-indent "\"Re: [oss-security] CVE-2017-8291 ghostscript remote code execution\"\n") "<CAAYo3Bu+9QFoqsRU__WmCou09Y_xt39VMEyoV3Y-RR0qv-gtng@mail.gmail.com>" ("<20170428015004.11956.12148@falcon>" "<20170428030522.GA53619@wopr>" "<CAAYo3Bu+9QFoqsRU__WmCou09Y_xt39VMEyoV3Y-RR0qv-gtng@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11801 invoked by uid 550); 29 Apr 2017 02:44:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11780 invoked from network); 29 Apr 2017 02:44:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=j20VZxOYq7neh9CgsFfOZ3q+uSK3xoZzsp4Q1gTyZx4=;
        b=K+2HkIiiGQFiJ9UNpFYrwa1inbdSJ+LLFhTlUCh970mdzN+wl+OtB8JN6P8PKsZsD1
         gz5Zw3RrBGvB2KyRgGsorC59AeUTjpi90Xa9EA8VHIjVt1khoGEwTwS3fw95dwysiuln
         OZ7FF2ZKQZP9mT5oiQLqpFO0TUYfqf9K36mFPPOJ+D4j1JX2Bf8MGOJLY8ogSI/jRVAq
         e58uKpsntlmiTXcoUg2wuRK8MN6CIFeT0/CEum7dCQg+HqIlTB7xO1HPQAXLGzQ80ecW
         pVzrvgo8UONRT3l+4BJsMTP7ZakLE0UDLQlRHs/V7WrG4g6hk+NIidlw1Xe4nXmQr5Tv
         IGCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=j20VZxOYq7neh9CgsFfOZ3q+uSK3xoZzsp4Q1gTyZx4=;
        b=MTPbr4XS7dGdgwvT4KyfjtCotrzvl4GxRiqc7zBYCTnhxSLzY0K+/ZHgDsGnNBZ6P0
         I4GZvq0Rxiy7/rsldPi6ScsfPqcNIbOoMaupWENIh7/2No6kgZ9eCj5wasZ3aevFBYqC
         KvVdnEHJslzOEHNivtno6PLelY8Rhzr4mtSNSGKi2YQmap2NHFrRTTfMIb/a/ZQDJrhB
         /Zxfj3AW+I/5H0qd3rGeEyxrD60B9+Xn5JXxUm9JijPO2g8bOehRhMxcosgW969BBIWE
         r4RKlQmGuxPdeNLWXSxzrZSyFgDtsDLyflAbpbapKLlt6N3Sy6QgjtrqWG/zUcGEki4x
         C0/g==
X-Gm-Message-State: AN3rC/6B2XJX17fktXU0kafsTwXH/Uxtq5EVrYgBO4dtLlmz/fZhg76N
	ijABnRaxsk99YKpNzp97CY2d8jW54VUy9ac=
X-Received: by 10.129.48.68 with SMTP id w65mr11348581yww.99.1493433830392;
 Fri, 28 Apr 2017 19:43:50 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAAYo3Bu+9QFoqsRU__WmCou09Y_xt39VMEyoV3Y-RR0qv-gtng@mail.gmail.com>
References: <20170428015004.11956.12148@falcon> <20170428030522.GA53619@wopr> <CAAYo3Bu+9QFoqsRU__WmCou09Y_xt39VMEyoV3Y-RR0qv-gtng@mail.gmail.com>
Message-ID: <CAPGxrc_kUAFA6Y_QnSxx-iyt2kGoKG1=RCSKUGE=ot1qvTtL=w@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11409d0ef4c93a054e452872
Date: Sat, 29 Apr 2017 10:43:50 +0800
From: redrain root <rootredrain@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-8291 ghostscript remote code execution
To: oss-security@lists.openwall.com

--001a11409d0ef4c93a054e452872
Content-Type: text/plain; charset=UTF-8

what a awkward??
I have discovered a part of my vulns about ghostscript last year and
exploited in fulldisclosure early!
and these vulns are part of mine I was going to discovered these in defcon
or other conference...WTF...
u guys are logo designer???

there are two demos last year
Evince Arbitrary Code Execution https://youtu.be/wzcrHXngfcM Attack Imagick
through Ghostscript https://youtu.be/tPGm_ANDyOw


Regards,
redrain



2017-04-28 19:37 GMT+08:00 David Black <dblack@atlassian.com>:

> On Friday, 28 April 2017, Kurt H Maier <khm@sciops.net> wrote:
>
> > On Fri, Apr 28, 2017 at 01:50:04AM -0000, security@atlassian.com
> > <javascript:;> wrote:
> >
> >
> > Why are you sending user-tracking urls to this list?
> >
> >
> Hi Kurt,
> We did not intend to send user tracking urls to this list. However, the
> method we used to send the email resulted in sendgrid rewriting the the
> links. We apologise regardless.
>
>
> --
> David.
>
>
> --
> David Black / Security Engineer.
>

--001a11409d0ef4c93a054e452872--
