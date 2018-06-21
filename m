X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["465" "Thursday" "21" "June" "2018" "12:22:28" "+0200" "Lukas Odzioba" "lukas.odzioba@gmail.com" "<CABob6iqkc7x7awz-aMAb-yOHWKdWgnQF0rkPYdporiUmGCkc5Q@mail.gmail.com>" "11" "Re: [oss-security] Intel hyper-threading security issues" "^Cc:" nil nil "6" "2018062110:22:28" "[oss-security] Intel hyper-threading security issues" (number mark "        lukas.odziob Jun 21   11/465   " thread-indent "\"Re: [oss-security] Intel hyper-threading security issues\"\n") "<20180621093754.GY53290@symphytum.spacehopper.org>" ("<CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com>" "<20180621045642.fy67joeaxu2n4j56@sivokote.iziade.m$>" "<20180621093754.GY53290@symphytum.spacehopper.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11358 invoked by uid 550); 21 Jun 2018 10:24:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7715 invoked from network); 21 Jun 2018 10:23:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ht59Okbt5igb1UmVc9+08n7KgEjlSTAjdjOOYreR0eU=;
        b=hMhfOinTrc2rgN4dUJZ1d3GQEMFJGf2HijUkmkR2VDBgIIqQxZhX05e4WM921TZsWg
         JtGvQGKqsAjFrBmSPiP+m31mdlcHzV+BGo2sL6hiWYG5+l09Fe+X0SWulHcjoasjRDOR
         NpdLLYqNNtO716updWcO5sfduGr2sESPvXKTMO8wRaTltsvz/uoSeuo509uNkG8AlJFY
         /99eJAEC4DkX44/Nvw4bPxxBOx5Qo+EZufKbngukyUbI70DsMQkJGoZk2ZrpdLfvvwMS
         YTnpX1Ze0rXmOWrMZ4dfgkyd3oamgaD47alM+ZRSgDP3/bwjG8FLwTBZWix7V9cwHHoQ
         k4eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ht59Okbt5igb1UmVc9+08n7KgEjlSTAjdjOOYreR0eU=;
        b=foIm3kbgRv4NWZtXYD471fL7rDLUxdapjFfx0UNTEx+Qqwbeuq9TsBu7cXtDhYoiw/
         xLV4F3clsL6syKvCzFSvcdu7XXTZ7rdHuFo0jBQgnGX579OwN6tpdmgDOIPeGzCvnInI
         ub5FanmScVsV1tYo/FCHXggGbmi3Ma7XnsGxiQXAmVQQTbSaXmezIyA52jfZoa5Tx5wM
         R48j+OpV/zUQ0gqHNkiqTv9ssbtjNYv2wbG+eH63alxCc2kb05p/0PMa3L5uqryzA2Xw
         kYr64cuaajMxeUPwj0LeLM9ZEId5SjhFUGRazHgz8XclynwMBDzqI4t2RTqTk/JO6D0e
         OtQw==
X-Gm-Message-State: APt69E2hrKd3NHjciz1uov2Fwo3uqxq8w7SzqHQGTxkO2vTPA0gwznMg
	dLCh/br4yG+bf3Tc6WdwviJiJ508kdcikm/T3YDXXquf
X-Google-Smtp-Source: ADUXVKITtuxXdbYcxqzz4LlNErBvgfoth1Ycm0bm2Fp1QO55bQRpwDGjF3tFJNTkgofS3sTdS5pwJEddzM+r9x596Kk=
X-Received: by 2002:adf:b053:: with SMTP id g19-v6mr20939062wra.128.1529576569081;
 Thu, 21 Jun 2018 03:22:49 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180621093754.GY53290@symphytum.spacehopper.org>
References: <CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com>
 <20180621045642.fy67joeaxu2n4j56@sivokote.iziade.m$> <20180621093754.GY53290@symphytum.spacehopper.org>
Message-ID: <CABob6iqkc7x7awz-aMAb-yOHWKdWgnQF0rkPYdporiUmGCkc5Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: secure@intel.com
Date: Thu, 21 Jun 2018 12:22:28 +0200
From: Lukas Odzioba <lukas.odzioba@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Intel hyper-threading security issues
To: oss-security@lists.openwall.com

2018-06-21 11:37 GMT+02:00 Stuart Henderson <stu@spacehopper.org>:
> That isn't possible with some BIOS. For example, newer Lenovo machines
> removed the option apparently due to perceived lack of demand...

If you feel like you really need that, on Linux you can dump SRAT ACPI
table decompile it, remove APICID entries of "ht processors", compile
it back and put into initrd.
https://www.kernel.org/doc/Documentation/acpi/initrd_table_override.txt

Thanks,
Lukas
