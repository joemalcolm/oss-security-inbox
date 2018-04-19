X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5360" "Thursday" "19" "April" "2018" "23:22:28" "+0100" "=?UTF-8?B?VsOtdG9yIFNpbHZh?=" "vitorhg20080@gmail.com" "<8250f648-c517-fa70-36db-214d87671a4c@gmail.com>" "143" "[oss-security] CVE-2018-10194 Ghostscript 9.18 stack-based buffer overflow" nil nil nil "4" "2018041922:22:28" "[oss-security] CVE-2018-10194 Ghostscript 9.18 stack-based buffer overflow" (number mark "U       vitorhg20080 Apr 19  143/5360  " thread-indent "\"[oss-security] CVE-2018-10194 Ghostscript 9.18 stack-based buffer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5820 invoked by uid 550); 19 Apr 2018 22:34:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24207 invoked from network); 19 Apr 2018 22:22:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-language;
        bh=OP2PHmtehRKuTcETY37Wju9AB1rmNiKpGYSqpeyATmQ=;
        b=U4trreKCsX8Ox4bPY1Ttg5/xk7b7H8wGj2s57q6V2Awz6jb896NMFG1xlDpcR9gGz2
         pgCCndyPNV1O6YRnSf93P8+urbNNwXSwoe9eVNFSD6m57eI9ZZsQh4aaSlurTzzj0zo2
         YtW5BdUHQ5lufJ5YzyMUtH8NwHrtlqFtLdrk5lKMsz4p3wNbX8Cq6tGN2DBkLSw0obEe
         yt1ec/LwXjE5XUgL7bP3mi2oFsaCNT1WkyWVeYPdu+Umu+6JhZvmzDGZ2IrolFgQlxEr
         yujlQXWkrqsR7LK8O+GFM5gZEvmEmQ45IvUtMfSeswutSZfPHOOA9iRacFM702JMHKzq
         59MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-language;
        bh=OP2PHmtehRKuTcETY37Wju9AB1rmNiKpGYSqpeyATmQ=;
        b=XZESt0KdO1z50hP6grvalbKg4M5nsbkq58rK0O7I9X6BjLFWF5fhRrDwbe8Nk5pSAm
         227y4GsyDigNcVJhkVKWgfCb1XEUWbGkliiMMmUOtWzpJr4qfo4rc7hdjZ6BHZaedcvs
         upgtL0q8aAznWu+N/MOVkVlpl23OU87H0MrxFA2xxydYXRVrzL/pZ8pwMbwjMUTd+cgg
         bbWatn0NmGtZ2wWeNVswxTFmHMK1raHTsd6r8eewMDLj7Yk6kYBs3T0V9k65sVvJVOoa
         uArjLGAS/Hdw5vrX8RcglCtC1IN0lg+lRRRhJD7zZbQ/5eMHt8+OGIsBx3xCjcG2PU+o
         +2ng==
X-Gm-Message-State: ALQs6tCIXSs7JAMZpORUxUj+vGD72UF0xFjgNzdprt/OgJNNRw13o3Mo
	WpUyIyvjXjU8kgp3JTTcUu9Fnv5T
X-Google-Smtp-Source: AIpwx4/qY/ifj4ALgkdcmYn++yUhp2OXZROFQaLZKUQ21nGWkXwBvEJCgs5YVhgGEhOztcC/OXIFRA==
X-Received: by 10.28.12.141 with SMTP id 135mr263554wmm.99.1524176549889;
        Thu, 19 Apr 2018 15:22:29 -0700 (PDT)
To: oss-security@lists.openwall.com
From: =?UTF-8?Q?V=c3=adtor_Silva?= <vitorhg20080@gmail.com>
Message-ID: <8250f648-c517-fa70-36db-214d87671a4c@gmail.com>
Date: Thu, 19 Apr 2018 23:22:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------2BD15F820F748089562C6F46"
Content-Language: en-US
Subject: [oss-security] CVE-2018-10194 Ghostscript 9.18 stack-based buffer overflow

--------------2BD15F820F748089562C6F46
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

I think I found a possible RCE on ghostscript 9.23. I can reproduce on
9.18 (but not in 9.23) and the vendor confirmed the vulnerability and
applied a fix for 9.23.


[Suggested description]
The set_text_distance function in devices/vector/gdevpdts.c in the
pdfwrite component in Artifex Ghostscript through 9.22 does not prevent
overflows in text-positioning calculation, which allows remote attackers
to cause a denial of service (application crash) or possibly have
unspecified other impact via a crafted PDF document.

------------------------------------------

[Additional Information]
This seems to be affected only on ghostscript 9.18 or less. My
analysis seems this is a bad validation on input at
pdf_set_text_matrix at gdevpdts.c causing pprintg1 function at
spprint.c to write outbounds of the stack.

I can provide with a file use case. Even this seems not to trigger on
newer versions, this package is still available on a lot of systems
(such as ubuntu or debian) as the latest version available.

$ gs -o tested.pdf -sDEVICE=3Dpdfwrite -dPDFSETTINGS=3D/prepress
-dHaveTrueTypes=3Dtrue -dEmbedAllFonts=3Dtrue \
=C2=A0 -dSubsetFonts=3Dfalse -c ".setpdfwrite <</NeverEmbed [ ]>>
setdistillerparams" -f fuzzed-case1.ps
GPL Ghostscript 9.18 (2015-10-05)
Copyright (C) 2015 Artifex Software, Inc.=C2=A0 All rights reserved.
This software comes with NO WARRANTY: see the file PUBLIC for details.
Loading NimbusRomNo9L-Reg font from
/usr/share/ghostscript/9.18/Resource/Font/NimbusRomNo9L-Reg... 4743540
3133830 2015200 710957 1 done.
Loading NimbusRomNo9L-Med font from
/usr/share/ghostscript/9.18/Resource/Font/NimbusRomNo9L-Med... 4820876
3332725 2035392 735152 1 done.
Loading NimbusMono-Regular font from
/usr/share/ghostscript/9.18/Resource/Font/NimbusMono-Regular... 4900004
3527153 2055584 752136 1 done.
Loading NimbusMono-Bold font from
/usr/share/ghostscript/9.18/Resource/Font/NimbusMono-Bold... 5118700
3762771 2095968 786137 1 done.
Loading NimbusRomNo9L-RegIta font from
/usr/share/ghostscript/9.18/Resource/Font/NimbusRomNo9L-RegIta...
5357220 4001795 2156544 851571 1 done.
Loading NimbusSanL-Reg font from
/usr/share/ghostscript/9.18/Resource/Font/NimbusSanL-Reg... 5556092
4193319 2358464 1039445 1 done.
*** stack smashing detected ***: gs terminated
Aborted (core dumped)

------------------------------------------

[Vulnerability Type]
Buffer Overflow

------------------------------------------

[Vendor of Product]
ghostscript

------------------------------------------

[Affected Product Code Base]
ghostscript - 9.18

------------------------------------------

[Affected Component]
pprintg1 of ghostscript

------------------------------------------

[Attack Type]
Remote

------------------------------------------

[Impact Code execution]
true

------------------------------------------

[Impact Denial of Service]
true

------------------------------------------

[Attack Vectors]
crafted postscript can crash and/or execute code via buffer overflow

------------------------------------------

[Reference]
https://bugs.ghostscript.com/show_bug.cgi?id=3D699255


--------------2BD15F820F748089562C6F46
Content-Type: application/pgp-keys;
 name="pEpkey.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="pEpkey.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
mQENBFrXfgEBCADtmSEl3jdulIwXlfJKz8WOhNs6/QKDp4gwWvnfJPCnaYPSvuCe=0A=
uv2wq6HFZSa/3ha+L0k8JMMnIzfxOr9Qqvfu3vBzeofcqcH3gjMz5wMDo4ewj+Gq=0A=
S+yh/rSeS5efisKBzU7E0YvPjPN8z8+9t309o0xP/wO0sFyBN94iz2lpk7bTP1aC=0A=
sbu+geoFrfmN9BR0SgziLy96nPX16alf+XObAmoBZSQK1FUpUtKJRPvP3shumhPb=0A=
mN3eqcCQdlzBckA/FMSf4r9xmnh0W6RjSmyviLsdrpLhbhNrMIk76aTNzF8ww1kM=0A=
jobbAK1iE0FlDhyeUK9CyM1lOnCaWGeqpvn9ABEBAAG0JVbDrXRvciBTaWx2YSA8=0A=
dml0b3JoZzIwMDgwQGdtYWlsLmNvbT6JAVQEEwEIAD4WIQSMg0chtDcxHDBECHt4=0A=
r1a80rIKqAUCWtd+AQIbAwUJAeEzgAULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAK=0A=
CRB4r1a80rIKqMvHB/9KtiKkEKvt4FmbBX0jvUuGJlhmrFqusiIhsE/T0lLiP94F=0A=
i5rhz5pFlyo+ibjXHghhbahDUBK6C8gxkAzRu/rZxkhYzv0dGqLaotX3De3Awaqe=0A=
KMB5MaQLmJGi5SRBCMMeNQNrdQC+ihviMToGiP7UWUlQ6+1f6q7/jdO650VsfUfD=0A=
6RsvTLKsIMfRi6TZuYYj0k7tP6GsIeusuaBTPMi9/EGXdhB63fYq5MA+kymDdgfN=0A=
HPuFhyhn+arMOtpny1zG7Gevvzh2iev7B+8x/ZfJ2+RgJYpRgvkv5CCx0BWaaj6O=0A=
ACu/SBgkeDgKQHRgG5vMbriNR94QeNMFedMz08aruQENBFrXfgEBCACVb4tkuP3w=0A=
DBKUAHjEgFHmekcV2Yco4i68c1LlLiQu3uia1mwOZ+vFfULM9AUCab/5fCMhZolA=0A=
TFxQnyQwNX0StorpzEHYdXEPS2HHb14gV/FYh9Q23NN+203l0aJtVqaofY3J4zF7=0A=
w4n4IOOsSkA8JooAWrDrK0VSHRiK4RouCUVLBBQ+vl19KV9HGXpAvru9B+nIXRAM=0A=
W3h7G0wIKgQ5lNt9FSwiCn13N4QvnrX6fB+Jyzs/EkksX8JK2j5RiDE25J35E66I=0A=
viZDcOe52E4c3zUOfSeFNMSEMosQBWseH23hXUjb26FUwUBcqggBVjfLMTVCT9bH=0A=
LUZQA9NP1Hw5ABEBAAGJATwEGAEIACYWIQSMg0chtDcxHDBECHt4r1a80rIKqAUC=0A=
Wtd+AQIbDAUJAeEzgAAKCRB4r1a80rIKqLp7B/sHnDQiVSWgYTBsllGkz1ZZC2Si=0A=
T79SexEu/ojKYU9xeFNYa+EG+5qwzr/3cxltAUZ6Yub/pEBQRvF3Gupkbfl6f/8i=0A=
BxaVNOP6ylL/95kKo0Z/rJ/7PeSt+WG6vdqUWOz9Z5DJpawyzGvfOszuElWU+HOJ=0A=
3o8HwqlT4wOlCw8h3CKo2SMRbwcskxFn/80sOFsaPVmLKpw9jmDymiSak7MIWBam=0A=
jD7Guuq/BXoGNE6gCby3Ru/KKSXsRO6jJXNEaPeG3rX+XiE2hWVosSvNk0Ex6J0e=0A=
FrvMHfMumzAQyBi6kYAf8XCaF7FFZ6hibKVaWr3s6i/WEc7JE2ivRujirVko=0A=
=3DcKny=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------2BD15F820F748089562C6F46--
