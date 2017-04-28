X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["913" "Friday" "28" "April" "2017" "14:34:38" "+0800" "=?UTF-8?B?5p2O55Cq?=" "pjqruc@gmail.com" "<CAOGJi+7UWmxUZercz+_TObWWwGz9NpZGSYL6Muy+hHDO-MW0Pw@mail.gmail.com>" "30" "[oss-security] CVE-2017-7475 Cairo-1.15.4 Denial-of-Service Attack due to Logical Problem in Program" nil nil nil "4" "2017042806:34:38" "[oss-security] CVE-2017-7475 Cairo-1.15.4 Denial-of-Service Attack due to Logical Problem in Program" (number mark "U       pjqruc@gmail Apr 28   30/913   " thread-indent "\"[oss-security] CVE-2017-7475 Cairo-1.15.4 Denial-of-Service Attack due to Logical Problem in Program\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11975 invoked by uid 550); 28 Apr 2017 11:07:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15528 invoked from network); 28 Apr 2017 06:34:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=sPFMjZpR33/VZDBZ+Vc0IQucFtyx0NVQzfmYYL6oM4k=;
        b=NhpOGhN3MPhTJm2K8fWrW1IaSdG7kHUFnX/cMybtLwkXRYDF141g0UO/9q/UWXTySn
         mpzCXpwSGS5rDW3LIYqUL5lVg8tVgM/1FbqAJLkykRTGdf/nCeniFqiI7fici2irukSW
         JGzWMZbiAMyKEmCLklFSIB/JxrDhILG03mqCAjaCWBLWnGeWYIUITA51zXBkaQiaxqT4
         NtQakStlsLNrQal1s7zanb2soIwCxnMIwoVDVKwxBTXACyGW+lmfZRXFmnafyezJ8LyR
         p9l9Pr+FdoPoQM0LpuLJV0CRXDUNrUAJ6onDYpWuaBD2Xdy6VVp8zcb9bgjV8BDL1ZyR
         lMRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=sPFMjZpR33/VZDBZ+Vc0IQucFtyx0NVQzfmYYL6oM4k=;
        b=dxatSY+Vzl26VStrJXWTgfPmZMDK9lpSV4TTtHyP0643wMwiwEA9O8HvBj2WawE7G3
         fCiBPa4Y5AscY9C0me8t0Vj+e4tpEbYXNplywnJJriJzp4j+4r0UiAryBNT7lhMoTv3E
         XCj0P98D2fSMoTwc589D49n6i2WTTIeoDkplrLpIW4p1gdC/1c8Q2MPoF3rDCvIJ9v+H
         aMsoH4ZR81zaUQf3m+bI7MvHH66pVjyQ//A8VG8+G2lfy/8g+gc7hoUSu/xLjhxgSOhN
         lYMkYNGdzxO2U6Oflno4Oq27YNyVDZNcn5WZswiGM+kRGwK6FtTVH03cNDHNV8P/9+cU
         1YTQ==
X-Gm-Message-State: AN3rC/7mGdBTclo6KcKbSEsYBkRtiOUDPss7uTFP0VEU6YMF6mmnleG7
	W6lVY0bSd8gz3ZlIApakeOhd88D6spJo
X-Received: by 10.37.13.67 with SMTP id 64mr7402339ybn.7.1493361278937; Thu,
 27 Apr 2017 23:34:38 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?5p2O55Cq?= <pjqruc@gmail.com>
Date: Fri, 28 Apr 2017 14:34:38 +0800
Message-ID: <CAOGJi+7UWmxUZercz+_TObWWwGz9NpZGSYL6Muy+hHDO-MW0Pw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a11c043168dab24054e344481
Subject: [oss-security] CVE-2017-7475 Cairo-1.15.4 Denial-of-Service Attack due to Logical
 Problem in Program

--001a11c043168dab24054e344481
Content-Type: text/plain; charset=UTF-8

Hello,

## Overview
I and my colleague have found a vulnerability of Cairo-1.15.4 when fuzzing
HarfBuzz with AFL.
Cairo is a 2d graphics library, and HarBuzz is an OpenType text shaping
engine which contains a tool named *hb-view* to give a graphical view of
text using Cairo with a font provided by user.
Owing to logical problem in program, the crash happens during null pointer
deference and the vulnerability will cause a denial-of-service attack with
a crafted font file.

## Note
I have reported this issue to cairo and here is the link:
https://bugs.freedesktop.org/show_bug.cgi?id=100763.

When I disclosure to Red Hat Product Security, they suggest me to use
CVE-2017-7475 for this issue and I have communicated this number to
upstream.


Best Regards,

--
Jiaqi Peng, Bingchang Liu @ VARAS of IIE

--001a11c043168dab24054e344481--
