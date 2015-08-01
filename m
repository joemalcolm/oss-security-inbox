X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1008" "Saturday" "1" "August" "2015" "19:31:15" "+1000" "Michael Samuel" "mik@miknet.net" "<CACYkhxiBvVbV-Xg-gM7ZdJzR=xaR2ta_OA-K6Lvftxvo9j3=uA@mail.gmail.com>" "35" "Re: [oss-security] CVE for crypto_get_random() from libsrtp" nil nil nil "8" "2015080109:31:15" "[oss-security] CVE for crypto_get_random() from libsrtp" (number mark "        mik@miknet.n Aug  1   35/1008  " thread-indent "\"Re: [oss-security] CVE for crypto_get_random() from libsrtp\"\n") "<55BB6E77.1070007@redhat.com>" ("<55BB6E77.1070007@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31841 invoked by uid 550); 1 Aug 2015 09:31:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31820 invoked from network); 1 Aug 2015 09:31:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=miknet.net; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=5zZ0p6E9WVrZTI/4J0n5nvx58VBK4VXrbLAQgSOtcz8=;
        b=hYlEmixOR+ijGeHjCVHnh2HrPaHhS+zzASoXdoJHuRBEbAaQTY1k+ixkFf6xzFxMAs
         3L/bDt9ZBVS7RESrqz7SSa671p5VBRi+C3iaotPETZDfZ752T5dr+NlxokGdgynaLwIH
         R7XBys8gdxalMeiZLrCnGgH56u9TqF0LFq4K4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=5zZ0p6E9WVrZTI/4J0n5nvx58VBK4VXrbLAQgSOtcz8=;
        b=Q/yk3NZOLycM1BB6oB/tR6kwMK04xd+CEQVEolXR4lQQ0mGhEFNZTYyAllkCpth6PE
         D4axTmHsS19ScQpmbNn0UpoflHlJIF0YUeoEa4mV0JjGM3OTHlmsZN+dRVf+GZ/6/gFh
         wMNt2/QzULKAcFGUPkSPYHQlOMeS6kMro7ENJ+alUzKWVtcFrFzhaxEZYrb9UNKwqPhV
         UT0hMB0Bn1twuDTb/TCdAVClZGSCCIukKRQTaxt0d37UbmG8V5u7ycAWBL6xaf02VH3l
         OtqczobNDJ5WD7OBGgvSng1Ii/fZOCw3uCc62eNxSz26DZ1H31J4mxSnseiNTpr0fXup
         moYg==
X-Gm-Message-State: ALoCoQkbcbepHlHNF7wECfOTgYh4HXxdVcWAVp7wsKrtiLZzpghRwKR3U8r/jA3aY8f7Ddp69rUI
X-Received: by 10.107.137.95 with SMTP id l92mr11156141iod.2.1438421504691;
 Sat, 01 Aug 2015 02:31:44 -0700 (PDT)
MIME-Version: 1.0
X-Originating-IP: [202.147.141.11]
In-Reply-To: <55BB6E77.1070007@redhat.com>
References: <55BB6E77.1070007@redhat.com>
Message-ID: <CACYkhxiBvVbV-Xg-gM7ZdJzR=xaR2ta_OA-K6Lvftxvo9j3=uA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113ecbfed325db051c3c9a5f
Date: Sat, 1 Aug 2015 19:31:15 +1000
From: Michael Samuel <mik@miknet.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for crypto_get_random() from libsrtp
To: oss-security@lists.openwall.com

--001a113ecbfed325db051c3c9a5f
Content-Type: text/plain; charset=UTF-8

Hi,

I can't see any reference to it using 80 bits of random data - it looks
like it's AES-CTR mode.  Do you have further information on that?

That being said, I can see quite a few ways it can go wrong - it's doesn't
appear thread-safe for a start.  Is it worth taking a closer look or are
you planning on shipping the patch anyway?

Regards,
  Michael

On 31 July 2015 at 22:47, Adam Maris <amaris@redhat.com> wrote:

> Hello,
>
> I've got question whether this bug (
> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=793971) is CVE-worthy?
> Could it be classified as CWE-330: Use of Insufficiently Random Values?
>
> According to the SRTP documentation (
> http://srtp.sourcearchive.com/documentation/1.4.2.dfsg/group__SRTP_g1d4c228c6a58096dfab3cefbabd66f17.html),
> it provides 80 bits of random data, which is quite a borderline.
>
> Thanks.
>
> --
> Adam Maris / Red Hat Product Security
>
>

--001a113ecbfed325db051c3c9a5f--
