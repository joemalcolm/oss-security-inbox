Received: (qmail 25928 invoked by uid 550); 28 Sep 2023 16:28:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30366 invoked from network); 28 Sep 2023 15:49:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695916150; x=1696520950; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DElzw9imit4g3/16J/Xnru0iQn054OKmkIYkOkmw1lE=;
        b=DL2HSS3t2OM1Ayikrj7RQ0GNYVTMA0j7QX7vh4EYiCJdGHMtOkKbhlR4qr2/jBYvw2
         V/xDdA1KDbFeShCGY4JEHdnNipkqKgGqNzO8zuTr+a5g1SGPD8Hk/wELmLJqb8lxcNIg
         ndSN4dwUhs5/8phZeGnrhwanO2PbfPzbNvfDQIMtet2vloe+ViQd0DDByL4vk9CQerKH
         XKA1/YQJpxAOe17PvO/7RStI3kx9797/OkrAoW/Zvk+j9nq6ZLb6gnV+snc+GRWwATyf
         lI825m3lUDokPi6zP7QywMeNR4WUCLP0d+WfnAuvrbRxEa8mPBNg1o4+E+3HmM9cKVVG
         R98A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695916150; x=1696520950;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DElzw9imit4g3/16J/Xnru0iQn054OKmkIYkOkmw1lE=;
        b=NsWJxrdLzCJpXFABHFwPHwaREnmk7rCe3BFgLbOATNiYM4+C6Z5bqj36Dg1AfygZ2b
         hFPaYHh9U2nGddyiOWqGz3tdRGi5w3MniGGfQa5Y8uL9A6Rd+TW+Bd3ZJ+swDeMXuRjY
         bsyUhj7L6h6jYeFrABX+gC7cdvbLupwVXaMNSg8i7wrWgWojLe/Veitx+6ZcggBsXbrj
         5PjUJpSTE3Zi4gb6guLPwXBQxGk2BJ2EnzrlRTCD35uuZz13ZsjQG/Ub+ftBozYvrffF
         aZZODS3j4+/w353oQyAZwjCOyS4704bhTG6UgbGNwtvfWjiFkwgoDGwOS2Azsu5iaidW
         o95Q==
X-Gm-Message-State: AOJu0Yx/QfnrZJ3AhrG3xUNgCt6Plp5B4s3wSi3ya60jRhhHyY3fNfcX
	Lx2rJ1f3tqWjNstWlJMZ95xZQ2cMvuT+Bg==
X-Google-Smtp-Source: AGHT+IF/4BANQX/+Ffa00sGJz+sj/kTvAl8LmFdE3y+ITvPwnMvHXFP0kL2gMjxC2fuAkKx+P0omEg==
X-Received: by 2002:a5d:6643:0:b0:31a:e73f:3fe7 with SMTP id f3-20020a5d6643000000b0031ae73f3fe7mr1755255wrw.3.1695916150387;
        Thu, 28 Sep 2023 08:49:10 -0700 (PDT)
Message-ID: <2cccd54e-6a8e-8b79-3913-7b13817a0b72@gmail.com>
Date: Thu, 28 Sep 2023 17:49:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <20230921205250.GA13106@openwall.com>
 <ZRKn0bQVe4MBMYiC@eldamar.lan> <20230926153454.GA12511@openwall.com>
 <CAH8yC8nQVki00kqwheM9n0tvJ5o=apNS-tnNcALy7Tvx4TC2Pg@mail.gmail.com>
From: Emilio Pozuelo Monfort <pochu27@gmail.com>
In-Reply-To: <CAH8yC8nQVki00kqwheM9n0tvJ5o=apNS-tnNcALy7Tvx4TC2Pg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE-2023-4863: libwebp: Heap buffer overflow in
 WebP Codec

On 28/09/2023 14:36, Jeffrey Walton wrote:
> On Tue, Sep 26, 2023 at 11:37 AM Solar Designer <solar@openwall.com> wrote:
>>
>> It was great to hear from Vincent that the newer libwebp changes are
>> just "Clean-ups, no security issues there."  Yet I think it would also
>> be great if someone in here double-checks that.
>>
>> Regarding the assert failure detected by oss-fuzz, "A release build
>> would not be negatively affected."  libwebp does specify -DNDEBUG by
>> default in:
>>
>> $ fgrep -rl DNDEBUG .
>> ./Makefile.vc
>> ./xcframeworkbuild.sh
>> ./iosbuild.sh
>> ./configure.ac
>> ./makefile.unix
>>
>> and there's also cmake support, but apparently cmake sets -DNDEBUG for
>> release builds by default.  So at least this statement does appear to be
>> true for libwebp itself as built via the above means.
>>
>> However, there's also Gradle support, and the gradle* files do not
>> mention NDEBUG.
>>
>> Also, I wonder if there are other projects building code from libwebp
>> via different build environments.
>>
>> So there might be (a small minority of) uses of libwebp where the assert
>> exists in a release build of some project.
> 
> Crypto++ caught a CVE because use of -DNDEBUG was not documented. The
> library's build system used -DNDEBUG (like libwebp), but folks who
> ported to other build systems did not use it. In my mind's eye, others
> who did not use the -DNDEBUG flag should have caught a CVE, not
> Crypto++. Also see CVE-2016-7420 and
> <http://seclists.org/oss-sec/2016/q3/520>.
> 
> Crypto++ eventually took away the footgun by supplying its own
> CRYPTOPP_ASSERT that required a user to supply a switch to engage
> asserts. Asserts were no longer enabled by default when someone
> omitted -DNDEBUG. Also see
> <https://github.com/weidai11/cryptopp/blob/master/trap.h>.
> 
> I've never seen a CVE for documentation before or since.

Here's a recent one:

https://www.cve.org/CVERecord?id=CVE-2023-0466

https://git.openssl.org/gitweb/?p=openssl.git;a=commitdiff;h=51e8a84ce742db0f6c70510d0159dad8f7825908

Cheers,
Emilio
