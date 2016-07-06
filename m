X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3323" "Wednesday" "6" "July" "2016" "09:20:59" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdRd0v7iDR8E46n=waV4_mi5kReH-FzOk1tMnWm7rszhzQ@mail.gmail.com>" "84" "[oss-security] Re: Browsing and attaching images considered harmful in Linux" "^Cc:" nil nil "7" "2016070607:20:59" "[oss-security] Re: Browsing and attaching images considered harmful in Linux" (number mark "        gustavo.grie Jul  6   84/3323  " thread-indent "\"[oss-security] Re: Browsing and attaching images considered harmful in Linux\"\n") "<20160705224122.7C5C242E012@smtpvbsrv1.mitre.org>" ("<CACn5sdSFtHbu1d45rK4Hi8=Z+KirfOZ+g=gBT5LsCWcxgfnz-w@mail.gmail.com>" "<20160705224122.7C5C242E012@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15400 invoked by uid 550); 6 Jul 2016 07:21:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14331 invoked from network); 6 Jul 2016 07:21:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:cc;
        bh=O5Ig4C06lwM09JKOXp7NoMKesILjgc+JOGvQuVq5H9s=;
        b=CcMEbBau1iHqZCCHNmjNA2QxoUWlSZkQ2ArRjtYT17vSdXDPFo4mcDxuvo8y0OuVo3
         cwZgDYVq4NxIAF8RFkkZQgCNJgy40N/ynwLbNSQPChhGe+sC12G1oAO+5n7fmnSffnzA
         RYr+7DG9vRUFcwqZ2PLk5HFh0+kPf7EiqNWld7AJe9Mfsc9wn/amWmugXLtKeK/FwYjG
         AXW5dAFqSK8kkyVy7Jpc5S8v7erEtl5f0Bfsz65UhAuh8pHOwI9FP/u+/Z3WoNSo1qN4
         4omxiW366ydAvvlyeahgzGc4hswETlO79rgIE14wewAEwxZ3aeEIfSMyWawiJg7zDMKH
         bvZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:cc;
        bh=O5Ig4C06lwM09JKOXp7NoMKesILjgc+JOGvQuVq5H9s=;
        b=O/DW96Q93xEPnu+wQF0WL9RypPy0g4qWhg2zxnEQ//LAM9TbkQlytsbeGmH6kVZDcx
         x2vuIWr/Tgfs02kKYdoWXXRy+1l0xqW+YW7YKyG5Dvns7+FOOiDttLY0qQsPYTDIRPTF
         YXTDYFj+QHSbJj9yuRY8FwIaMrJPWXCixqeiBrdKIkZ09r5p8eF+yLHPk0NbYtPtWtRy
         nyC1ObNhlb8tQ+6S9cPlvcFqfo6HUChvRbmaXnyKumvd6Z80WA6Xnd+Q5AAFuP3o1n8y
         VPbe1r98Mzb2pVbmDuaU69kmrVqiFVLobDT4p1ahjq5PojO7VH2tTDnq9tkTs2hY5g3X
         qLoQ==
X-Gm-Message-State: ALyK8tKZcYHeqzMStyZ/4YWbgwF8cFBNzx2AGW07T6xQCDLe3Ua2e51GSjPeqofyI8qtXZMD5rfLxlxYJ/xqlQ==
X-Received: by 10.107.137.95 with SMTP id l92mr17779583iod.177.1467789659939;
 Wed, 06 Jul 2016 00:20:59 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160705224122.7C5C242E012@smtpvbsrv1.mitre.org>
References: <CACn5sdSFtHbu1d45rK4Hi8=Z+KirfOZ+g=gBT5LsCWcxgfnz-w@mail.gmail.com>
 <20160705224122.7C5C242E012@smtpvbsrv1.mitre.org>
Message-ID: <CACn5sdRd0v7iDR8E46n=waV4_mi5kReH-FzOk1tMnWm7rszhzQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: oss-security@lists.openwall.com
Date: Wed, 6 Jul 2016 09:20:59 +0200
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Browsing and attaching images considered harmful in Linux

2016-07-06 0:41 GMT+02:00  <cve-assign@mitre.org>:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
>> I would like to bring the attention of the oss-security list to the
>> existence of many security issues in the gdk-pixbuf library and its
>> dependencies causing a that attaching a corrupted image file in Linux
>> has become a risky business. For instance, there is a read
>> out-of-bounds in librsvg2 (a dependency of gdk-pixbuf used to render
>> svg images), which can be easily triggered if you try to attach a svg
>> in Firefox.
>
>> librsvg2 (2.40.2-1 with debug symbols)
>
>> 1. Download and unpack boom.tar.gz somewhere.
>> 2. gdb --args /usr/lib/firefox/firefox
>> 3. Execute "run" and try to attach (ctrl+o) the svg file inside boom
>> directory in Firefox.
>>
>> Result:
>>
>> Program received signal SIGSEGV, Segmentation fault.
>
>> 0x00007fffbb7a4c0d in rsvg_pattern_fix_fallback
>> (pattern=pattern@entry=0x7ffffffea110) at rsvg-paint-server.c:645
>
>> It is interesting to note that rcx looks controllable:
>>
>> (gdb) x/i $rip
>> => 0x7fffbb7a4c0d <rsvg_pattern_fix_fallback+333>:        testb  $0x4,0xe4(%rcx)
>> (gdb) info registers
>> ...
>> rcx            0xe5e5e5e5e5e5e5e5        -1880844493789993499
>> ...
>>
>> Fortunately, this issue is already solved in the last revision of
>> librsvg2 (AFAIK, this issue has no CVE, so please MITRE assign one if
>> suitable). Nevertheless, I reported such vulnerability to Mozilla more
>> than a month ago hoping that they will disable the svg support in the
>> open/attach widget. After some discussion, it was marked as WONTFIX.
>> While i understand why, i still feel it can be productive to discuss
>> this here.
>>
>> (the same trick can be used to crash Chrome/Chromium, since the code
>> to open/attach an image is almost the same, so this is not a Firefox
>> specific issue)
>
> Use CVE-2016-6163 for this specific "read out-of-bounds in librsvg2 (a
> dependency of gdk-pixbuf used to render svg images)."

Thanks!

>
> (We cannot assign CVE IDs for the more general topic of "many security
> issues in the gdk-pixbuf library and its dependencies" without
> additional information.)

I only hope to encourage package maintainers to keep gdk-pixbuf and
its dependencies always in the last version.


>
> - --
> CVE Assignment Team
> M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
> [ A PGP key is available for encrypted communications at
>   http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
>
> iQIcBAEBCAAGBQJXfDX+AAoJEHb/MwWLVhi2UEAP/1iLYtrHAOrC5eEye9BjJJS3
> 8aZCZiBarS2FJIUWDs/W7H/8KkKNluhZJuKTQcWFcbMKzhNVNXoi2jLqD9p7O1NO
> c4/SDM8eSPLzSPHpk6m1ZU2N9WO/qA4xI4JW8Aq6AkeCSQMjsSbSraU/xXwhRHj0
> Ho4JCtlBi7YgDfzt1fOApf4lW9/0A0bVk877JdkOozXIq1nn5qHsiplqkHhw6QpN
> 1Yo32YH6QMHP5ZLMrhtUorZ9BaGbFIHrrowOD9TGS35sEjO9rXmo4H+auuHQRbup
> kkPBiU8EoEy23+lxIN8twdRMpICDAAqSFr4ZmVjCywZ7I2cGAh0wzO4rwPA268aj
> 9esSjut6wxZmpejy1YvJgrgkj0SYWn5jH5Obc8QYZoEBlT3l5DtDYRjN4JUsWm9n
> ben8vr+7d10F4ROkauebqop7TCexuAs50FTvrkhxDqHLeCI4yuXTRZCMBnaqf6eG
> 1pqj7h0E0Wf7Zhp53J5zMGCRgn0UhG3onEauT/Ge95FisuAkAZFwz5jQBJT3iFzD
> bLraASJNVVS28xrgyLfXL/1TrIs2fkMYF0bo/RVGQlqz1vMm0VFgjU3vVgSVlgZ8
> hLdH4FFDsj6Rx2v30CHRWkdt7ILB0aVSaIUUwt+VhmBagchg1bWCjoGw/YKNpvOx
> Bcb0TMBIqWVr/5eNilJr
> =iGCG
> -----END PGP SIGNATURE-----
