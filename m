Received: (qmail 25821 invoked by uid 550); 16 Jan 2026 15:44:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32714 invoked from network); 16 Jan 2026 14:43:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768574588; x=1769179388; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WgnVAVYlxAwZNZfitVa9l869kd+fYnliISuZ5A5OP3A=;
        b=Ea1OuaeuzdqLz0PqoPeR7daTiCxL2mktg4dQrmx5V3xmRPUu1x5F/ScrcslBRf4iCm
         yjuV3InT0FepQQYQqFVjtF1GePnWH19sx3e9r/RsDpUXk3345rEgYQbERejvXnVII1/+
         fiR2KGuA1mEtUQz1hiVOgNYgbFswxQ1zuTceN4MhJlG68I0Rq9qdWOlZLSZ1tlOlzDLE
         tlt7eHg5fHV5rvNOQ6Ymgv44bu2c7PX/q0CNOInkEQZwHH7m8oPvJ9C7DfF/72U3yEVX
         tgPIbjDjIfFAG+iUY23qP99Ae0Jbgc116WF11wBgAUBUR4cShzLKEov5UvvGfNSlskJ3
         jRvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768574588; x=1769179388;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WgnVAVYlxAwZNZfitVa9l869kd+fYnliISuZ5A5OP3A=;
        b=SuWP7ZnRwKNhxb9mIZhapwDZY+9/nLPzq5IMJXCdHDOnKbIZ1jiBHyYKutayyAEZm/
         alXl+dhVRJTuVi+5Y3DSiULFljMaifqRc7BzG0oZTanY6FN0uWptRLH43vgSEolR2IeW
         AeNYBHia0SGsD7htaEonLHrEWbGn2NFV3aJdaMZHD54ewb5lboRaS54i2bCkZ1ylTORR
         iOxDveXyihm7NZcTxP76X/Zc0JYepqfi1REyz8es8JrV+CR9Flf2vVTMikF0lySwVs0M
         YyKcSZrsFq/x087eLH+OuyklVO0hyZqbE9sc7jsS/tEzKB83oN0eAxWFGWn1sQj7On9c
         xuiA==
X-Gm-Message-State: AOJu0YzzB/bNXhvyG17RgWymZyeJXyMo+NKCFQ1DKaw3GjeyVhjP8lR2
	4yDtnm+LGFyJaUslq3fSz/yJNQKcL4quGjLg2mF7SUeMcZQFX4vM/125ODoG8A444FoSF2W3xhV
	1F91bYg54LtZISen9IVCw6DcqMHFrlRtteyNh
X-Gm-Gg: AY/fxX6KJaAz9rCqM6hofsylAyqifTeikebeZZuUexmhu4LocEgz0NzkMpBV5aU7p3t
	/qSbH1yX2ljDeB6t8OhkkbAqvB9RUW3xMIN9DZHCOrsdu35WrPSDC0Z1oek8u1e0jrO1uL8cTaf
	qyNr01o+cdHFYt3lMsbfdk1Fo/NrsZHpir8CBCKLp0rTRHUpbHDju9psx4jWSpsuGVvvzUPBezB
	khBY4PjbsuXL947dYkSS6pfS34BdPwoJxkcv+7n0OlcNcmxzE2VXppyjDvU2dzGco9HB3vU
X-Received: by 2002:a05:6830:82e4:b0:7cf:da59:9da9 with SMTP id
 46e09a7af769-7cfe01dec9emr1656828a34.37.1768574588243; Fri, 16 Jan 2026
 06:43:08 -0800 (PST)
MIME-Version: 1.0
From: Siddhesh Poyarekar <siddhesh.poyarekar@gmail.com>
Date: Fri, 16 Jan 2026 09:42:56 -0500
X-Gm-Features: AZwV_QhBVJ90QKVBhenq_yvvA6tOY4MNFhtlERSyDu3lhnFjNIRh1s7qRsdHHKo
Message-ID: <CAAHN_R2Ahb1AHNnyS75avf30DgKQ2yyhOS1MNpLibwAbR-vVhg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] The GNU C Library security advisories update for 2026-01-16

The following security advisories have been published:

GLIBC-SA-2026-0001:
===================

Integer overflow in memalign leads to heap corruption

Passing too large an alignment to the memalign suite of functions
(memalign, posix_memalign, aligned_alloc) in the GNU C Library version
2.30 to 2.42 may result in an integer overflow, which could consequently
result in a heap corruption.

Note that the attacker must have control over both, the size as well as
the alignment arguments of the memalign function to be able to exploit
this. The size parameter must be close enough to PTRDIFF_MAX so as to
overflow size_t along with the large alignment argument. This limits
the malicious inputs for the alignment for memalign to the range [1<<62
+ 1, 1<<63] and exactly 1<<63 for posix_memalign and aligned_alloc.

Typically the alignment argument passed to such functions is a known
constrained quantity (e.g. page size, block size, struct sizes) and is
not attacker controlled, because of which this may not be easily
exploitable in practice. An application bug could potentially result in
the input alignment being too large, e.g. due to a different buffer
overflow or integer overflow in the application or its dependent
libraries, but that is again an uncommon usage pattern given typical
sources of alignments.

CVE-Id: CVE-2026-0861
Public-Date: 2026-01-14
Vulnerable-Commit: 9bf8e29ca136094f73f69f725f15c51facc97206 (2.30)
Fix-Commit: c9188d333717d3ceb7e3020011651f424f749f93 (2.43)
Fix-Commit: 7f19ef14fbce095d4c77395e258320cad2ea2b28 (2.30-153)
Fix-Commit: f18446d7b4a423090ee5e328c36b3c2a0f26041c (2.31-166)
Fix-Commit: 8aef9e7a7af9565c0324b4ecb38b30dfa3782fd8 (2.32-151)
Fix-Commit: 011293b4fd748cdd6f95874ba2b6aba9a3df8bff (2.33-275)
Fix-Commit: 2c77e52108a58956c9f674b36e1f59a4e3fdcf4d (2.34-525)
Fix-Commit: 499d1ccafccfe64df1b88deea2fa84d8180e8e8f (2.35-399)
Fix-Commit: fb6b8822175769b5794fb6ea04f2895483a29b61 (2.36-244)
Fix-Commit: 7b913d41a07836def826f2164c52541a9835f324 (2.37-172)
Fix-Commit: 744b63026a29f7eedbbc8e3a01a7f48a6eb0a085 (2.38-212)
Fix-Commit: fb22fd3f5b415dd4cd6f7b5741c2f0412374e242 (2.39-286)
Fix-Commit: bfc4dd9e526eacf3017dd8864ba0848e9d045dd4 (2.40-216)
Fix-Commit: 1e2c1ea4307197ccece0cda574bcfebf9080894c (2.41-121)
Fix-Commit: b0ec8fb689df862171f0f78994a3bdeb51313545 (2.42-49)
Reported-by: Igor Morgenstern, Aisle Research

Notes:
======

Published advisories are available directly in the project git repository:
https://sourceware.org/git/?p=glibc.git;a=tree;f=advisories;hb=HEAD
