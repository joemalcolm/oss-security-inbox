X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["305" "Monday" "6" "March" "2017" "17:28:21" "-0500" "Anthony Sasadeusz" "sasadeu1@umbc.edu" "<CAH468dos8V4PXioySSBW1hR0Nm5-Bd007HmrSLwE=yKakzOmbg@mail.gmail.com>" "13" "[oss-security] Re: JasPer 2.0.12 NULL Pointer Dereference jp2_encode (jp2_enc.c)" nil nil nil "3" "2017030622:28:21" "[oss-security] Re: JasPer 2.0.12 NULL Pointer Dereference jp2_encode (jp2_enc.c)" (number mark "U       sasadeu1@umb Mar  6   13/305   " thread-indent "\"[oss-security] Re: JasPer 2.0.12 NULL Pointer Dereference jp2_encode (jp2_enc.c)\"\n") "<CAH468doehvXuMkgF3caMFmia4K+dXJp5=6JFRTrkNGkHFiNoow@mail.gmail.com>" ("<CAH468doehvXuMkgF3caMFmia4K+dXJp5=6JFRTrkNGkHFiNoow@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21624 invoked by uid 550); 7 Mar 2017 08:04:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3586 invoked from network); 6 Mar 2017 22:28:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=umbc-edu.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=zGVBkCS3Adt+y4a6xNP7t5b8SYs07H5Gpb3jr8ICFxA=;
        b=Msfv0wOduhonc2EYR3w73p7TcGREoPPuiYNvuQJSwbgZb+RnFWPA2vQ2OV+LvbKEWP
         e0FeO85CsfThd1dnQEn9KsdBzWMrACPpm8XxodGSfRgV7ALQWVhd1hanzYio4O6RY95p
         YctaYUJOR5t51z0D7e5YcmaHur8eOjfdEGLtI8WaT9W9RvuRrOgvxdnsqana5k5+/+HU
         7C9ghP0+fz0UGQHi1ghUjkaA5s3B5wqUYyCp/sYAUsqKa+2vNHOQnsYQXV+aGe6pjNCl
         KetMQQtlk8+NhquuYeV6qE5GdE3lqPg8ccetFSVlHsQfKhCEOZwFabCQT9+NS2RNLMcO
         9EDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=zGVBkCS3Adt+y4a6xNP7t5b8SYs07H5Gpb3jr8ICFxA=;
        b=KSQbWopiOFZR+STiCuRqgrFX5iSYVVQDTqmpGZu4whMLJQwTe97aPYYxZ12E2b5Pwj
         8sA1TySu7GY3xx0UqPrrwZ/dEWSZUjYz6jfRpPlitdfGGPDZ4EU6yaELQNlr+bIAmVLL
         kjagvSbnM9S67OcKDwQUd+vFhXT+LRPGJQfyB2QYP82lVuE7W3CVtTKDRv89fGeyd/eZ
         Q2M0KphmzbL7F2k8Zby7OebzseIhq0KxvJHygsmFwzUiTG58V33t2V8dGtGC6Zdav4I2
         MiQGzRjYvt9kaCQshApr9w+Hm6yw2mCu5JNawby354iTdHxUTXdhpI0Y1K00ZB/9FcMw
         sj5w==
X-Gm-Message-State: AMke39nDEIFSd+YkckCnDgEZI/9q7scvfsM9c5OtnXjDJeyjWhP25VLrkWrR2R/SvD53c1Iyzilw2tG5M0ugfY2m
X-Received: by 10.31.148.71 with SMTP id w68mr6317339vkd.87.1488839302185;
 Mon, 06 Mar 2017 14:28:22 -0800 (PST)
MIME-Version: 1.0
From: Anthony Sasadeusz <sasadeu1@umbc.edu>
Date: Mon, 6 Mar 2017 17:28:21 -0500
Message-ID: <CAH468dos8V4PXioySSBW1hR0Nm5-Bd007HmrSLwE=yKakzOmbg@mail.gmail.com>
In-Reply-To: <CAH468doehvXuMkgF3caMFmia4K+dXJp5=6JFRTrkNGkHFiNoow@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a11426190bc15f8054a176945
Subject: [oss-security] Re: JasPer 2.0.12 NULL Pointer Dereference jp2_encode (jp2_enc.c)

--001a11426190bc15f8054a176945
Content-Type: text/plain; charset=UTF-8

Reference: http://www.openwall.com/lists/oss-security/2017/03/06/1

Fixed in the following commit:
https://github.com/mdadams/jasper/commit/58ba0365d911b9f9dd68e9abf826682c0b4f2293

Thanks,

Anthony

--001a11426190bc15f8054a176945--
