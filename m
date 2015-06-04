X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["596" "Thursday" "4" "June" "2015" "09:11:28" "-0300" "Felipe Pena" "felipensp@gmail.com" "<CA+5g0SLU4C2ma_otHorNKQ+u52N6yOYYmJ7sXcG7FvYKAgC3bg@mail.gmail.com>" "15" "Re: [oss-security] Re: Re: Re: Re: CVE-2015-3217: PCRE Library Call Stack Overflow Vulnerability in match()" nil nil nil "6" "2015060412:11:28" "[oss-security] Re: Re: Re: Re: CVE-2015-3217: PCRE Library Call Stack Overflow Vulnerability in match()" (number mark "        felipensp@gm Jun  4   15/596   " thread-indent "\"Re: [oss-security] Re: Re: Re: Re: CVE-2015-3217: PCRE Library Call Stack Overflow Vulnerability in match()\"\n") "<tencent_323A2A4F3543CA8C5DA2E0E7@qq.com>" ("<tencent_323A2A4F3543CA8C5DA2E0E7@qq.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22012 invoked by uid 550); 4 Jun 2015 12:12:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21989 invoked from network); 4 Jun 2015 12:12:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=xpKFC/8iq3FpIV54f3M/BXpHNUkjUTdntSXGjrDHjbo=;
        b=PCj2UmfmnGmhaowCzcnubuapbgT7HBxK0ztAR1OVE/ungbg7ybf8B1E0Aq8ct6vcKf
         8OBcmDI2gMUKI8JvC4dvuY/Eq2FW7oJvB+eYgcM9l9pi8Vl+6GtOjU68Kc1qyHu+ozxb
         h7gKXeIeoORc9AydhnUXvOOkFk1B2gDQj37If5SPJRHI5a5sGLK7eMPxZtRFjRZm05BV
         mFuGb9b+Bngogrj+x4Xx/cDGqr4rhheFqUA2aoEocdBj8sJmWBQoPm9n2au5L6VxYjst
         /e/YcYyminDkdXS0nduvoS7wBRgmRkKvw4OKZeML+jGdtw1FhaZseIFVfv8aQ0ibcd/M
         sj9g==
X-Received: by 10.152.29.6 with SMTP id f6mr2945355lah.85.1433419908831; Thu,
 04 Jun 2015 05:11:48 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <tencent_323A2A4F3543CA8C5DA2E0E7@qq.com>
References: <tencent_323A2A4F3543CA8C5DA2E0E7@qq.com>
Message-ID: <CA+5g0SLU4C2ma_otHorNKQ+u52N6yOYYmJ7sXcG7FvYKAgC3bg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Thu, 4 Jun 2015 09:11:28 -0300
From: Felipe Pena <felipensp@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Re: Re: Re: CVE-2015-3217: PCRE Library Call
 Stack Overflow Vulnerability in match()
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

On Wed, Jun 3, 2015 at 9:58 PM, wen_guanxing
<wen_guanxing@venustech.com.cn> wrote:
> Although PHP is not setting the match_limit_recursion correctly, this pattern revealed a bug in the zero length recursion detector.Running the pattern with pcretest, the process will also hang.
> It's fair to say that both PHP and PCRE has made a mistake.
> I will report this later to PHP later.

AFAIK this is not a bug on PHP at all, this is a long time known issue
on PCRE lib instead.
Check the documentation for futher details:
http://pcre.org/current/doc/html/pcre2stack.html


-- 
Regards,
Felipe Pena
