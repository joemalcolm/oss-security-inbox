X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["129" "Friday" "16" "June" "2017" "20:54:14" "-0700" "Michal Zalewski" "lcamtuf@coredump.cx" "<CALx_OUCYUQO2Xdzp9XDGjZ=xXLzjxhNt6Z92N1anR67tEr-4EA@mail.gmail.com>" "3" "Re: [oss-security] two vulns in uClibc-0.9.33.2" "^Date:" nil nil "6" "2017061703:54:14" "[oss-security] two vulns in uClibc-0.9.33.2" (number mark "        lcamtuf@core Jun 16    3/129   " thread-indent "\"Re: [oss-security] two vulns in uClibc-0.9.33.2\"\n") "<alpine.GSO.2.20.1706162101560.12810@freddy.simplesystems.org>" ("<tencent_18C312B86EA079DA42B11D83@qq.com>" "<20170616204437.GC2269@hunt>" "<CALx_OUAtt5gbRP+imZfXJwvgfs+Y5hrYqdmLhJHS7SRN5z_VCQ@mail.gmail.com>" "<alpine.GSO.2.20.1706162101560.12810@freddy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26036 invoked by uid 550); 17 Jun 2017 11:34:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13375 invoked from network); 17 Jun 2017 03:54:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=coredump-cx.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=Jgw1vyaCWXFB/Eyv6I45jdCdplLQKsBfnrGvkuvK/O0=;
        b=tuWa+xmNdi3LocJ5cml2iphwm3kc2tTGc0hgbbvJ3JZ58bxdVfNgUtVhcVWvIIYLoN
         4OBLWp5vZKFCuvIMzclUygLCT2OJA+/n13fhDz8V6GuTkdH7I9EoAlMCRmBXuqU9h0A+
         klGGHkZpyXunCKaSq9lKVGvokvrjdIAQrFxl2crsG7y2V5GJZS0JIY8GLyy/zu/Oq3Te
         vMDZXcV7/z+jgF1NGoIJGVkCbaDedr9ssPFGiC42FBH44Bmf008jbKd4Q5gDXx6v0MKW
         ZKpSumgxN0k665BGXh5Dc2DBJyy6e63GqvD2UWPF37vvv0Ulkxza+5KrDTYSC2NK9PD4
         2Beg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=Jgw1vyaCWXFB/Eyv6I45jdCdplLQKsBfnrGvkuvK/O0=;
        b=oOsfQBUOAUc43UGf5Pw5DqNw772jgrzcF8H+OpkltUls+p60u5ziwQgh0o8HqDUJsk
         aTAzlerX8PRjPW78VcOJXjlw/TQCMy3H1wyvCBH6tYAjijF5DTuuhrFkxBT7j+VAJMCL
         w2+9pLdMDQ/v7Jb+D+vQRaGfOk2fMiSFv/ctY4LEEL7cqUiH/79JXIqejPXSrGcOXmfj
         zxXqOQXn+CZkqk5BDrTvMY9/I+EblqMdAe1tYPGttoKF6PdQi6gWFkNGrU/4JfSoPgJK
         l5hdsowcnzZDOZxPAo/dkGeOBErqfHQIVAhG4AAkYUddC/bgZShMh2HRkwiPItSbPGFZ
         JYow==
X-Gm-Message-State: AKS2vOwasarOOBFoBZwq9+3ce2u5T0UDC+S1VXw5HkpXSoRv5h1/VzFl
	ouIFDys0RjRATgavs0L5W/0zZ3/pVNmx0AU=
X-Received: by 10.80.137.220 with SMTP id h28mr9290709edh.72.1497671675464;
 Fri, 16 Jun 2017 20:54:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.GSO.2.20.1706162101560.12810@freddy.simplesystems.org>
References: <tencent_18C312B86EA079DA42B11D83@qq.com> <20170616204437.GC2269@hunt>
 <CALx_OUAtt5gbRP+imZfXJwvgfs+Y5hrYqdmLhJHS7SRN5z_VCQ@mail.gmail.com> <alpine.GSO.2.20.1706162101560.12810@freddy.simplesystems.org>
Message-ID: <CALx_OUCYUQO2Xdzp9XDGjZ=xXLzjxhNt6Z92N1anR67tEr-4EA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 16 Jun 2017 20:54:14 -0700
From: Michal Zalewski <lcamtuf@coredump.cx>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] two vulns in uClibc-0.9.33.2
To: oss-security <oss-security@lists.openwall.com>

> Uclibc is a C library like GNU libc.  Why would a JS engine not use it?

Because they usually use stuff like pcre or irregexp.
