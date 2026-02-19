Received: (qmail 32671 invoked by uid 550); 19 Feb 2026 19:37:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30545 invoked from network); 19 Feb 2026 05:23:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771478600; x=1772083400; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=MX/LMPo+oZigW5c3cWtSL0qDbYB8o47SlDOLyOLRVYY=;
        b=MDA43xfeFvP5JPmmD546RuIz5Y4x+ZKjDZIUKvTLOwXSeXCXgw9FkZjC+pTK7Q/+Ho
         CHOKjR28YvotXLTW+1mpsY3y2SZF3kp3VdptDHxQ7POL9o/2w4wtV2LVFAMsiGNvvL6w
         nXb6X/4oOKtWdEgoHFIPvMu0pDdeveDbxYJxPN8nmBdX9pmFF9ZzBK5S7kJaDUWpbv0h
         HlS+2QQ87aJGV6flbwztn6Cm+pMxfhC15ChVh9cAwzR/kdZ+4yHvBnSUdU6zjUmVRqj1
         wBCVHRxP5vVG7Yp1wR0Xy5pdFGJK+FfDhJiNhNxBPZtSp+tY5Z829JHNpcskgOpsxS/U
         p6zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771478600; x=1772083400;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MX/LMPo+oZigW5c3cWtSL0qDbYB8o47SlDOLyOLRVYY=;
        b=Yd8iTZE25hZ+WHAkPv6OaRWLrG4ilrPzI9mvD99sUj6ier+KoNvasWIIQklR3opGuJ
         thr3BHIeK42EYDNCJG5r6Bg6ct/6NcE57FVLbQpLInlMEhZnCO+nzVH6E0TxYLeaiy3y
         PuWwCx3sxx3M10X7bBP0hqW+iugTqf2KUNBMK0lxWcAH5SuL5N7DnAqn4X7a5MqqChQe
         avxp/2i8VzSQLqfl+oRICHql8CJe6bLGm672qL+V8cURKJLEDJtPfx6FTT94MQY8hkNJ
         841tdjjr0NSWzX/hht33hYT2yauCS+q63cE+L4TxZLcUn2gKRraZov/P5L0XsgV17rAZ
         HOmQ==
X-Gm-Message-State: AOJu0YwRw80N3XmZZ3VUFTYudgebFm5THjyUat6n92/MtlxLSb/HqdnI
	p4BwNWncdKUJnELDHjOOr5rmPVnAwwMzzpAF3KCeMrkhGJ0P3BLqySPDWw0ZJQ==
X-Gm-Gg: AZuq6aIEgD9PGuWSCSwneV/r1st0fk2Rgn5Qzg+auBO+x1c/mZTjtxleeqOesUsaMlV
	u5n/T/ADccPQTIzY8RdzEm0xHXC66GrToKf2C6rTHC2PTL31PXACgcBFqXRpdd8+OJf9iBf2H2g
	naUs7oUqU65R7sqdo4ZFW9NxeQU55LPjYus8dNyCI/MxCVUkNUt2ehrtOOZ1EES7i9eKDLqpSh8
	pdRcZGLMJeJtS3U3uNQt5a2nAdVAqWATTbAml/AOs1A1NBg72PKi3sNGLdP3WcyYIbbnlUJFEex
	xVPmc5e/cbcJhL9lHqekS7pZR3GgxE60Daeo14x+PWyvjYWv4WY6B3CmKfuM3jHCu9qBma03aRJ
	jtM3pf729zfUvViHrqhRXFfTa7zIXTVmFKDQwDvZJemXY8Tpi3tKnGMdzGiwPhK0JNZiGakQu5b
	sCMtFlSudPUPlxq5f4iwLXw+kGskRS
X-Received: by 2002:a05:6871:341f:b0:404:396d:8bc0 with SMTP id 586e51a60fabf-41528fde7d3mr2408472fac.18.1771478599400;
        Wed, 18 Feb 2026 21:23:19 -0800 (PST)
Message-ID: <c9af5be5-fc3f-4ef9-bcb4-140a1d1fe1c2@gmail.com>
Date: Wed, 18 Feb 2026 23:23:14 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <20260219011438.GA17271@openwall.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <20260219011438.GA17271@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] MIT/Heimdal Kerberos credentials cache type FILE
 risks

On 2/18/26 19:14, Solar Designer wrote:
> Hi,
>
> Raul Vega, CC'ed here, sent the below AI-generated message to
> linux-distros on Feb 5, without disclosing the use of AI, yet correctly
> set the public disclosure date to "2026-02-18 (14-day embargo per
> linux-distros policy)" (or maybe the AI assistant did).
That would be the first warning sign.
>    Unfortunately,
> there was no further correspondence (in particular, I got no reply to my
> reply, also included below), and Raul failed to bring this to
> oss-security on time on his own, so I am now doing it for him.  And yes,
> I consider this borderline abuse of the list, which is why my tone.

And this would be a second strike.

> My summary of Raul AI's message is that Kerberos default_ccache_name
> FILE is relatively unsafe compared to certain other possible kinds of
> credentials cache supported via this setting, especially with respect to
> local file inclusion vulnerabilities in other software such as web apps
> running under the same user account.  The message suggests to use
> KEYRING or KCM instead of FILE.

My summary up front:  this report is bogus.

> https://web.mit.edu/kerberos/krb5-1.22/doc/basic/ccache_def.html says
> FILE is the default.  So it may be a case of unsafe default.  Can the
> default reasonably be changed?  "KCM caches work by contacting a daemon
> process", so will require this daemon to be running, and "KEYRING is
> Linux-specific, and uses the kernel keyring support".  So maybe Linux
> packages can use KEYRING by default?

I would not be so sure about FILE being unsafe at all.

> [...]
>
> I'd appreciate follow-ups by those familiar with Kerberos (I'm not)
> and/or its packaging.

While I cannot claim to be an expert on Kerberos, I did once seriously 
evaluate deploying Kerberos telnet for server administration at a 
previous $WORK, so I do know some aspects of the system.

> [...]
>
> On Thu, Feb 05, 2026 at 10:24:03AM +0100, Raul Vega wrote:
>> [vs] ADV-2026-005: Kerberos Credential Cache Lifecycle Failure and Bearer Token Theft
>> Vulnerability Type: Semantic Design Flaw / Credential Dumping
>>
>> Affected Components: MIT/Heimdal Kerberos, Linux Core Dump Handlers, /tmp Defaults
>>
>> Researcher: Raul Vega del Valle
>>
>> CVSS 3.1 Base: 7.8 (AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H)
>>
>> CVSS 3.1 Chain: 10.0 (Critical) (When chained with RCE/LFI)
>>
>> Public Disclosure Date: 2026-02-18 (14-day embargo per linux-distros policy)
>>
>> Executive Summary: The Semantic Gap
>> The core of this vulnerability is a semantic failure in object lifecycle management. While the Kerberos protocol is syntactically secure, current Linux implementations fail to semantically bound the identity token (bearer ticket) to the process lifetime.

Which process lifetime are we talking about here?  The kinit command 
that obtains the TGT?  Bogus:  kinit is *supposed* to leave the ticket 
for later processes to use.  The user's session? Arguable, but that is 
why you are supposed to invoke kdestroy in your logout script.

The other words, this issue was addressed a long time ago and is not a 
problem if the environment is configured as recommended.

>> By weaponizing the "Crash and Trash" scenario, an attacker can transform a transient authentication secret into a persistent forensic artifact. This allows an unprivileged local attacker???or a remote attacker via an RCE/LFI chain???to bypass Kerberos protocol guarantees and achieve complete network-wide identity theft.

I call bogosity on this.  This does *not* extend the lifetime of the 
ticket.  Further, the risks of "leaked" tickets and/or keys are 
well-known in Kerberos, which is the reason MIT Kerberos supports 
rotating service and KDC keys.  (When I last checked, Active Directory 
had problems on this point.)

>> Technical Analysis
>> 1. File-System Persistence Vector
>> Most Linux distributions default to the FILE: ccache type, storing tickets in /tmp/krb5cc_*.
>>
>> The Design Flaw: These tickets are bearer tokens. Possession of the file is equivalent to possession of the identity.

That is not a design flaw.  That is the entire point of Kerberos 
single-sign-on.  The need to secure the token has been well-understood 
since Kerberos was invented.  A stolen ticket can be abused, exactly 
like a stolen password can be abused, except tickets can expire much 
more quickly.

>> Exploitation: An LFI (Local File Inclusion) vulnerability in a web application can be used to "pull the trash" from /tmp, granting the attacker a valid TGT (Ticket Granting Ticket) with a ~10-hour TTL.

Only if DAC is not being used properly.  If you are running a web 
application as root, you have bigger problems than stolen Kerberos tickets.

>> 2. Memory Lifecycle Failure (Crash and Trash)
>> When an application handling Kerberos authentication crashes, the system generates a core dump (if enabled).
>>
>> The Semantic Gap: The credential remains in the heap or stack during the crash. Because many distributions do not restrict access to core dumps or leave them in unencrypted storage, these secrets become "trash" that is readily harvestable via standard string extraction.

If, and only if, the application crashed during the authentication, or 
did not take proper steps to discard the credential after using it.  
Again, this is (probably) an application bug, although I am not familiar 
enough with the Kerberos libraries to say what extent of care is taken 
to extinguish no-longer-needed in-memory copies of tickets.

Note that service tickets usually have much shorter lifetimes than TGTs, 
since they only need to be valid long enough to "run" from the KDC to 
the service, presenting the ticket at the latter.

If I remember correctly, stealing anything other than a TGT is useless, 
since service tickets are encrypted under a key in the TGT and contain a 
session key for talking to that service.

>> Impact: This bridges the gap from a simple application crash (Availability) to a full authentication bypass (Confidentiality/Integrity).
>>
>> The Grand Chain: The Case for CVSS 10.0
>> While the individual components may be rated "High," the Semantic Addressing of this flaw creates a critical chain:
>>
>> Entry (RCE/LFI): Attacker gains limited execution or read access via a library flaw (e.g., Axios SSRF or Undici CRLF).
>>
>> Pivot (ADV-2026-005): Attacker provokes a crash or reads /tmp to dump the Kerberos ccache.

Assuming DAC is properly used, (and a bug where it is not would have 
been found *long* ago) the chain is killed here unless the attacker has 
code execution under the targeted user's account, in which case 
single-sign-on would be working properly.

>> Escalation: The stolen ticket is replayed from the attacker's machine to access internal high-value targets (LDAP, S3 via IMDSv2, etc.).

Maybe.  Kerberos TGTs can be restricted to network addresses of the host 
to which they were issued.

>> Result: Total identity takeover across the infrastructure without triggering traditional "credential theft" alerts.

If the TGT was restricted (optional) to the user's box, the KDC is going 
to notice when the attacker tries to use it from another node...

>> Actionable Remediations for Distributions
>> Distributions are requested to evaluate the following systemic changes to their default configurations:
>>
>> Restrict core_pattern: Ensure core dumps are directed to a secure, root-only directory by default.

The only requirement is that core dumps are not readable by other 
users.  They need not go to any specific directory.  There is no gain 
from reading the core file *as* the user because any process belonging 
to that user can already use the user's Kerberos credentials.  (That is 
what single-sign-on *means*.)

>> Default to KEYRING:: Shift the default default_ccache_name in /etc/krb5.conf from FILE to KEYRING or KCM (Kerberos Credential Manager) to keep tickets in unswappable, process-bound kernel memory.

I call bogosity here.  The FILE credential store remains safe as long as 
it is properly secured and the user's account is not otherwise 
breached.  (Again, any task running as the user can authenticate with 
the user's credentials.  That is what single-sign-on *means*.)

>> Enforce fs.suid_dumpable: Harden kernel parameters to prevent unprivileged dumping of sensitive processes.

One of the design features of Kerberos (as I recall) is precisely that 
it does *not* require privileged processes run by the user. In other 
words, this is useless in this context, although it might be useful for 
defense-in-depth in general.

>> Researcher: Raul Vega del Valle
>>
>> PGP Fingerprint: [Your Fingerprint]

And here we see that this clown could not even be bothered to proofread 
his AI slop enough to recognize that the AI had left a blank to fill in.

> On Fri, Feb 06, 2026 at 10:06:18AM +0100, Solar Designer wrote:
>> Hello Raul,
>>
>> [...]
>>
>> On Thu, Feb 05, 2026 at 10:24:03AM +0100, Raul Vega wrote:
>> [...]
>>> Technical Analysis
>>> 1. File-System Persistence Vector
>>> Most Linux distributions default to the FILE: ccache type, storing tickets in /tmp/krb5cc_*.
>> What are the owners and permissions of those files?

If they are not owned by the user and mode 0600, this would be a bug in 
Kerberos that would have been exploited mercilessly on the shared 
systems used long ago.  I would be *very* surprised if the DAC 
permissions on those files are wrong.

>>> Exploitation: An LFI (Local File Inclusion) vulnerability in a web application can be used to "pull the trash" from /tmp, granting the attacker a valid TGT (Ticket Granting Ticket) with a ~10-hour TTL.
>> Would a web application have permissions to read the /tmp/krb5cc_* files?

If it does, you have bigger problems than stolen Kerberos tickets.

>>> Because many distributions do not restrict access to core dumps
>> Which ones, for example?  And what do you mean by "do not restrict"?

I believe that this means the AI was hallucinating.

>>> Actionable Remediations for Distributions
>>> Distributions are requested to evaluate the following systemic changes to their default configurations:
>>>
>>> Restrict core_pattern: Ensure core dumps are directed to a secure, root-only directory by default.
>> This is typical already.  However, you can commonly access your own
>> coredumps.  Same with your own /tmp files.
>>
>> So are you talking about potential restrictions within the same user
>> account, so that sensitive information processed and available to the
>> user previously does not remain available to the user for too long?

Something like this could conceivably be implemented with SELinux, only 
allowing processes that are supposed to be using Kerberos to access the 
credential cache files, but I have not looked into it.

>> How exactly does fs.suid_dumpable come into play, then?  In other words,
>> do your suggested attacks involve processes that are "dumpable" or/and
>> those that are not?  Which ones?  Please be very specific.

I am fairly sure that, at least as far as Kerberos is concerned, it does 
not come into play.  Another hallucination.

>> I suggest that you clarify the above things in the public revision of
>> your advisory.  As it is, it reads like a mix of sensible content with
>> everything else an LLM "thought" is relevant, plus the sensationalism.
Can we have a public Hall of Shame for AI-slop bogus reports?  I 
nominate "Raul Vega del Valle" with this report as the inaugural entry.  
Any seconds?


-- Jacob

