X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1200" "Thursday" "12" "May" "2016" "18:09:46" "+0800" "WinsonLiu" "stackexploit@gmail.com" "<CAAejdtx6_HPJ3gjhbraHDOW76EbnH0PZzxVLr5S1qYf=Hwsfsg@mail.gmail.com>" "40" "Re: [oss-security] Re: CVE Request - OpenJPEG: Security Fixes" nil nil nil "5" "2016051210:09:46" "[oss-security] Re: CVE Request - OpenJPEG: Security Fixes" (number mark "U       stackexploit May 12   40/1200  " thread-indent "\"Re: [oss-security] Re: CVE Request - OpenJPEG: Security Fixes\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1383 invoked by uid 550); 12 May 2016 11:24:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26017 invoked from network); 12 May 2016 10:09:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:cc;
        bh=xDdl603R6iGIsbjEWY/04YFt/2ZH0Npl6Z68VvZZtao=;
        b=kzPaH+eRQJwiqAVBEnLOA9x5K7DIl5L+SYLgrtNgu4yMFNGyqF7mrdW8TOkMLvVa+I
         obcDdfmr9OKoSaJ5F/SBbP3YerPbnEW7D6picWRGBWGY8940DyR6CY4y0BFNVWqSQZG/
         ShQIZ5EK7/1sEHUYJBtWZ4fZ5L4wytDpxUoBs8SfQ4piE70m0oCYzSteU+nFB5bX3lRc
         ounwju9wlbyc/x8R4YFcUkbnwhjXEnhNwQkbHfM5/m0srEWmiavtfq98PVndGf6WPywo
         SIJPkhquZu1JzVfLxn13zE0urI2ApZmi1MfOqM2hLb1CmWLBkcw+n7Q9Sw+TEU4w6nxO
         xb5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc;
        bh=xDdl603R6iGIsbjEWY/04YFt/2ZH0Npl6Z68VvZZtao=;
        b=OkCGulCVPBMk93kj4lc21ndTKQoDhhkmkeVD770CIoCrcse08F9/YthzoiLFsqhEbt
         OyDnfxKvQ6AsWXiXKQ8kWo7c6wX27BE94uRkxyt5metKFApiaC+7pxZOd70f97+nxrmw
         SuqP46JtGDdb2iENXfFREaals0YJwnW1CmDOa9PIY80yF0AVFTFIHqyETzn6Eidpjmdm
         6uum7p1Du5ciqkIdAgbLNpKiQZBXYviCsaxTnt5qNEqW50o+3zbD/2YWff4baDijK85r
         ttL5CTRDU3j5sT/f8d1/k25bi9P9pk/nD0Dah2sav9efCu4v2vPmypxdXNJ/HLUMa8HW
         ea8g==
X-Gm-Message-State: AOPr4FVKjux/2UHSp1K01fSdYf068EbtkfCOkMOpaUn4AL2P+tAj8HXAMmQmGiMYvtAgFkoKwWR9cS5co4L6YA==
MIME-Version: 1.0
X-Received: by 10.107.132.194 with SMTP id o63mr6348976ioi.118.1463047786446;
 Thu, 12 May 2016 03:09:46 -0700 (PDT)
Date: Thu, 12 May 2016 18:09:46 +0800
Message-ID: <CAAejdtx6_HPJ3gjhbraHDOW76EbnH0PZzxVLr5S1qYf=Hwsfsg@mail.gmail.com>
From: WinsonLiu <stackexploit@gmail.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Content-Type: multipart/alternative; boundary=001a113ff55499c73d0532a25bf0
Subject: Re: [oss-security] Re: CVE Request - OpenJPEG: Security Fixes

--001a113ff55499c73d0532a25bf0
Content-Type: text/plain; charset=UTF-8

>
> Hi,
>
>
>> Some security issues of OpenJPEG have been fixed. Please consider
>> assigning CVE numbers to them.
>
>
>> 2. Issue 775
>
> OpenJPEG Out-of-Bounds Access in function opj_tgt_reset of tgt.c
>
> Fixed via
>> https://github.com/uclouvain/openjpeg/commit/1a8318f6c24623189ecb65e049267c6f2e005c0e
>
>
> Is that a different issue than CVE-2016-1924?
>

Hi Moritz,

You are right. Issue 775 was a duplicate of CVE-2016-1924.

I didn't notice that limingxing has been reported this issue (reported at
http://seclists.org/oss-sec/2016/q1/128 and assigned CVE-2016-1924). I have
tested the proof-of-concept file supplied by limingxing and confirmed that
issue 775 was a duplicate of CVE-2016-1924. It seems that limingxing did
not report it to the official developers because I could not find any
information about this issue on GitHub and the official developers did not
fix it for a long time. I thought this was a new issue and reported it to
them after I did some fuzz testing. Anyway, this issue has been fixed by
the official developers now.

Regards,
Ke Liu of Tencent's Xuanwu LAB

--001a113ff55499c73d0532a25bf0--
