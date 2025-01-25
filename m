Received: (qmail 5975 invoked by uid 550); 25 Jan 2025 15:22:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1206 invoked from network); 25 Jan 2025 04:14:11 -0000
From: Sam James <sam@gentoo.org>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
In-Reply-To: <20250124000602.GA22935@openwall.com> (Solar Designer's message
	of "Fri, 24 Jan 2025 01:06:02 +0100")
Organization: Gentoo
References: <20250123024222.GA16803@openwall.com>
	<fb02293c-d4cb-4de6-85d8-2cd82d574ba8@oracle.com>
	<20250124000602.GA22935@openwall.com>
User-Agent: mu4e 1.12.7; emacs 31.0.50
Date: Sat, 25 Jan 2025 04:13:59 +0000
Message-ID: <878qqzv8c8.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Oracle January 2025 Critical Patch Update

Solar Designer <solar@openwall.com> writes:

> On Thu, Jan 23, 2025 at 09:24:14AM -0800, Alan Coopersmith wrote:
>> The open source packages delivered in Oracle Linux & Oracle Solaris are
>> listed separately, but these are downstreams, so I've always thought they'd
>> be off topic here, since we normally only cover upstream issues, and don't
>> publish every distro's notices that they've applied the latest fixes to
>> rsync, openssl, glibc, or whatever upstream was fixed this week.
>> 
>> For those who want to see such downstream notices, you can find them at:
>> 
>> Oracle Linux:
>>    https://linux.oracle.com/security/
>>    https://oss.oracle.com/mailman/listinfo/el-errata
>>    https://www.oracle.com/security-alerts/#OLBulletin
>> 
>> Oracle Solaris:
>>    https://www.oracle.com/security-alerts/#SolarisThirdPartyBulletin
>
> You're correct, these would generally be off-topic here.
>
> So in this thread I am not talking about Oracle's OS distros, but about
> Oracle's upstream Open Source projects.  Looking at the Critical Patch
> Update, I don't know which projects fit such criteria.  Like I wrote, I
> think it's MySQL and VirtualBox, but probably not only these two.
> Perhaps also Java?  I'm not familiar with most of Oracle's products and
> their licensing.
>
> Also, in some cases we make exceptions for projects closely related to
> or enabling Open Source ones e.g. as in the recent AMD microcode thread.

An issue we've observed is it can be hard to map to open-source projects
for Java/OpenJDK at least.

For example, CVE-2025-21502 appears under "Oracle Java SE Risk Matrix",
but determining if OpenJDK was affected (and what the actual details,
inc. patch) were involved googling it and happening upon
https://access.redhat.com/errata/RHSA-2025:0421.

Is there another source of this information anyone is aware of? Thanks.

(Ideally one published by Oracle rather than something others then
collate otherwise.)
