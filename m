X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/01/08/8
Message-ID: <CANn89i+_vDVaGQ8_yWqA-DCPPZbu+2xBMk3XGraH4KEQXkPKjg@mail.gmail.com>
Date: Tue, 8 Jan 2019 07:33:42 -0800
From: Eric Dumazet <edumazet@...gle.com>
To: 3ntr0py1337@...il.com
Cc: Greg KH <greg@...ah.com>, security@...nel.org, oss-security@...ts.openwall.com
Subject: Re: KASAN stack out of bound bug
Content-Type: text/plain; charset=utf-8

Before doing this, make sure to use David Miller net tree, as it is
possible this issue has been resolved already.

On Tue, Jan 8, 2019 at 7:28 AM Entropy Moe <3ntr0py1337@...il.com> wrote:
>
> Sure, I will do that.
>
> On Tue, Jan 8, 2019 at 7:28 PM Greg KH <greg@...ah.com> wrote:
>>
>> On Tue, Jan 08, 2019 at 07:13:05PM +0400, Entropy Moe wrote:
>> > Hello folks,
>> > I am reporting another set of bugs related to out of bounds in multiple
>> > source codes.
>> >
>> > please see the attached files report for more information.
>> >
>> > if I reporting it wrongly, please correct me.
>>
>> For networking issues, just send them to the netdev@...r.kernel.org
>> mailing list as the developers there want to find out these types of
>> things.
>>
>> And no need to post all syzbot issues to security@, that doesn't make
>> sense, just send them to the correct mailing lists and developers so
>> they can work to resolve them.  Like the other people who use this tool
>> do.
>>
>> thanks,
>>
>> greg k-h
