X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/10/11/5
Message-ID: <CAJ_zFkJ5Dc6JwjZsb9EbhbYKDJe4vwXmpe9usRHepZp7GQF5MQ@mail.gmail.com>
Date: Tue, 11 Oct 2016 09:03:36 -0700
From: Tavis Ormandy <taviso@...gle.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request - multiple ghostscript -dSAFER sandbox problems
Content-Type: text/plain; charset=utf-8

On Wed, Oct 5, 2016 at 1:12 PM, Tavis Ormandy <taviso@...gle.com> wrote:
> On Wed, Oct 5, 2016 at 9:13 AM, Tavis Ormandy <taviso@...gle.com> wrote:
>> bug: type confusion in .initialize_dsc_parser allows remote code execution
>> id: http://bugs.ghostscript.com/show_bug.cgi?id=697190
>> repro: http://bugs.ghostscript.com/show_bug.cgi?id=697190#c0
>> patch: http://git.ghostscript.com/?p=ghostpdl.git;h=875a0095f37626a721c7ff57d606a0f95af03913
>
> It was pointed out to me that my testcase doesn't work on the 9.0x
> versions, because it doesn't allow encoding 64-bit integers, but it's
> still exploitable.
>

Here is a different type confusion bug, originally I thought it was
just a NULL dereference, but after seeing the patch it does look
exploitable.

patch: http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=f5c7555c303
repro: clear 16#41414141 .sethalftone5

Please assign a CVE for this one.

Tavis.
