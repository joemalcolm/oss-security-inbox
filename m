X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/08/07/15
Message-ID: <CA+PdXcvmTRrks_ZnXB_EyMHdm6ahap9yNHmf4hV5gLwVBoz_Vw@mail.gmail.com>
Date: Mon, 7 Aug 2017 15:32:13 -0400
From: Glenn Randers-Pehrson <glennrp@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Cve issue discussion
Content-Type: text/plain; charset=utf-8

It doesn't occur on my own Ubuntu platform without ASAN.  But anyone
running with
a malloc that initializes the memory (trusted systems, etc) would be affected

On Mon, Aug 7, 2017 at 1:22 PM, Jesse Hertz <jesse_hertz@...le.com> wrote:
> fwiw, double check and make sure the issue occurs in libpng without ASAN. Sometimes ASAN can cause "heisenbugs" which only happen if ASAN is used.
>
>> On Aug 7, 2017, at 9:57 AM, Glenn Randers-Pehrson <glennrp@...il.com> wrote:
>>
>> OK I'll request a CVE for this libpng issue.
>>
>> Glenn
>>
>> On Mon, Aug 7, 2017 at 9:05 AM, John Haxby <john.haxby@...cle.com> wrote:
>>> On 07/08/17 13:47, Glenn Randers-Pehrson wrote:
>>>> It's not causing a crash, just a delay.  You'll safely get either an OOM
>>>> message or an EOF message.and no memory leak.
>>>>
>>>
>>> That's scant comfort when your browser is the one hit by the OOM killer
>>> and then again when you restart it.  And also while you're wondering
>>> what's going on because your laptop is basically completely
>>> non-responsive ...
>>>
>>> So yes, it's a remote DoS and definitely worth a CVE.  We have had other
>>> similar CVEs in the past with image handling libraries not being
>>> sufficiently paranoid.
>>>
>>> jch
>>>
>>>> Glenn
>>>>
>>>> On Mon, Aug 7, 2017 at 8:37 AM, Marcus Meissner <meissner@...e.de> wrote:
>>>>> Hi,
>>>>>
>>>>> if it could crash the image reader I would consider it "remote denial of service"
>>>>> classed and CVE worthy.
>>>
>
