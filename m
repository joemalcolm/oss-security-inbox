X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["987" "Friday" "28" "April" "2017" "22:36:16" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkLfOaQEkD+o8j7GMiXFxcZ-ANA4aYA13NjtN6iOUWfDuQ@mail.gmail.com>" "28" "Re: [oss-security] CVE-2017-8291 ghostscript remote code execution" "^Date:" nil nil "4" "2017042905:36:16" "[oss-security] CVE-2017-8291 ghostscript remote code execution" (number mark "        taviso@googl Apr 28   28/987   " thread-indent "\"Re: [oss-security] CVE-2017-8291 ghostscript remote code execution\"\n") "<CAPGxrc_kUAFA6Y_QnSxx-iyt2kGoKG1=RCSKUGE=ot1qvTtL=w@mail.gmail.com>" ("<20170428015004.11956.12148@falcon>" "<20170428030522.GA53619@wopr>" "<CAAYo3Bu+9QFoqsRU__WmCou09Y_xt39VMEyoV3Y-RR0qv-gtng@mail.gmail.com>" "<CAPGxrc_kUAFA6Y_QnSxx-iyt2kGoKG1=RCSKUGE=ot1qvTtL=w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16183 invoked by uid 550); 29 Apr 2017 05:36:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16165 invoked from network); 29 Apr 2017 05:36:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=chWka9b9xpWm+nVXwYped8UrTUC6MqBGWQ362VkHfnE=;
        b=hddYpbTkw3X8cwZeJ+pPshERLU5vnx8hDP7glLd6WOaTlaVkn41mkfs55Z2MiBPm7r
         rsW+WvMi8b7IkonEAg8qbjBYmGVNGDYKXdZdtAT97ctgbyGcb+SDjMfbJB0cu+jEx5VI
         vUVlZ8ya+ec9iKdDyPmIuS1Qth4A8aaFn/8sy6HzmtU1aMahWMOcNwK+FwcwWUI7b7PH
         c7bLcnSx9MPdj3pGwCc2LIp3BYSXXltMQ7W7Sfe6ut0S3+MyR9N6Ls5x+zUVRiFSzhP8
         UO5OKnuJG7BarR6ji4QRTNQ/wdlsGMuKK8ezMwVfEnSZGYNxDGCiLAtXJUnEar3VvL2/
         LVVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=chWka9b9xpWm+nVXwYped8UrTUC6MqBGWQ362VkHfnE=;
        b=nAyjNnVPGq00ZVpncdGNQlpB1h558OM6Q9KX+jvt3/i8K61n2XCS7roCz7y6a55BHX
         HFhMPvmYoeMmGOgKyZeN3co/szQi3AIKHeoiXzb267GtbyhNZPG1B3Ng94PLiacER5W6
         1L04ga4qe9K2usDvzDKjZ/sOT98RZ9qIzMDh84D3fGAr9g4sjiOv6vnddHj2iUA/yfM4
         cn+kt5hurMpSX3kmgPrrhESkSX2Xv702+NwwE0AJuLJy7LP+pLIzQ56AGA+BaiWYWelD
         Xd6GIGZWFJJc1m0eOqq7T4NaL0lCMkfMYMg0bcTliJMpImja9M2/uT+e5X8JZ8pG6s4s
         idvQ==
X-Gm-Message-State: AN3rC/5eXpPV47WQYSSSdw6JOJnbRgOkQdhuFPISJF10qbAIqWoXG9rW
	zRupJVquakuT95TqsJplcHlG5jB+4J/7ctd5oQ==
X-Received: by 10.200.41.35 with SMTP id y32mr12926989qty.37.1493444196585;
 Fri, 28 Apr 2017 22:36:36 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAPGxrc_kUAFA6Y_QnSxx-iyt2kGoKG1=RCSKUGE=ot1qvTtL=w@mail.gmail.com>
References: <20170428015004.11956.12148@falcon> <20170428030522.GA53619@wopr>
 <CAAYo3Bu+9QFoqsRU__WmCou09Y_xt39VMEyoV3Y-RR0qv-gtng@mail.gmail.com> <CAPGxrc_kUAFA6Y_QnSxx-iyt2kGoKG1=RCSKUGE=ot1qvTtL=w@mail.gmail.com>
Message-ID: <CAJ_zFkLfOaQEkD+o8j7GMiXFxcZ-ANA4aYA13NjtN6iOUWfDuQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Fri, 28 Apr 2017 22:36:16 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-8291 ghostscript remote code execution
To: oss-security@lists.openwall.com

On Fri, Apr 28, 2017 at 7:43 PM, redrain root <rootredrain@gmail.com> wrote:
>
> what a awkward??
> I have discovered a part of my vulns about ghostscript last year and
> exploited in fulldisclosure early!
> and these vulns are part of mine I was going to discovered these in defcon
> or other conference...WTF...
> u guys are logo designer???
>
> there are two demos last year
> Evince Arbitrary Code Execution https://youtu.be/wzcrHXngfcM Attack Imagick
> through Ghostscript https://youtu.be/tPGm_ANDyOw
>

I don't think so, that is CVE-2016-7976 and is entirely unrelated to
the issue being discussed, other than superficial similarity of the
exploit.

That issue was reported by me, and we discussed the ImageMagick and
evince attack vectors at the time, you can check the archives if
you're interested.

http://seclists.org/oss-sec/2016/q4/29

This issue (CVE-2017-8291) is a type confusion vulnerability (well,
technically two vulnerabilities), and was found in the wild.

Tavis.
