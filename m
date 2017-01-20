X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2202" "Friday" "20" "January" "2017" "11:55:01" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdTLxn6uRQdZfpkrWzY4Tc+2_mLGdjG6-O_7hoUSoHNa7Q@mail.gmail.com>" "70" "Re: [oss-security] CVE-2016-9584: heap use-after-free on libical" nil nil nil "1" "2017012014:55:01" "[oss-security] CVE-2016-9584: heap use-after-free on libical" (number mark "U       gustavo.grie Jan 20   70/2202  " thread-indent "\"Re: [oss-security] CVE-2016-9584: heap use-after-free on libical\"\n") "<20170120112604.cga6fjvktcveo46g@home.ouaza.com>" ("<CAFR3uCN6=QS2FN0yAWA_T61sVzYgrPd6FsqLd43mhPYGS=CUZA@mail.gmail.com>" "<CAFR3uCNRc4SvGrUbQLjZEqAdLWj90tewpUt9c4Qv_+RRo_k6SQ@mail.gmail.com>" "<20170120112604.cga6fjvktcveo46g@home.ouaza.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17552 invoked by uid 550); 20 Jan 2017 14:55:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17522 invoked from network); 20 Jan 2017 14:55:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=HYsucBZR6e42MYK7p0ijaKWQ1s/NMZZ7fzbznUahczU=;
        b=dEPxZffOxeMY48BlAQr85deKBAFInbPiGt4GFj5PTgNziDMSuZejCLNBy+jgrTM8K6
         OM8VvrKQpotCsRaNtl2wTGbtX0Nvmcq5rze9VrS5EEKkBvkp3MLX8iU5mMdI6eCPlXHA
         LzO8pmxK0zwAGCpAU9S6S+GScReicQL2f5S/9ml1loHE9VhYfTkFNuCrdYW7FyiBhkPj
         Qmi6x1sWs+8yEqQvUVbwxSg0RKTupjRN5U0cwBpph6tgWHP27V7jFOrU1Y+THUbdpZgG
         j482YabQHFFiA10BgJQAWhbSdlw+0sWYmJLuXjFQt3NoMgkVJcmEKao4heDMmNiLToID
         5htg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=HYsucBZR6e42MYK7p0ijaKWQ1s/NMZZ7fzbznUahczU=;
        b=kFyvt9U+HEec+Hdtr8DVkYfMZadUNCtqtu7aphO+vipiQOYzH4jTo/MvVoNSMZTT50
         yxM3O0/xA3U3Y/4gIK89FivwC34p3v/2d5BK2JclUZclPiYI9wBxFc7EptrsvLYqy4hA
         otPnJ3+/u8cZqULCELMSRvyZmXTIbwIuY+3ncIVNt2Zq7JxJ91NYyT9N0FEOa33NPVm5
         6hCO5pdxHCpTHGDwC+2MTCt/hWlN09NXS4nHMBPQWdK/ohw/Tnsu/QvVTXiBE/fEgV3t
         TAdOUMkTX4ztA/3DnL3H+MzF3U3l7iR00BeRbgV3TShkvGVHU3EaxK6WeuFtqpI7/R0b
         mUdQ==
X-Gm-Message-State: AIkVDXINB16/1IJW222+PkKSH7GFihQ+Y2K/EL6mtLijBbqZkVVure93+9dOZeChn3/ijHDSWBYSpCXaqgfLIA==
X-Received: by 10.107.6.30 with SMTP id 30mr13027300iog.78.1484924101774; Fri,
 20 Jan 2017 06:55:01 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170120112604.cga6fjvktcveo46g@home.ouaza.com>
References: <CAFR3uCN6=QS2FN0yAWA_T61sVzYgrPd6FsqLd43mhPYGS=CUZA@mail.gmail.com>
 <CAFR3uCNRc4SvGrUbQLjZEqAdLWj90tewpUt9c4Qv_+RRo_k6SQ@mail.gmail.com> <20170120112604.cga6fjvktcveo46g@home.ouaza.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Date: Fri, 20 Jan 2017 11:55:01 -0300
Message-ID: <CACn5sdTLxn6uRQdZfpkrWzY4Tc+2_mLGdjG6-O_7hoUSoHNa7Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2016-9584: heap use-after-free on libical

2017-01-20 8:26 GMT-03:00 Raphael Hertzog <hertzog@debian.org>:
> Hello,

Hello Raphael,

I'm working with Agust=C3=ADn to report this issues (he is our student in
fact), but he
is on holidays now, so I will answer your questions.

>
> On Thu, 15 Dec 2016, Agustin Mista wrote:
>> We found a heap use-after-free in a recent revision of libical (
>> f3688b444f820cecf51b1539b0856a392c0fdb0f),
>> using a specially crafted ics file. This bugs looks particularly dangero=
us
>> since it allows to read a big chunk of the heap memory.
>
> I see you reported multiple bugs on github's libical issues page:
> https://github.com/libical/libical/issues/251
> https://github.com/libical/libical/issues/252
> https://github.com/libical/libical/issues/253
>
> Looking at the backtrace, it seems that #253 is the same as this one.
> Do you confirm?

Yes, it is.

>
> Any reason why you did not request a CVE for #251?

Yes. It was already reported here:

https://bugzilla.mozilla.org/show_bug.cgi?id=3D1275400 (CVE-2016-5824)

but it was never officially reported upstream (and therefore, never fixed).

>
>> It is worth to mention there is a very similar bug found (CVE-2016-5824)=
 on
>> the libical version used by
>> Thunderbird but we think is *not* the same as this one. In fact, we've
>> tested it on Thunderbird and it does *not* crash.
>>
>> The reproducer is available upon request.
>
> #253 has a reproducer here:
> https://github.com/libical/libical/files/627392/heap-use-after-free.ical.=
txt
>
> Is this the same file?

It is not the same file in fact. We found a variation of the original
input that trigger this
read out-of-bounds to read more than 60 bytes. This looks more serious
than usual (maybe you can read as much as you want) .
We had some complains in the past for making public test cases ..

>
> If it's a different file, then I'd like to have access to the file but I
> would prefer if it was just available publicly and not to me only.

Feel free to make the file public if you want.

>
> Cheers,
> --
> Rapha=C3=ABl Hertzog =E2=97=88 Debian Developer
>
> Support Debian LTS: http://www.freexian.com/services/debian-lts.html
> Learn to master Debian: http://debian-handbook.info/get/
