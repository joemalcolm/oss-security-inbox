X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/06/25/2
Message-Id: <93CB7010-1297-4AD4-80D6-ABCC920929AF@gmail.com>
Date: Mon, 24 Jun 2019 16:44:03 -0700
From: Matthew Fernandez <matthew.fernandez@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz
Content-Type: text/plain; charset=utf-8



> On Jun 24, 2019, at 09:42, Bob Friesenhahn <bfriesen@...ple.dallas.tx.us> wrote:
> 
> On Mon, 24 Jun 2019, Stuart D. Gathman wrote:
>> 
>> Question: is fuzzing useful for languages like Java/python?  Obviously,
>> you eventually reach a native code module in both cases, but fuzzing the entire virtual machine is cumbersome.  Maybe native code libraries
>> for "safe" languages should include fuzzing as part of testing.
> 
> There is nothing about languages like Java and Python which necessarily makes them safe.  Access outside of memory bounds is just one issue which often afflicts C/C++.  Java and Python can easily do something wrong such as use all available resources or never finish. In the case of Python, Python can easily make arbitrary calls into C code under control of the script.

With something like ctypes? I took Stuart’s point to be about fuzzing the language VM (e.g. CPython), rather than fuzzing extensions written in C. Fuzzing the FFI into native code seems like a reasonable idea for extension maintainers, but this is much less cumbersome than the VM fuzzing that Stuart’s comment seemed to be getting at.
