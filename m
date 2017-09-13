X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["600" "Wednesday" "13" "September" "2017" "12:24:06" "-0700" "akuster" "akuster@mvista.com" "<54a4f144-6765-b444-fe00-c2779bd86c3d@mvista.com>" "24" "Re: [oss-security] Tcpdump 4.9.2" "^Date:" nil nil "9" "2017091319:24:06" "[oss-security] Tcpdump 4.9.2" (number mark "        akuster@mvis Sep 13   24/600   " thread-indent "\"Re: [oss-security] Tcpdump 4.9.2\"\n") "<f55c2071-40ca-ad1a-6c1b-33f8326325c5@dns-oarc.net>" ("<20170907200605.GA13030@jasmine.lan>" "<CAA7hUgFVeLSChQuCvYaribpdt=9kj=o+A_LYoa1v7QgMy=RzmA@mail.gmail.com>" "<87mv658rqa.fsf@dell.be.48ers.dk>" "<f55c2071-40ca-ad1a-6c1b-33f8326325c5@dns-oarc.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6129 invoked by uid 550); 13 Sep 2017 19:24:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6106 invoked from network); 13 Sep 2017 19:24:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=WeF9HmYH438i4L796jW5Bw0bbrxw2G5cLByF7H2OaJY=;
        b=KC61MgS11QfTMZ/OsxQAMXJDwOBowFysZC8rbxt2iONh/5yt1+9LGueV7TWHuFs/1/
         ZRI2ZtVwuR+SR27Wli+EjRMS7gxp8AboW+IU4jAyMrjhSNGikQVfEqoktpyBZZqIYdkl
         ig+NiAffO2LjQjM27ny9Wk0NJ0DiSOdf+mix8TEmZ8N6PNX6lYBQmJg4h5QHo+KTKVAg
         wQrmXMgP1GbKtZ0zDhkkCgAAsaM5u5nIT3RizIBKLliXi09zbwr9UuHdyxU1DMh1Zw+C
         DXyLeo6BYRCOkc80cyFbyVYQfPVgRKMWPCDVzCJupuQOeU0c/y1W0yJ4MNR3oAN3Izcf
         8J+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=WeF9HmYH438i4L796jW5Bw0bbrxw2G5cLByF7H2OaJY=;
        b=tLfn0J8JmXelBJnjS8y7RnFzclPM8MppQT0HLQ4i5RdTdw/Xa7WJVbuOf5I5LWITsk
         0J/qXwieI+DXhLvUNNz/Ycqsney+lWKHop7QBFhtLC0ivcbLicdiuga1uyuCrHqIVHyi
         MORRISbVnXIDQ3LrqL0R3biqUMXL4hwso3riuHn0PKax+q5i82eSbdMtA4Mq1sIWV4xp
         ggq/ET/j2GjA3MQ3r7K8Rll/spxg+ysCk+We7j5borJP/xCsCk63FHcauZJTvgx+hlFa
         wMfEIi22HwqQ/dGlN79VeKJpv8iVXRex2nZ8H4HPjaUP4HAxqRSpARWbFRHnB/6jnNvp
         IJTQ==
X-Gm-Message-State: AHPjjUh6HVoFAeL5I//G/rPXIqRma0FVFxX93MdsXWvXlwA87e2//YGl
	EtldBKE8GC45I8BWsDH6hg==
X-Google-Smtp-Source: ADKCNb65HygwMJHkYEGbbzd/orth2lXIS50cEwF3dCmeXeGjc1y13Wy2IUHK+YgmOWR0Muhv7N8vXg==
X-Received: by 10.84.209.228 with SMTP id y91mr21669262plh.130.1505330649952;
        Wed, 13 Sep 2017 12:24:09 -0700 (PDT)
References: <20170907200605.GA13030@jasmine.lan>
 <CAA7hUgFVeLSChQuCvYaribpdt=9kj=o+A_LYoa1v7QgMy=RzmA@mail.gmail.com>
 <87mv658rqa.fsf@dell.be.48ers.dk>
 <f55c2071-40ca-ad1a-6c1b-33f8326325c5@dns-oarc.net>
Message-ID: <54a4f144-6765-b444-fe00-c2779bd86c3d@mvista.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <f55c2071-40ca-ad1a-6c1b-33f8326325c5@dns-oarc.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Date: Wed, 13 Sep 2017 12:24:06 -0700
From: akuster <akuster@mvista.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Tcpdump 4.9.2
To: oss-security@lists.openwall.com, =?UTF-8?Q?Jerry_Lundstr=c3=b6m?=
 <jerry@dns-oarc.net>, Peter Korsgaard <peter@korsgaard.com>



On 09/08/2017 03:44 AM, Jerry Lundström wrote:
> On 09/08/17 11:27, Peter Korsgaard wrote:
>> Can we please have this tarball officially released on tcpdump.org /
>> 4.9.2 tagged in git then?
> There is a tarball, just no tag yet.

It appears the external github has updated the commits with CVE info 
included.

https://github.com/the-tcpdump-group/tcpdump

- armin
>
> Version: 4.9.2
> Release Date: September 3, 2017
>
> - http://www.tcpdump.org/release/tcpdump-4.9.2.tar.gz
> - http://www.tcpdump.org/release/tcpdump-4.9.2.tar.gz.sig
> - http://www.tcpdump.org/tcpdump-changes.txt
>
> /Jerry

