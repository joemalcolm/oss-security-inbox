Received: (qmail 15798 invoked by uid 550); 3 Apr 2024 00:03:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15758 invoked from network); 3 Apr 2024 00:03:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712102599; x=1712707399; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D75znOwHKQFKDfARwdxDeVS1cc+QjxUtYOQhlCqScPI=;
        b=Lu13OOGcB5Oxhwzop2V2BPLXu6GdF6DQiq/th4Tps7XfJK8auoY+NPgvBD4VXnrJQe
         e4xRNPH4pon+xKTAJhfhd0dgL7sUdcab/aqcuPkVFHKJSlfUSR/7Me/YtKRUyKDbQjF5
         5vtCxD/zuXsy+raXbaFfsNNsLk7QieQj6mRF/v2xVkbjKh29LIgaJTARPOfCVSwDrmtd
         L18iFNTIcBt+E+d8eBhAUENd9PcinInaOevUvcQpJQ93IV33VfoiFN321/36Cn9crQGP
         ABbzjI7rIKbCWRknWvBGTHRt67u0F8CX8dGpLpteq6e0z03znG+Zp119qAzSGOnFJH3M
         e6vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712102599; x=1712707399;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D75znOwHKQFKDfARwdxDeVS1cc+QjxUtYOQhlCqScPI=;
        b=CRUT7Mal/csirtvper0jmOXUntBDzhw69qrF5Ynf72G/rbJw0Mb2F6bVc4caqCqBI9
         C6AQ+vLq3tupunox84scpaZXpxY8G/CxOC104siGPkEY/T/6W77Jr/9+f5k5JHvdpUwR
         2xWUrsc+ZKTMoMlGRtfPprSq/OIKi6DtU2a5uL9DPN4/DblHzT8URyKPy7nVmDZkYQjq
         B27sSy5uQ3kZAZSrE1AAAcIdnO/9Ym/E/MAKW0Cq1MkYtkCY+4xrYn9EXuLr5SRMu1VU
         WcE7I6nT8C7c81Rflaqm7jQorfKG/SsNDv00ikL9V8vLxJyp4YJ3ld4o+IfNcCIQJTna
         2hXQ==
X-Gm-Message-State: AOJu0Yzj+Q9N9vEij5W3IZt3odxp8SVAjCdYEUpdjsMUUzXqnCQKcORo
	qtR79nYvlPmWLX91NBqHHGLpCDysUKVhol/24JnWzgUjkQkamY22OKOFzgs+
X-Google-Smtp-Source: AGHT+IH5CEwEsmCMwKwkeBU+lYr4x+Ybppn2EPrH50rJaUG83W1ALAc/eIq1eJXgeG9Qf1ia85aHgA==
X-Received: by 2002:a17:902:654d:b0:1e2:3150:512c with SMTP id d13-20020a170902654d00b001e23150512cmr1170796pln.56.1712102598698;
        Tue, 02 Apr 2024 17:03:18 -0700 (PDT)
Message-ID: <cd985494-7e02-ab46-785d-78ba6eabae4d@gmail.com>
Date: Wed, 3 Apr 2024 11:03:17 +1100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <ZgcOVnk5hCVkDUt/@ycc.fr> <uu9f4s$oga$2@ciao.gmane.io>
 <20240331213023.GA22787@openwall.com>
From: Matthew Fernandez <matthew.fernandez@gmail.com>
In-Reply-To: <20240331213023.GA22787@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] escaping terminal control characters (was Re: backdoor in upstream
 xz/liblzma leading to ssh server compromise)



On 4/1/24 08:30, Solar Designer wrote:
> On Sat, Mar 30, 2024 at 04:37:48PM -0000, Tavis Ormandy wrote:
>> It was also pointed out they submitted an odd PR to libarchive:
>>
>> https://github.com/libarchive/libarchive/pull/1609
>>
>> In summary, they replaced calls to safe_fprintf() with fprintf() --
>> meaning control characters are no longer filtered from errors. That
>> seems pretty minor, but now that we know they were in the business of
>> obfuscating the presence of backdoors -- seems a bit suspicious.
>>
>> Regardless, that change has now been reverted:
>>
>> https://github.com/libarchive/libarchive/pull/2101
> 
> This does look minor indeed - not usable for large-scale attacks, and
> libarchive is quite unique in that it even bothered to filter control
> characters, whereas most command-line tools outputting filenames don't
> bother.  My guess is it could have been an early experiment to see
> whether the project would accept PRs degrading security.
> 
> That said, here's an excellent write-up by David Leadbeater on specific
> ways that specific terminal emulators may be usefully attacked with
> control sequences:
> 
> https://dgl.cx/2023/09/ansi-terminal-security#vulnerabilities-using-known-replies

Is the currently accepted wisdom that any application printing to 
stdout/stderr should take steps to avoid control characters in the 
output? This is one of those situations where, if my terminal is 
manipulated this way, I’m not quite sure who is to blame. Intuitively it 
does not seem to scale, to require every (even non-security minded) 
application to mitigate this. But on the other hand, maybe it’s not 
possible for terminal emulators to solve without false positives.
