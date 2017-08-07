X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2724" "Monday" "7" "August" "2017" "08:15:14" "-0400" "Glenn Randers-Pehrson" "glennrp@gmail.com" "<CA+PdXcspyUe_0yO1bypEWmsZNd9xng-4avjExXFnbb0pGi_X=w@mail.gmail.com>" "95" "Re: [oss-security] Cve issue discussion" nil nil nil "8" "2017080712:15:14" "[oss-security] Cve issue discussion" (number mark "U       glennrp@gmai Aug  7   95/2724  " thread-indent "\"Re: [oss-security] Cve issue discussion\"\n") "<SG2PR0401MB18341DCF23068229492F4B2A88B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>" ("<SG2PR0401MB1834CC0A72F7B7E547C0F42888B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>" "<6651351.AxBd7pCpa9@wanheda>" "<SG2PR0401MB18341DCF23068229492F4B2A88B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22254 invoked by uid 550); 7 Aug 2017 12:16:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22232 invoked from network); 7 Aug 2017 12:16:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=mPJZoat+86DcFal7Qik2RfqAlOUaHqsc+bJ6bh7W9Hw=;
        b=dc8QAJhDDQVgE+wQ9zWVPGqQW3QRoDIdHNWIYvUScDA8DECc0l0+fyazHvf3zaT6KY
         59fDWvYZv9doEBDkcljvHQC7BUaYklOrxU5PrEVIx3Zb27U8n0rd8cCL7eXpHOnV5ccS
         hkR9l/zW/+GzcN0mHRBErWTDRbIDqw1sp1ZwIPGURootPBAcdi8Emw/0Dm2bWiSP6nEQ
         93VHiHTd4ZctRaDJMGiqZSaR7f7MGodrXAI7QyfDggjKS0CkU/HIESHOVg1AWN+2XVXH
         l+RW1XNQf3xw2UjT/c62PpKIl4fMSHjNKhfIkM/sVppcRZEb+6U8MDdCuQwWqVnc16iJ
         7miA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=mPJZoat+86DcFal7Qik2RfqAlOUaHqsc+bJ6bh7W9Hw=;
        b=mk2b9OdP1b9Cc7BdcqZNVLYrj0a38wqeEio4RjEwFB68yva6VDB6Y2UGbp/k5eSfuO
         Gl0qtT/R8b/SaMarNPsrQNtx5DxmXlZuar5wqu5d4oLKTnAW9aG3F1f427JiceTaZGTX
         cZfAPLqDsHHS9gxR10WGtXLK83cKVxBtBHogNKSmf307Nehc33NsaeuuZFp+dmNevXGZ
         XuOYRBNyXH/l362feXG7XVOxQ/w0SDu9BOSf+WGoAGV35YkTTUvFPI7dw6SyGh1NIwgA
         faN2UJ+a8ihR2V0XhukU0Pfmi5K6322xA3k2Q1DFHSyS2chfZpCJrw8ORgo/KDHI8CMA
         0+6Q==
X-Gm-Message-State: AIVw110SEpFFsTE/6abeGM2yhZ8VSFIJqymf/c3jJHLg34gtgpiFcKw4
	k+cGw6JmG8cSK3XW8XnroqJuQycwsA==
X-Received: by 10.36.152.2 with SMTP id n2mr604342itd.150.1502108155342; Mon,
 07 Aug 2017 05:15:55 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <SG2PR0401MB18341DCF23068229492F4B2A88B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>
References: <SG2PR0401MB1834CC0A72F7B7E547C0F42888B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>
 <6651351.AxBd7pCpa9@wanheda> <SG2PR0401MB18341DCF23068229492F4B2A88B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>
From: Glenn Randers-Pehrson <glennrp@gmail.com>
Date: Mon, 7 Aug 2017 08:15:14 -0400
Message-ID: <CA+PdXcspyUe_0yO1bypEWmsZNd9xng-4avjExXFnbb0pGi_X=w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Cve issue discussion

Do memory-exhaustion bugs get a CVE?  Suppose an application is fooled
into requesting 2Gb of memory but then never uses it other than
attempting to read it, immediately hitting EOF, and cleaning up.

I'm addressing such a bug in libpng right now, in which the user
is sent a PNG file containing a tEXt chunk that claims to have a 2GB
length (but none of the 2GB data is included in the PNG).  On my
platform libpng deals with that almost instantaneously, but I think
some platforms (ASAN builds?) would actually allocate the memory
before proceeding to read the data.

Glenn


On Mon, Aug 7, 2017 at 5:47 AM, ne xo <nexo123@outlook.kr> wrote:
> Hello,
>
> thank you for the reply!
>
> I chose the report at random.
>
> I'm sorry if I was offended to mention the report.
>
> Thanks.
> <http://aka.ms/weboutlook>
> ________________________________
> =EB=B3=B4=EB=82=B8 =EC=82=AC=EB=9E=8C: Agostino Sarubbo <ago@gentoo.org>
> =EB=B3=B4=EB=82=B8 =EB=82=A0=EC=A7=9C: 2017=EB=85=84 8=EC=9B=94 7=EC=9D=
=BC =EC=9B=94=EC=9A=94=EC=9D=BC =EC=98=A4=ED=9B=84 4:42:05
> =EB=B0=9B=EB=8A=94 =EC=82=AC=EB=9E=8C: oss-security@lists.openwall.com
> =EC=A0=9C=EB=AA=A9: Re: [oss-security] Cve issue discussion
>
> On Monday 07 August 2017 01:03:53 ne xo wrote:
>> Hello,
>>
>>
>> I am curious about issuing CVEs.
>>
>> I can see that a "NULL pointer dereference" or a bug where the exploit h=
as
>> not been verified also get a CVE.
>
>>
>> heap-overflows may or may not be exploitable.
>>
>>
>> It takes a lot of time to analyze the exploit and create the exploit cod=
e.
>>
>>
>> Is it right to be assigned a CVE only if it is exploitable?
>>
>>
>> Or do you think all bugs need to get a CVE?
>>
>>
>> Thanks.
>>
>> ---
>>
>> ref
>>
>> ---
>>
>> [1]http://www.openwall.com/lists/oss-security/2017/04/10/17 - NULL point=
er
>> dereference
>> [2]http://www.openwall.com/lists/oss-security/2017/04/10/15 -
>> memory allocation failure
>
> Hi.
>
> Since you mentioned some issues reported by me, let me answer directly.
> For the first, it is an undefined behavior, so actually you don't see the
> crash.
> Nowadays, the undefined behavior issues do not get anymore a CVE.
>
>
> For the second, ASAN reports that the program want to use more that 64GB =
of
> ram to execute the process so ASAN hangs the process. In this case is up =
to
> the maintainer check whether there is a problem in the code or not, or it=
 is
> expected. The better double-check would be verify what happens without AS=
AN.
>
> I'd like also to mention that MITRE assigns CVE after they analyze the
> reported issue, so if an issue does not deserve a CVE, MITRE probably won=
't
> assign accompanied by an explanation.
>
> --
> Agostino Sarubbo
> Gentoo Linux Developer
