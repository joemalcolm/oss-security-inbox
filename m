Received: (qmail 18144 invoked by uid 550); 5 Feb 2024 18:44:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32666 invoked from network); 5 Feb 2024 18:34:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707158247; x=1707763047; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ueaq2ZURzxtgrSfAgG9whvIefU8D5Ocm4kTlltQozm4=;
        b=wkrjygc0XeswWfEhsvmwV43sew363/Tg/iVX1br6/otvxzbJpHma2BII9RH+Y2vrjN
         soIaJwMQs60k3lk6rCCjt3Z9qiRFPKJJczPD+yh2OoEJEA0dhkPHV7qAcWF+3ycCU+7/
         BWM+NTmCSK3AoQT3d49zMMH0wRK6gsBgQb1gS4PWnX0j7C3UgzBeGl2k/zk9TrhFSsbF
         /fMr5AHRZ3hfFAoUhGuxNLIoXrtvVHudSWCMITHhZdLTFT9JQ2mZ4SsTXQ/C18yjThKQ
         /2S2Br2y6YhFP+H7xTVxYSpuJZxocedreet5n9pxXLqVGkkm+0MgEWDsgjxssccAdy74
         DhRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707158247; x=1707763047;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ueaq2ZURzxtgrSfAgG9whvIefU8D5Ocm4kTlltQozm4=;
        b=PHL9nuxcdzrt6tUqQ7IBENGtgnUsCXuWQK15GZJPi3fEaTpSG2mXDIVb0d6N2RIHOH
         OMF0BPpPALF9rQIun+tHLTJp/DrGSspXG1fshIeWxpKeOjIP22vj4a01Mz+wGiA29OKm
         fyWAlrOk49UpvWYNnwKsjCvBN6581VBswFHqvc6Vk1X7WrkPFPrRSSMspdyIGuLue7T/
         70G6N7WaMvSOjky5J1lwvvSslhNuswD12uWzMndkS8YaoDEvqPYTlGVV77lvCbbGU88l
         /bzCo7wdK0u2oubqUzkKqjDVCw8/F2B29NTsV9t2YqzoqQRldP2AxaZ++r09KbPpqBnJ
         0uEQ==
X-Gm-Message-State: AOJu0YxtUf38BiK3deKy4NFPobnx3Hld8FXB59KlPgwY99CEILxqzovN
	b8OWvdR9gUjboBmAA7JEYKOte7u0JNCc87kI3u8Uj+BGxnk3cNK9M1+cZ86gOsc=
X-Google-Smtp-Source: AGHT+IF6dPHhXY9PNl0wY/HY7y7Ui1N+mSjI23yLeG3Imi8A/oe9lTLRtl8VOu50MZ44++9qN//60w==
X-Received: by 2002:a05:6830:a4a:b0:6dd:efff:d7db with SMTP id g10-20020a0568300a4a00b006ddefffd7dbmr73994otu.20.1707158247476;
        Mon, 05 Feb 2024 10:37:27 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUiayGk3NW6OwKHfC/ZQQ/uqd3o0GHQHHeFn4ju1YiT+mPrnAnIrU0n0SKwTNLjqCjs2KXNjraBJboBTEOdmQ==
Message-ID: <282b3cec-6038-4046-a92d-d8375bdc24ef@linaro.org>
Date: Mon, 5 Feb 2024 15:37:24 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Solar Designer <solar@openwall.com>,
 Qualys Security Advisory <qsa@qualys.com>
Cc: oss-security@lists.openwall.com
References: <20240130183915.GB16546@localhost.localdomain>
 <20240204163520.GA20987@openwall.com>
 <20240205155619.GA28587@localhost.localdomain>
 <20240205172345.GA27288@openwall.com>
From: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Organization: Linaro
In-Reply-To: <20240205172345.GA27288@openwall.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Out-of-bounds read & write in the glibc's qsort()



On 05/02/24 14:23, Solar Designer wrote:
> On Mon, Feb 05, 2024 at 03:56:41PM +0000, Qualys Security Advisory wrote:
>> On Sun, Feb 04, 2024 at 05:35:20PM +0100, Solar Designer wrote:
>>> It's so invasive I cannot easily tell whether qsort() remained robust
>>> after it or not.  There's no longer a "tmp_ptr != base_ptr &&" check.
>>> So, lacking known-working tests in glibc tree, we don't know about glibc
>>> 2.39's status with respect to this issue.
>>
>> The "tmp_ptr != base_ptr" bounds check was originally added to the
>> _quicksort() function, but is not needed anymore in glibc 2.39 because
>> the old fallback to quick sort (the _quicksort() function) has been
>> completely removed and replaced by a fallback to heap sort.
>>
>> Note, just in case: we have not reviewed the implementation of this new
>> fallback to heap sort.
> 
> Oh, I should have spent a bit more time looking at the latest glibc
> before posting.  I just did.  So it indeed did not reintroduce this same
> issue.  That's great.
> 
> Regarding the tests, I now see that one of them explicitly calls
> heapsort_r(), so it tests that fallback code in this way, however the
> rest simply call qsort() or qsort_r(), so they only test non-fallback
> code.  It'd improve code coverage of these tests if they first do what
> they do now, and then repeat the same after setting RLIMIT_AS to 0.

Thanks for heads up, I will see if I can take some time to improve
the current qsort coverage to test both mergesort and the heapsort
fallback for all tests.

The way we usually test internal interfaces (such as the heapsort 
fallback) is to create 'internal' tests that are essentially
static linked ones that call the internal glibc interfaces. 

I think they would be a better alternative, specially because some test
do require malloc to create temporary buffers and the RLIMIT_AS trick
will add some extra complexity in such cases.

> 
> On Mon, Feb 05, 2024 at 05:02:52PM +0800, Alexander E. Patrakov wrote:
>> On Mon, Feb 5, 2024 at 4:45???PM Alexander E. Patrakov <patrakov@gmail.com> wrote:
>>> On Mon, Feb 5, 2024 at 4:40???PM Alexander E. Patrakov <patrakov@gmail.com> wrote:
>>>> On Mon, Feb 5, 2024 at 12:36???AM Solar Designer <solar@openwall.com> wrote:
>>>>> I don't have a glibc 2.39 build handy.  Perhaps someone on a distro that
>>>>> has already updated can run the attached test program and let us know?
>>>>
>>>> Here you go: no output on Arch Linux.
>>>>
>>>> [aep@aep-haswell tmp]$ gcc ./glibc-qualys-rocky-qsort-test.c
>>>> [aep@aep-haswell tmp]$ ./a.out
>>>> [aep@aep-haswell tmp]$ /lib64/libc.so.6
>>>> GNU C Library (GNU libc) stable release version 2.39.
> 
>>> Sorry, I should have followed the instructions.
>>>
>>> [aep@aep-haswell tmp]$ while true; do n=$((RANDOM*64+RANDOM+1));
>>> prlimit --as=$((n*4/2*3)) ./a.out $n; done
>>>
>>> This results in a mix of these outputs:
>>>
>>> PASSED
>>> ./a.out: error while loading shared libraries: libc.so.6: failed to
>>> map segment from shared object
>>> Segmentation fault
> 
>> Upon investigation, I have to add: the segmentation faults come from
>> code that runs before main(), so they do not indicate a problem in
>> qsort().
> 
> Sorry, I should have included usage instructions.  It's like this:
> 
> gcc glibc-qualys-rocky-qsort-test.c -o glibc-qualys-rocky-qsort-test -O2
> while true; do n=$((RANDOM*64+RANDOM+1)); echo $n; ./glibc-qualys-rocky-qsort-test $n; done
> 
> In other words, almost same as Qualys', but with prlimit omitted because
> the program itself now takes care of it.  With our current patched glibc
> in Rocky Linux SIG/Security, the output is like this:
> 
> 396121
> PASSED
> 77207
> PASSED
> 683895
> PASSED
> 1402983
> PASSED
> 
> and so on.  No crashes anymore.  Before the one-line patch, it would hit
> the test program's abort() within seconds, like Qualys had observed:
> 
> 153916
> PASSED
> 990497
> PASSED
> 1501673
> PASSED
> 1344354
> PASSED
> 176197
> PASSED
> 326004
> Aborted (core dumped)
> 1892398
> Aborted (core dumped)
> 834837
> PASSED
> 2066676
> PASSED
> 589237
> Aborted (core dumped)
> 
> As to the occasional segfaults when you do use prlimit, I also saw them
> on Rocky Linux 9.  They appeared to come from the kernel right after
> execve() fails and kind of returns control back to prlimit.  I think
> they're a symptom of execve() concluding it ran out of memory too late
> for it to allow the original program to continue running.  As I recall
> from patching this code in the kernel many years ago, such conditions
> did and probably still do exist.  That's kind of fine.
> 
> Alexander

