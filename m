Received: (qmail 29962 invoked by uid 550); 6 Jun 2025 16:52:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15459 invoked from network); 6 Jun 2025 16:00:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749225611; x=1749830411; darn=lists.openwall.com;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/C83j64jOkAn6zHtcK8katJFVjWsojoFttb3ttPocHI=;
        b=CzkC7s73t0RiWuEFyMqCbNhcB0trSMF60LjQ9EO8hy0qzpKQg9CUodw909ZT/JSH1J
         WcNOeAJpTbq+jpT7AjQfObwU9uWUNXCG5Oz1vAeSMhYnqEBM1+rzSB1CCxH7bpsroVDT
         rl0QB0jLNyjeNXtbMPrYcuUrwBwjS2poOme2XTOTsrL4wtFOLT5XyIebLmNB8AGSbefa
         nIdgnszdNNnKhBYeMfXsbOeCoTZI7sueplIXsfHZgJTysQjaZVMtqhkEOf+5KoRa4hDi
         7UYVLFLiBrxRCF+KjqeRG8aFyDYCTDn5CLTmvXEZbitO5I4yW+WCK5lhbghxldrPNch/
         kCQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749225611; x=1749830411;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/C83j64jOkAn6zHtcK8katJFVjWsojoFttb3ttPocHI=;
        b=UIp14LSNOJxFPwGRuqSEVMjxHamfRdyHSaaY5bYJeN8EZOCJeNFl6fP7HxaCImywR5
         2eAQG8pzGkNDg19mjiL4+pf4MZVmOZAjZJwl5ZMR1wTtB6t1REh5v9N/w6hzlMZuSVZN
         JTBE7guxm/kJT/+DK3gH6mVOKVmYiloUqwi+gc3rt4WtE9i2+k97XZ3DktGrtlPn/4wi
         /S1cWwB/8FQ0d0GXQz/5De3/J+PI8a0bbs897eWpnpJ4zFE/DL3R6aFUxzIuifkVh08c
         a6qNCyv4ZFpO6yMizAOWGHDrRc/h0/qmnVrXiyayW7Vh43k2dhs3uNZjrmyKM7R9po8x
         E3kg==
X-Forwarded-Encrypted: i=1; AJvYcCUIdwBJat7x1yQkdwU5Tafa4AaHqQx3IFNuhi8Ifi+eHYoSC503mN5JyaNFQtC1TP3w0xTHXM72VlAPtbQ=@lists.openwall.com
X-Gm-Message-State: AOJu0Yz6a4fqIbUgkQ6lQmBvPInZvBm5SM39/vbKE0f++XmUpmXSiIN7
	PxM+vlc82tIbvGz0FYKEz1f87Aerb9vr1Fj3YpmOfP+sQ0nsCKwSAHL4/ATIQ0Fp
X-Gm-Gg: ASbGncvvYiTBGSxLP/S47mR4ZK21hJo+YBfEe98KIUHpMPMRVqpxoH+vHZnCVjsbVQT
	m8BsMjUy1LKiSio5NDFU+myL5ULMW6GtysisYsapwBKHvXrS2mWZNkofAioL6vY4z+1yTAq4xRH
	iKCeyasangsv3L6hkJi0HP0OJMdWL1cp01alB8Grb1HXsm6INfHwZ6bItXLG9/RbMF/6p+W/sQ6
	nsiZfd7/ijxho5lfnIRaBlxrSKujgFqPYWPnkeGZBCqnd+co5n0p3YO/YkZr6pKhux1sms4YbUc
	hZifKVK5phi0PDxG87afIgtlxOsM0Pfn1D9P0MLl+mU1PlaEWgsY3z1QVYEgeoU=
X-Google-Smtp-Source: AGHT+IHOhCCJYVz+6gk5cM/AgSDqxeS/9AfH7eFnYXoxssVVBH1qMptR5NKP34rgll0yM4r/0Dxcxg==
X-Received: by 2002:a05:600c:8116:b0:442:f904:1305 with SMTP id 5b1f17b1804b1-45201507546mr41547335e9.6.1749225611016;
        Fri, 06 Jun 2025 09:00:11 -0700 (PDT)
Message-ID: <07bdaddb-1414-492b-a178-93b38f8ac3a0@gmail.com>
Date: Fri, 6 Jun 2025 18:00:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: eschwartz@gentoo.org, oss-security@lists.openwall.com
From: Attila Szasz <szasza.contact@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Re: Re: Linux kernel: HFS+ filesystem implementation, issues,
 exposure in distros

 > If it is genuinely not a kernel vulnerability, but only a Ubuntu one for
 > using the kernel outside of its supported operating parameters, then
 > "make it very clear" does indeed sound correct.

 > If Ubuntu (or others) believe the kernel.org CNA is incorrect and a)
 > abusing their authority / b) simply lacking good judgement on security
 > matters, for something that is a legit kernel vulnerability, isn't that
 > what the appeals arbitration process is for? Raise the dispute with the
 > appropriate root, and have them overturn the kernel.org decision.

 > It is, anyways, inappropriate "cowboy justice" for a CNA to violate its
 > scope and assign a CVE number they aren't authorized for, just because
 > they disagree with the other CNA's decision. If Ubuntu (knowingly) isn't
 > going through the correct process then for that reason alone Ubuntu is
 > the bad actor here and should be penalized.


I don't see how Canonical Product Security is a bad actor here for caring
about the actual security of downstream users and acting in a timely
manner about an issue that they considered to impact Ubuntu Linux,
correctly.

Canonical has a scope of
"All Canonical issues (including Ubuntu Linux) only."

kernel.rg has a scope of
"Any vulnerabilities in the Linux kernel as listed on kernel.org, excluding
end-of-life (EOL) versions."

Both of them were contacted.

4.2.2.1 CNAs SHOULD assign a CVE ID if:

     the CNA has reasonable evidence to determine the existence of a
     Vulnerability (4.1), and
     the Vulnerability has been or is expected to be Publicly Disclosed, 
and
     the CNA has appropriate scope (3.1).

On 3rd Nov, 2024, Kees Cook writes:
"The hfsplus filesystem currently has no maintainer, and since we don't
view filesystem corruption flaws to be particularly sensitive, probably
the best thing to do would be to send the patch like normal to the public
linux-fsdevel@vger.kernel.org (please keep me and other others in this
email's CC now on the CC for your patch).

Let's see if the VFS maintainers have any other thoughts on this?
(I am forwarding them a copy of the original email now.)"

This is pretty much the last update—no patch is introduced, nor is a CVE
issued. The issue is not viewed as sensitive.

My understanding is that 4.1 was not satisfied according to them.

CVE-2025-0927 was reserved by Canonical on 31st January, 2025, around the
time they fixed the issue internally.

At this point, Canonical, as per 4.2.2.1, assigned a CVE for Canonical
Ubuntu Linux for the issue they deemed a vulnerability in Ubuntu Linux.

The kernel neither assigned nor fixed anything regarding the email that was
sent to them.

After Canonical’s fix went live, the public advisory was published on
18 March, 2025.

Now, according to:

4.2.1.2 For Publicly Disclosed Vulnerabilities, if the CNA with the most
appropriate scope:

     preemptively documents that it will not assign, or
     responds within 72 hours that it will not assign, or
     does not respond within 72 hours,

then an appropriate Root MUST make a Vulnerability determination.

So the kernel.org CNA team would have had 72 hours to respond to the public
disclosure if they thought that the issue was in their scope—but they 
didn’t.

I don't know about the Root CNA, but it is not like anybody reached out 
to me.

So what the hell happens to consumers of the Ubuntu Linux product
that don't want their boxes rooted by non-sudoers according to the CNA?

How could Canonical be the bad cowboy here? Someone please enlighten me.

In fact, I'm not even sure upstream would have ever fixed this unless 
Salvatore
reached out from Debian basically asking what had happened:

https://lore.kernel.org/lkml/Z9xsx-w4YCBuYjx5@eldamar.lan/

Note that the initial report was received by security@ early November, 
2024.
Salvatore's message is dated 20th March.

After that, Canonical helps Debian by sharing the fix they used in the
Ubuntu kernel.

Then, on 24th March, 2024, the Linux CNA finally expresses interest in
owning the CVE—that is, 6 days after the disclosure and 72 hours past the
deadline defined in 4.2.1.2.

Only then is the bug finally fixed, on 7th April—156 days after the report,
156 days after receiving the complete writeup and exploit code in the 
first place.
The CVE, now transferred to kernel.org's scope is rejected on the
8th of April UTC 4am - from my timezone, on the same day.


Canonical addressed everything within 90 days. What's the problem?

Prioritizing the misinterpretation of a piece of bureaucratic text just 
to label a
legitimate Product Security team as a "bad actor" and to focus on
hypothetical penalties—rather than caring about the actual security of 
real-world
systems and users—is categorically *stupid*.

The real priority should be ensuring that users and businesses are:

  *

    properly informed about the risks, and

  *

    provided with the necessary remediation steps.

Anything else is a distraction from what truly matters.

































