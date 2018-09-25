X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1769" "Tuesday" "25" "September" "2018" "20:24:42" "+0300" "Ariel Zelivansky" "ariel.zelivans@gmail.com" "<CAE-_4r3t0=fss0PSo9cSOVW3s4mXbJMnz5-WpY4MJifFFeDwgg@mail.gmail.com>" "56" "Re: [oss-security] CVE-2018-8023: A remote attacker can exploit a vulnerability in the JWT implementation to gain unauthenticated access to Mesos Executor HTTP API." "^Cc:" nil nil "9" "2018092517:24:42" "[oss-security] CVE-2018-8023: A remote attacker can exploit a vulnerability in the JWT implementation to gain unauthenticated access to Mesos Executor HTTP API." (number mark "U       ariel.zeliva Sep 25   56/1769  " thread-indent "\"Re: [oss-security] CVE-2018-8023: A remote attacker can exploit a vulnerability in the JWT implementation to gain unauthenticated access to Mesos Executor HTTP API.\"\n") "<CAGqxZSVqxSd27nWYFgicNVVMD8z=WXGZohsyX5xJ-Hh8p1643g@mail.gmail.com>" ("<CAPNiXbEAF=Se=QxAumYgog+4ZCoVpoPCUsfONszrNDqkNmzYaw@mail.gmail.com>" "<CAE-_4r2P-=PaJC7SFVawyKi3Y+X8raPnmddjmXC36pS6DLfEjw@mail.gmail.com>" "<CAGqxZSVqxSd27nWYFgicNVVMD8z=WXGZohsyX5xJ-Hh8p1643g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10011 invoked by uid 550); 25 Sep 2018 17:24:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9990 invoked from network); 25 Sep 2018 17:24:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=RAiMQdjfwVUMxNX2/FLZnCid/RzELhyVOjwuQKncCg8=;
        b=sQvB6GpY76vMe7f4Rtla/Ivpt7BW4BSzIHPjWaeza5u/KPwDXexRxPIyeVbrNV0Gfc
         2j3R24LAUcJwHOwwlzwmNNqxxHoKZ9i2nyqepkeGWxrT8juqukDwNHvkyF8NOcxaUBGt
         LrNStKeZVp0YPMH0hQSkIp9SvluaCkXtoiMqId0B9/uZsa7TdQGppzfsBbF6bvt34rcl
         ay8a4CDz3wRzvQg6k4Mh0LZLBu/3w2EawjtbmO5TC1OpFwOU4lVXVmmXOQiSFIuiPamx
         0BJCV4uJaYWaRvYbpRDj2P3OUJYaF7FVmhlsLoGlXhbFIBOLLQESieBPCirBOcdsZfeV
         YyNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=RAiMQdjfwVUMxNX2/FLZnCid/RzELhyVOjwuQKncCg8=;
        b=VwDGj8V+l6067Q/7bYksPNnSrHqRtQ1DThcsZO/+uzwInFfjDSELIdWhitm3SRb69J
         ZbKwi8MpSxJ5IR55t1bN2cF+QtCx3U7ec4tAehByP9br6Cy5zgsi3eU5mY84z1Q3dpIb
         ZDKoBLPrJMwYmxRh/qr96aawkBevSYP3FheOf+d5aTDXHaAoOLIf4m47KVXwlJbaevhC
         9hgmHnwJldlenNdcg+QNC0hTsuu9w6MBsbI5fHoqf7vn8JRMwSscU/9Ox1LM1PzbCARR
         w0A7I/4IbxZoN9DcPphgF41MTkmvzc42UfLwbeuKgfXfLTvkeKAqxiTnyEnWPTWDSJ5I
         hNMw==
X-Gm-Message-State: ABuFfoh0QwTqjrDraIDCPVHKu1u/65vNtc4ESu8hWnZl79VaqUbGafID
	AH5SgTzEBoekDZttMn00Ff2Df6xaf1NHinGVvFk=
X-Google-Smtp-Source: ACcGV62avXKLlFle6mwN4nsAHDrl9qeBmie2KnM8U7mzALjlgF9kDBz6QnJ19EcB83RuLyMTIUqOH4ZeoNaPowhndc8=
X-Received: by 2002:a50:e185:: with SMTP id k5-v6mr3025252edl.195.1537896283224;
 Tue, 25 Sep 2018 10:24:43 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAGqxZSVqxSd27nWYFgicNVVMD8z=WXGZohsyX5xJ-Hh8p1643g@mail.gmail.com>
References: <CAPNiXbEAF=Se=QxAumYgog+4ZCoVpoPCUsfONszrNDqkNmzYaw@mail.gmail.com>
 <CAE-_4r2P-=PaJC7SFVawyKi3Y+X8raPnmddjmXC36pS6DLfEjw@mail.gmail.com> <CAGqxZSVqxSd27nWYFgicNVVMD8z=WXGZohsyX5xJ-Hh8p1643g@mail.gmail.com>
Message-ID: <CAE-_4r3t0=fss0PSo9cSOVW3s4mXbJMnz5-WpY4MJifFFeDwgg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: oss-security@lists.openwall.com, Alex R <alexr@apache.org>
Date: Tue, 25 Sep 2018 20:24:42 +0300
From: Ariel Zelivansky <ariel.zelivans@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2018-8023: A remote attacker can exploit a
 vulnerability in the JWT implementation to gain unauthenticated access to
 Mesos Executor HTTP API.
To: Terry Chia <terrycwk1994@gmail.com>

Thanks for following up with this

On Mon, Sep 24, 2018 at 4:36 AM, Terry Chia <terrycwk1994@gmail.com> wrote:
> Hi Ariel,
>
> I believe the following commit contains the fix:
> https://github.com/apache/mesos/commit/2c282f19755ea7518caf6f43e729524b1c6bdb23
>
> Cheers,
> Terry
>
>
> On Sun, Sep 23, 2018 at 12:46 AM Ariel Zelivansky <ariel.zelivans@gmail.com>
> wrote:
>>
>> Hi,
>>
>> I couldn't find the fix for this in the mesos repository and it is not
>> documented in the CHANGELOG, could someone direct me to the fixing
>> commit/patch?
>>
>> Thanks
>> Ariel
>>
>> On Fri, Sep 21, 2018 at 1:50 PM, Alex R <alexr@apache.org> wrote:
>> >
>> > Severity: Important
>> >
>> > Vendor:
>> > The Apache Software Foundation
>> >
>> > Versions Affected:
>> > Apache Mesos 1.4.0 to 1.6.0
>> > The unsupported Apache Mesos pre-1.4.0 releases may be also affected.
>> >
>> > Description:
>> > Apache Mesos can be configured to require authentication to call the
>> > Executor HTTP API using JSON Web Token (JWT). The comparison of the
>> > generated HMAC value against the provided signature in the JWT
>> > implementation used is vulnerable to a timing attack because instead
>> > of a constant-time string comparison routine a standard `==` operator
>> > has been used. A malicious actor can therefore abuse the timing
>> > difference of when the JWT validation function returns to reveal the
>> > correct HMAC value.
>> >
>> > Mitigation:
>> > pre-1.4.x users should upgrade to at least 1.4.2
>> > 1.4.x users should upgrade to 1.4.2
>> > 1.5.x users should upgrade to 1.5.2
>> > 1.6.0 users should upgrade to 1.6.1
>> > 1.7.0-dev users should obtain Mesos 1.7.0
>> >
>> > Credit:
>> > This issue was discovered by Terry Chia (Ayrx).
>> >
>> > Alex on behalf of Mesos PMC
