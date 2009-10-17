X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/10/17/2
Message-ID: <b086760e0910170120m52be908en24b8fe314c1ab97f@mail.gmail.com>
Date: Sat, 17 Oct 2009 10:20:38 +0200
From: yersinia <yersinia.spiros@...il.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request: oping allows the disclosure of  arbitrary file contents
Content-Type: text/plain; charset=utf-8

On Fri, Oct 16, 2009 at 10:06 PM, Josh Bressers <bressers@...hat.com> wrote:
> ----- "Julien Tinnes" <julien.tinnes@...il.com> wrote:
>> On Thu, Oct 15, 2009 at 4:34 PM, Josh Bressers <bressers@...hat.com> wrote:
>> > ----- "Julien Tinnes" <jt@....org> wrote:
>> >>
>> >> in case anyone cares, oping also attempts to drop privileges with
>> >> setuid(getuid()); without checking setuid()'s return value.
>> >>
>> >
>> > Does that have any security implications though? I've not looked at the
>> > app.  If it's a security problem, I'll give it a CVE id.
>>
>> I didn't really look either. Because of this, everything will run as root
>> while it shouldn't, but an attacker might need a second bug to elevate
>> privileges.  I would still consider it a security problem.
>>
>
> I took a look in the oping source. Without another security flaw, this is just
> a bug, oping doesn't do anything while still root that could be an issue. I
> agree that it should be fixed, it is a serious bug, but an attacker cannot do
> anything nefarious with this flaw.
I think that the upstream mantainer should be have the last word
http://verplant.org/liboping/
>
> I'm happy to let Steve overrule me if he wishes, but I'm not going to assign
> this a CVE id.
>
> --
>    JB
>
