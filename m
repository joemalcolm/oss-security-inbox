Received: (qmail 28360 invoked by uid 550); 23 Sep 2025 03:53:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17986 invoked from network); 23 Sep 2025 03:49:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758599386; x=1759204186; darn=lists.openwall.com;
        h=in-reply-to:from:content-language:references:cc:to:subject:reply-to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q7hrqF+YFGNsqUXdNl0FHOuh/JiqUfqJC8X/HpVYMxw=;
        b=W273VzgmQ/T4h/Hw0l655oh9EzZY2uzySDKNaaA1txzH7ehkokutdhKwKSa+Wg28WB
         IJX5OHu/e0NCzsMZVRX/4Sc+l6K6mKsZohSZohZ8gaoW/j31Gw9utNE4tMB+gm6rhxFu
         sZ30xajFaI2tcCPc3SoxY3ZKrktIU1lIN/FE2v7RyxqgKCDA59IBjcCTEXB9de1PehEI
         OYIcBa6RJlFpBEibsQAxLD8TtErtDrcqwIO25MDyqZUNoXyWKcc1F9sUABgGr9tQZMLR
         VWGId2FSdWCZyxPSHWWItfzKKTikRMXX+gz3KH/t7z4L2m6n04eNn5JLDbLnYMW4Dkti
         fivw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758599386; x=1759204186;
        h=in-reply-to:from:content-language:references:cc:to:subject:reply-to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Q7hrqF+YFGNsqUXdNl0FHOuh/JiqUfqJC8X/HpVYMxw=;
        b=rvsjDPZF4gx6DpHnyZqOoqIfjLXFwfYsvLvLeB7rkSb6DlVSeRzfFjcvURLMEFWcHg
         MC5T4wEoAAEbfQzh7XMuKHBLHW+0HWwwV4Lm2h1y8vsSq7BDmG0vh3sgmeIAbQJJ6BEN
         Jzq5AInJKfvpc90JiF5XZ0c7kJNVeTxWTJvBaDGOtiOntpUaxhcfNZFFJloGKAJIF/Y+
         GQqU95JDjzy3IuK1wHVda8L595O6RpTThWe29RojC3TG/xdaLn2/q9aRhduTVy55tipE
         Feu6Vu2so3S9dPe8B4r/+mTSa3ews6dVHYyba5LWHHXjIgEnCfLsIEcY4gXFDuYj3mAT
         eoDQ==
X-Gm-Message-State: AOJu0Yy/NiIsPNWgEa6ZvtuiuM0BgGZ4IKGa/VGMi1qv9iHmksif0qG6
	vuC22560otMjlfDA5UfV55rAvPJt/IuX0ZCJQnGfzet14/x7D87Po9LkRUBTtQ==
X-Gm-Gg: ASbGncsHHchUNPeHN99wLlYvbU2p/g2q/TmbT/0zDUc3hvTXNcfcjFGR5u70cKi2o2L
	hsXzoSUzKy+3VwU2xXxpOJ4V1I9ntCga89zrRaQsxInxOTU77KD06prjvXLOCz0Gbs4CqSy3wGw
	6j9W/Hvi2QKfUrRVibG0tcLkeos1jHysrlkiGr70RZvLD6G3F1k7g2RpWFLp8taB0Bo9Ots7DyF
	X4qRGtOhf+y4iK4rwkVIFGkGT6nFKkk/dI0oP3LyzWtQFkwIvJAwGmxMbFAC8I0aOSiI8mrJAfK
	c0FQGEp2lWNaI4TgzosUORgxqEk5oUe7pbh9iA/sXDMlyTMJ/9cRhuXFMdtL6Lj7PUCMBOFY9u4
	p2R4ywEKHfRCg8ZbjMLo=
X-Google-Smtp-Source: AGHT+IHnJCEAniRDVCveoaiBCm4ADV05XFcY0/UPy2YDCj1CG0fLfSiVe+mZafydxGyfbzyFfOEcew==
X-Received: by 2002:a05:690c:4d88:b0:730:4c94:be16 with SMTP id 00721157ae682-758925bf08emr7377227b3.5.1758599386192;
        Mon, 22 Sep 2025 20:49:46 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="------------L2CeuMPZop3yiPLQsflzOADm"
Message-ID: <cbd89f96-2958-4e5e-a7fe-5cf939a1140f@gmail.com>
Date: Mon, 22 Sep 2025 22:49:29 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Damien Miller <djm@mindrot.org>
Cc: openssh@openssh.com
References: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org>
Subject: Re: [oss-security] CVE-2023-51767: a bogus CVE in OpenSSH

--------------L2CeuMPZop3yiPLQsflzOADm
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 9/21/25 23:35, Damien Miller wrote:
> Hi,
>
> A few people have asked about CVE-2023-51767, which proportedly is an
> "authentication bypass via row hammer attack" in OpenSSH sshd. This
> CVE is bogus.
>
> It is based on this paper "Mayhem: Targeted Corruption of Register and
> Stack Variables" by Adiletta, et al.
> https://arxiv.org/pdf/2309.02545
>
> Firstly, we do not consider it to be the application's responsibility
> to defend against platform achitectural weaknesses. We're happy
> to adopt platform measures (e.g. toolchain defences) where it is
> possible to do so, but fundamentally it is the platform's job to
> provide a coherent execution environment. If we collectively start to
> blame applications for platform failures, then there would be little
> end to the redundant defensive checks applications would need to
> implement.

I mostly agree---the platform is supposed to be coherent---but OpenSSH 
is a bit of a special case due to its position on a security boundary.

> On this attack specifically, the paper claims "We demonstrate the
> power of the findings by applying the techniques to bypass SUDO
> and SSH authentication", but they appear to have achieved this in
> only highly contrived and unrealistic circumstances where they have
> either modified the software under test or run the attack with root
> privileges to dramatically simplify the attack.

The paper is *not* impressive, but may nonetheless have stumbled onto an 
actual problem.

If not for wanting to evaluate your complaint on the list, I would have 
stopped reading when they called the System V AMD64 ABI the 
"Intel-Ubuntu C convention" and %rsp "register stack pointer". (For 
anyone here who does not know: %rsp is just the "stack pointer"; x86 
registers have funny names for historical reasons and %esp now aliases 
the low-order 32 bits of %rsp while %sp (its original name on the 8086) 
now aliases the low-order 16 bits of %esp. The "e" and "r" are prefixes 
introduced with wider forms of the register file on the 80386 and AMD K8.)

Other fun mistakes in the paper include calling what are clearly DIMMs 
"chips" (in section 6) and what are clearly DIMM model numbers "serial 
numbers" (in table 1).

> Per section 6.1 - "we used signals to make sure the programs were
> synchronised". However, it is not possible to signal a privileged
> process without the attacker already holding privilege on the
> target system. An attack that requires root privileges to attack a
> root-privileged process isn't a demonstration of a vulnerability.

Indeed they did, however the key for OpenSSH that will either prove the 
vulnerability bogus or point to solutions seems to be whether sshd will 
stop to read from the network during any of the potentially vulnerable 
periods.

If sshd blocks on read(2) while either of those flags are live, there is 
the potential for a local attacker to use SSH to escalate privileges. If 
not (and there is no other way for an unprivileged user to delay its 
execution), I agree that the CVE is bogus, for whatever that is worth.

> It appears the researchers need this additional synchronisation
> to both grow the window in which the variable was available for
> attack and to arrange the physical memory layout to be in a known
> and attackable configuration (section 4.1). This too is unrealistic
> in the context of sshd, where each connection is handled by a
> separately-executed sshd process, with a completely unique address
> space. Again, fine control over the address space of the sshd process
> (such as that suggested by section 4.1) can only be exerted with
> preexisting privilege by the attacker.

Part of their exploit involved "grooming" memory such that the kernel 
allocator will drop the "interesting" page in the new sshd process into 
the location where the attacker expects to be able to flip bits.

Interestingly, the researchers seem to have had more success exploiting 
the kernel allocator with OpenSSH than either sudo or OpenSSL, despite 
the viable set of "flippy" pages for the OpenSSH attack having 
intermediate size between the other two.  I suspect that sshd 
"re-rolling" ASLR may have a role here, since it means that each 
connection is a fresh chance for the needed victim page to land in the 
trap, but each run of sudo is also a new process.

A simple countermeasure might be to use alloca(3) for a random-size 
multi-page stack allocation (and zero it to force the pages to actually 
be allocated) during early initialization in main() to upset both the 
ordinal page number and the offset within the page of any "interesting" 
local variables in all other functions in sshd.

In short, ASLR is not enough when the kernel's allocation strategy can 
be exploited to drop the underlying physical page into the attacker's 
trap regardless of its randomized virtual address.

> This attack is not feasible under conditions remotely approximating
> the real world. It certainly doesn't warrant a CVSS score of 7.0 and
> in my opinion no CVE should have been issued at all for it.

While I agree that their attack is at best a proof-of-concept, I am not 
as certain yet that there is no possibility of someone else producing a 
viable attack, either as a local privilege escalation or a cross-VM 
attack in cloud environments.


-- Jacob


--------------L2CeuMPZop3yiPLQsflzOADm
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 9/21/25 23:35, Damien Miller wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org">
      <pre wrap="" class="moz-quote-pre">Hi,

A few people have asked about CVE-2023-51767, which proportedly is an
"authentication bypass via row hammer attack" in OpenSSH sshd. This
CVE is bogus.

It is based on this paper "Mayhem: Targeted Corruption of Register and
Stack Variables" by Adiletta, et al.
<a class="moz-txt-link-freetext" href="https://arxiv.org/pdf/2309.02545">https://arxiv.org/pdf/2309.02545</a>

Firstly, we do not consider it to be the application's responsibility
to defend against platform achitectural weaknesses. We're happy
to adopt platform measures (e.g. toolchain defences) where it is
possible to do so, but fundamentally it is the platform's job to
provide a coherent execution environment. If we collectively start to
blame applications for platform failures, then there would be little
end to the redundant defensive checks applications would need to
implement.</pre>
    </blockquote>
    <p>I mostly agree---the platform is supposed to be coherent---but
      OpenSSH is a bit of a special case due to its position on a
      security boundary.</p>
    <blockquote type="cite"
      cite="mid:92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org">
      <pre wrap="" class="moz-quote-pre">On this attack specifically, the paper claims "We demonstrate the
power of the findings by applying the techniques to bypass SUDO
and SSH authentication", but they appear to have achieved this in
only highly contrived and unrealistic circumstances where they have
either modified the software under test or run the attack with root
privileges to dramatically simplify the attack.</pre>
    </blockquote>
    <p>The paper is *not* impressive, but may nonetheless have stumbled
      onto an actual problem.<span style="white-space: pre-wrap">
</span></p>
    <p><span style="white-space: pre-wrap">If not for wanting to evaluate your complaint on the list, I would have stopped reading when they called the System V AMD64 ABI the "Intel-Ubuntu C convention" and %rsp "register stack pointer".  (For anyone here who does not know:  %rsp is just the "stack pointer"; x86 registers have funny names for historical reasons and %esp now aliases the low-order 32 bits of %rsp while %sp (its original name on the 8086) now aliases the low-order 16 bits of %esp.  The "e" and "r" are prefixes introduced with wider forms of the register file on the 80386 and AMD K8.)</span></p>
    <p><span style="white-space: pre-wrap">Other fun mistakes in the paper include calling what are clearly DIMMs "chips" (in section 6) and what are clearly DIMM model numbers "serial numbers" (in table 1).
</span></p>
    <blockquote type="cite"
      cite="mid:92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org">
      <pre wrap="" class="moz-quote-pre">Per section 6.1 - "we used signals to make sure the programs were
synchronised". However, it is not possible to signal a privileged
process without the attacker already holding privilege on the
target system. An attack that requires root privileges to attack a
root-privileged process isn't a demonstration of a vulnerability.</pre>
    </blockquote>
    <p>Indeed they did, however the key for OpenSSH that will either
      prove the vulnerability bogus or point to solutions seems to be
      whether sshd will stop to read from the network during any of the
      potentially vulnerable periods.<span style="white-space: pre-wrap">
</span></p>
    <p><span style="white-space: pre-wrap">If sshd blocks on read(2) while either of those flags are live, there is the potential for a local attacker to use SSH to escalate privileges.  If not (and there is no other way for an unprivileged user to delay its execution), I agree that the CVE is bogus, for whatever that is worth.
</span></p>
    <blockquote type="cite"
      cite="mid:92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org">
      <pre wrap="" class="moz-quote-pre">It appears the researchers need this additional synchronisation
to both grow the window in which the variable was available for
attack and to arrange the physical memory layout to be in a known
and attackable configuration (section 4.1). This too is unrealistic
in the context of sshd, where each connection is handled by a
separately-executed sshd process, with a completely unique address
space. Again, fine control over the address space of the sshd process
(such as that suggested by section 4.1) can only be exerted with
preexisting privilege by the attacker.</pre>
    </blockquote>
    <p>Part of their exploit involved "grooming" memory such that the
      kernel allocator will drop the "interesting" page in the new sshd
      process into the location where the attacker expects to be able to
      flip bits.</p>
    <p>Interestingly, the researchers seem to have had more success
      exploiting the kernel allocator with OpenSSH than either sudo or
      OpenSSL, despite the viable set of "flippy" pages for the OpenSSH
      attack having intermediate size between the other two.  I suspect
      that sshd "re-rolling" ASLR may have a role here, since it means
      that each connection is a fresh chance for the needed victim page
      to land in the trap, but each run of sudo is also a new process.<br>
    </p>
    <p>A simple countermeasure might be to use alloca(3) for a
      random-size multi-page stack allocation (and zero it to force the
      pages to actually be allocated) during early initialization in
      main() to upset both the ordinal page number and the offset within
      the page of any "interesting" local variables in all other
      functions in sshd.</p>
    <p>In short, ASLR is not enough when the kernel's allocation
      strategy can be exploited to drop the underlying physical page
      into the attacker's trap regardless of its randomized virtual
      address.<span style="white-space: pre-wrap">
</span><span style="white-space: pre-wrap">
</span></p>
    <blockquote type="cite"
      cite="mid:92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org">
      <pre wrap="" class="moz-quote-pre">This attack is not feasible under conditions remotely approximating
the real world. It certainly doesn't warrant a CVSS score of 7.0 and
in my opinion no CVE should have been issued at all for it.</pre>
    </blockquote>
    <p>While I agree that their attack is at best a proof-of-concept, I
      am not as certain yet that there is no possibility of someone else
      producing a viable attack, either as a local privilege escalation
      or a cross-VM attack in cloud environments.</p>
    <p><br>
    </p>
    <p>-- Jacob<br>
    </p>
    <p><br>
    </p>
  </body>
</html>

--------------L2CeuMPZop3yiPLQsflzOADm--
