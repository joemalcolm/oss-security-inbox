Received: (qmail 3877 invoked by uid 550); 3 Jun 2025 15:37:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32196 invoked from network); 3 Jun 2025 10:38:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748947095; x=1749551895; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1tsqnK6JmQVtOt3VKkWXtyz9+CQis0lvC9vpd6nxJ/s=;
        b=Rjiiut6m9ZcZbwGJnteGCOA4svmATIdHLWtDQvawPA+0+fm/l8PT3INhrV7NuVAAmy
         OmTGUHixdlZm/TQMiBBn15L4YKoPGzbyCXOJ7fjTDakWWRRMBJTrhyT3ctFV8my0t0hl
         /1DpOpscce7wEhYfxO19nes+gRI8O7/8/eese5LpNscq9foJQ1Ea4jNBb78S2kk4ofMR
         WatHRRdox2WoV7WgR+bhHnNBFu2gPYqL9bhmT81SRQSAvs0N4ptL/nN2nLGL21miOmzD
         ZEOjhfshLfTz7CVsxst4IUWWTrKYilxSg/EjWD5E6CFEGOoxwdBykSmXfJtDMZRqm4u7
         CVMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748947095; x=1749551895;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1tsqnK6JmQVtOt3VKkWXtyz9+CQis0lvC9vpd6nxJ/s=;
        b=YKvwGxqPFjcOL/gnWb35Oyqgs6Hf872OpUN06iq0yLJeG7iUoY0DhpMMt9y7bsR+hZ
         bx0+fxS+M8z4OyYpBkitEhOG9cevni9d2bRWOLEo6Ev3b9iKCfPl3CxFF/vKlxvfKiUZ
         HA/yB2q00O4mmaBLWvtJivkHJriQPQMKPzuaD5jw/20exPklbRpy48jqP81XKwTlxa+R
         z8KhvsfP22US+JHYKCgcZvElbBm8ajulGcaRGcjwiwwa6tL3iRirB4+JNM+hsg7PgBjg
         +gI3xPfV6uZxWqaAiRVNBi1cNrvRQk+B/aY9dF19iOKxuJUb1SS5COTLif3Yu/O3MIn/
         pwGQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdD7DFX+eFa8rhMx9OCThnVoc+pGfb4D1znIohzqpWuFdTULlUAtClkp156IQEcm07/CfeadvYc7hsdVQ=@lists.openwall.com
X-Gm-Message-State: AOJu0YznS2q+2b4eYa//7gFCRR7Ds/IjnGsMGs7JkUqSFII7bDoCQLIJ
	nN+cweeinG5T2c4H2aXf8wSbqqq7MLxxTM1hpfs8XbcLF0YtNHzBA2N+
X-Gm-Gg: ASbGncvAiihxYsa8L9hWYMGmmZ99RXiJvIhkXCFhItf8fIh2TzZGT7ezZJbv+3yno5t
	7peftJNAMXrFfV/ZrGl91kTY6BVNE9RSQv6T4k9Xb131EG0DAeyfxVPlLrFgb4nXUuJIkGyTUsf
	2+NeeQpoDYt5rWhS9RvuMz/glxPQwKgAMMISI7Wy7eCIPKDfB8a5ma107XD9cyWrj2r9Hb+WJzf
	3gAsw0T6dM/AxgF4CuMn0vsyzynB6TVRCSMYSbA1wZNY3qo4JLoDvowVhOaN+VUOm5r3xhFhuR8
	noRBYG1YyB6X+ZR1j1FyDoSrkua65yiigPO7Jj5avO9CDrlcGZ4JGsexlMQhilj3l82f9VW1/fw
	e/YISATCp4Lq/EeNkfwmoci4u1BTzOa1WNFhW0mWY
X-Google-Smtp-Source: AGHT+IEGLq7TG7mkXnbpkK7OQQVnA8ulykDYKbAJNovJoXvveP/d8cTuqLlUYLvzS6NijS6/9zUczQ==
X-Received: by 2002:a05:600c:4e47:b0:43d:fa59:be39 with SMTP id 5b1f17b1804b1-450d8872f48mr129139955e9.33.1748947094366;
        Tue, 03 Jun 2025 03:38:14 -0700 (PDT)
Message-ID: <705c9747-27f1-4988-98bb-568db4e7cd74@gmail.com>
Date: Tue, 3 Jun 2025 12:38:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com
Cc: =?UTF-8?Q?Muhammed_H=C3=BCsam_Alzeyyat?= <hussamalzeyyat@gmail.com>
References: <20250603025919.GA11183@openwall.com>
Content-Language: en-US
From: Attila Szasz <szasza.contact@gmail.com>
In-Reply-To: <20250603025919.GA11183@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Re: Linux kernel: HFS+ filesystem implementation issues, exposure in
 distros

Hi,

I believe I’ve already shared my main thoughts on this topic on LKML. The
discussion between Vyukov and Ts’o is particularly insightful. As I
mentioned earlier, it's worth remembering that unprivileged mounting via
user namespaces was seriously considered for even block filesystems before,
but it was ultimately deemed too difficult—largely due to economic
constraints rather than purely technical ones.

That said, there are four points I still feel are worth adding:

1) Maintainers may have missed this, but regardless of the rejected CVE,
their CVE automation tooling seems to have picked up the fix as a regular
patch. It included an ASAN report with the "out-of-bounds" keyword, so
there is now (again) a CVE for my finding:

https://lore.kernel.org/linux-cve-announce/2025050117-CVE-2025-37782-7cc2@gregkh/

NVD may not yet realize it, but CVE-2025-37782 and CVE-2025-0927 refer
to the same bug.

2) I haven’t looked into the new report in detail, but I can easily imagine
that there are still issues—e.g., bad reads—even without touching
extended attributes, just by interacting with the other B-trees. Since
the filesystem is no longer orphaned, the new maintainers should be able
to assess the report's validity and its actual impact. It probably has
less severity, but that remains to be seen.

3) The mismatch in CVE criteria between upstream and downstream distros is
a real issue. During the handling of my case, a certain CNA rule was
repeatedly cited—without being specified—which led to CVE-2025-0927,
initially allocated for Canonical Ubuntu Linux, being reassigned under
kernel.org’s CNA. I understand that MITRE's rules around CNA territories 
and
ownership were originally designed to distribute workload and filter out
noise, but they should be revisited as they can be ambiguous and 
misinterpreted.
Especially in cases where one CNA’s product embeds another’s. According 
to my
experience, this creates more confusion than clarity.

4) I think the whole product vs component thing is part of the Cyber
Resilience Act anyway, and embedded product manufacturers and entities
maintaining distros will likely have to comply with at least the class I
requirements, so it probably makes sense to work towards some alignment
regarding process until the deadline actually kicks in. Just an idea.

Attila

On 6/3/25 04:59, Solar Designer wrote:
> Hi,
>
> Muhammed Hüsam Alzeyya, CC'ed here, (kind of) brought an issue in the
> Linux kernel's HFS+ filesystem implementation to s@k.o and linux-distros
> at once.  This is against both Linux kernel's and linux-distros' current
> instructions, which ask to "notify the kernel security team first, wait
> for the fix, and only then notify linux-distros or oss-security".  The
> message didn't actually get through to linux-distros for a technical
> reason, but a reply quoting its portion did.  I promptly sent a reply to
> Muhammed (CC'ing linux-distros) to explain the situation and ask a few
> questions, but got no reply.  I saw no further communication on this.
> (I also checked our server logs, and as far as I can tell there were no
> further rejected/filtered messages from Muhammed's address, neither to
> linux-distros nor to my address.)  I am now bringing this to
> oss-security for the sake of transparency and not to make an exception,
> as well as possibly to have a discussion of the general issues.
>
> There was another issue in the same driver publicized a few months ago,
> with a lot of detail on its exploitation (and the exploit itself):
>
> https://ssd-disclosure.com/ssd-advisory-linux-kernel-hfsplus-slab-out-of-bounds-write/
>
> The above post is very lengthy.  I'll quote just some pieces below:
>
>> SSD Advisory - Linux kernel hfsplus slab-out-of-bounds Write
>> March 18, 2025
>> SSD Secure Disclosure technical team
>> Vulnerability publication
>>
>> Summary
>> This advisory describes an out-of-bounds write vulnerability in the Linux kernel that achieves local privilege escalation on Ubuntu 22.04 for active user sessions.
>>
>> Credit
>> An independent security researcher working with SSD Secure Disclosure.
>>
>> Vendor Response
>> Ubuntu has released the following advisory and fix: https://ubuntu.com/security/CVE-2025-0927
>>
>> Affected Versions
>> Linux Kernel, up to 6.12.0
>> Ubuntu 22.04 with Linux Kernel 6.5.0-18-generic
>>
>> CVE
>> CVE-2025-0927
>>   * Attila Szasz <szasza.contact@gmail.com>
>>   * @4ttil4sz1a
>>   *
>>   * Exploit for hfs+ slab out of bounds write
>>   * targeting Linux kernel 6.5
> So I'm also CC'ing Attila Szasz here.
>
> The kernel security team ended up rejecting the CVE:
>
> https://lore.kernel.org/linux-cve-announce/2025033057-CVE-2025-0927-1436@gregkh/T/#u
>
>> Filesystem bugs due to corrupt images are not considered a CVE for any
>> filesystem that is only mountable by CAP_SYS_ADMIN in the initial user
>> namespace. That includes delegated mounting.
> However, Ubuntu fixed the issue in many of their kernels, with note:
>
>> While the upstream kernel developers don't consider exploitable
>> corrupted filesystem images to be a security issue, Ubuntu ships with a
>> polkit rule allowing console users to automount removable media, so we
>> do want to fix this issue for our users.
> An issue here is that "allowing console users to automount removable
> media" is a high risk, especially if upstream doesn't intend the code to
> be robust and secure against corrupt or malicious filesystem images.
> Maybe there should at least be an allow-list of filesystem types, which
> would be focused on filesystems most commonly used on removable media?
>
> Another issue is the disconnect on what's CVE-worthy between upstream
> and the distro.  This will keep coming up.  Maybe a solution for such
> cases is to assign CVEs against the distro rather than against upstream?
>
> The linux-cve-announce thread above suggests that upstream may assign
> CVEs to filesystem implementation issues for corruptions that pass fsck.
> So theoretically a way for a distro to avoid relying on robustness and
> security of kernel code beyond what upstream cares about would be to
> force fsck before mounting a filesystem.  However, doing that even for
> filesystems that claim to be clean (as it would be required for
> security) is impractical.  Also, would the CVEs (and eventual fixes) be
> against (for) the kernel or fsck then?
>
> Anyway, now the current report by Muhammed is for another issue in
> almost the same place.  While Attila's was an out of bounds write, the
> new one is reported as an out of bounds read.  So its security relevance
> is not obvious even on systems like Ubuntu that expose this code for
> attack.  This depends on what's done with the value read out of bounds.
>
> Below is the portion of Muhammed's message that got to linux-distros:
>
>> Re: VULNERABILITY REPORT: Out-of-Bounds Read in HFS+ Filesystem's hfsplus_bnode_read Function
> On Sun, May 25, 2025 at 01:30:18PM +0800, Muhammed Hüsam Alzeyya wrote:
>> ## Summary
>>
>> A buffer overflow vulnerability exists in the Linux kernel's HFS+
>> filesystem implementation. Specifically, the vulnerability is located in
>> the `hfsplus_bnode_read` function in `fs/hfsplus/bnode.c`. When handling an
>> HFS+ filesystem, this vulnerability allows reading beyond the bounds of an
>> allocated memory region. The issue is triggered when the kernel attempts to
>> delete a file on a specially crafted HFS+ filesystem, which can lead to
>> memory corruption, information leakage, and potential privilege escalation.
>> ## Affected Environments
>>
>> This vulnerability affects:
>> - Linux kernel 6.15.0-rc2 (confirmed)
>> - Potentially earlier versions that include the HFS+ filesystem
>> implementation
>> - Any system that allows mounting of HFS+ filesystems, especially if
>> untrusted users can provide filesystem images
> Alexander
