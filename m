Received: (qmail 21622 invoked by uid 550); 21 Sep 2023 14:21:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21549 invoked from network); 21 Sep 2023 14:21:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695306083; x=1695910883; darn=lists.openwall.com;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=huZE/mVEe0gglQ824CsTY+8VofG4WaW1Rx1NENqvkJ4=;
        b=lRWl+a/xfiXab7ivvKuEMpPacpagRSzloKLE7LnnMNfR4yvj9j+N9N7tSh30PzTxiA
         q00S2CqyHC7xGk/H78mwwtyjlSFzH+QoARwg5ra1qHwl2wP3HR01BzIKobXKPMTJQ60c
         ErO6/Yzzo33/vxlTv53T+Pvbjdb6arhdZq5WCDJBc/X1esz43AGThkwHDoj8MJNdGLEv
         BBrncPdy3413CZluZ7PLPSV5lS/LXi8EUBhPMvhL1KnxmfMz2pnd/5bkYy7zFtABZNIs
         35R3VtnMXIfQBx3frjxbd17A/DG/cecFGzMVluMQHUYNi346NHZuGhL2r6EhgquUmmuC
         CIPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695306083; x=1695910883;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=huZE/mVEe0gglQ824CsTY+8VofG4WaW1Rx1NENqvkJ4=;
        b=ApTz+RYsUViJBen9IzRxkYpP7xZvt6IPiXwzsc03cDVVu40u/eZyuc5f8aPiGH3aYI
         vY8qTu7T1gKpsR3w6sl8181U/kKZcb7Tg7ywTEKZ2rOdEyod3h5vpPW1aPyaGpwd5M8J
         EbZPhulgGq32nB9wHjoplvUVX/G94f6UxV3+FMH94JQM9w6SVBYd2862UzZScLdEfSuj
         RUqz1BRH1RTL/yo8h5PLrJi5HCljrYD9wUhyK/EMTMiH0iKzsZ+pafnfOtcBVQ9Rtl9u
         IR7R9ACaTw5yb/pUhSGIyQygpeDQFIZEqXl5dImqhEd7603cBxNIjWKl60ZyFRkLREyT
         E5Ow==
X-Gm-Message-State: AOJu0YwqVD1UDhZUxB0dSQpdg56T4Y6EGZZT9q39+NgUKd49nPgUAdTf
	mh9t45aN+i6v1jLZauujwLrJ4exD2DI=
X-Google-Smtp-Source: AGHT+IHGyXJcDGRlvF2hffWveWV0E0stw4hC83EGkCL4OJmi2qQh/nyZ3j3evM42PaK9N9K2UaGP7w==
X-Received: by 2002:a05:6a20:3ca7:b0:159:b4ba:a5bf with SMTP id b39-20020a056a203ca700b00159b4baa5bfmr5930921pzj.13.1695306082848;
        Thu, 21 Sep 2023 07:21:22 -0700 (PDT)
Date: Thu, 21 Sep 2023 07:21:21 -0700
From: Tavis Ormandy <taviso@gmail.com>
To: oss-security@lists.openwall.com
Message-ID: <ZQxRYY0HLhGyn4jf@thinkstation.cmpxchg8b.net>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="EyzYklt4zakDr1HU"
Content-Disposition: inline
User-Agent: Mutt/2.2.7 (2022-08-07)
Subject: [oss-security] MOV{H,L}PS instructions can fail on Genoa (Zen 4)

--EyzYklt4zakDr1HU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hey, when fuzzing Genoa (AMD Zen 4) I noticed that sometimes the
MOV{H,L}PS instructions don't seem to work? I asked AMD if they consider
this a vulnerability, and they didn't.. so I'll just document it here
for reference...

Quick background, these instructions load two 32-bit packed singles from the
source operand into the low (movlps) or high (movhps) 64-bits of a vector
register.

Consider this minimal example:

section .data
    a: dq 0x1111111111111111
    b: dq 0x2222222222222222

section .text
    movhps  xmm0, [rel a]
    movlps  xmm0, [rel b]


The result should be xmm0 has the value 0x11111111111111112222222222222222.

Genoa added support for AVX512, which gives you a bunch more vector
registers, so now you can do:

    movhps  xmm28, [rel b]

However, I've found that non-deterministically, when using any register
above xmm15, previous (pipelined?) operations on other registers fail.

Here is an example:

section .data
    data: dd 0x11111111, 0x22222222, 0x33333333, 0x44444444
    zero: dd 0,0,0,0

section .text
    vmovdqu  xmm0, [rel data]
    vmovlps  xmm1, xmm0, [rel zero]
    vmovhps  xmm17, xmm0, [rel zero]

I think the expected result would be:

xmm0  = 0x44444444333333332222222211111111
xmm1  = 0x44444444333333330000000000000000
xmm17 = 0x00000000000000002222222211111111

However, on genoa we non-deterministically get xmm1=0.

I don't know the cause or where the bug is, any feedback welcome. I've
attached a testcase (I ported it to C from a raw fuzzer generated
testcase, hopefully it compiles consistently!).

I can reproduce it with pure intrinsics too (no asm), but the output is
not consistent across gcc versions. The attached version does use some
inline asm.

I think it should produce no output at all, but on Genoa it does sometimes
produce output for me.

Compile with:

$ gcc -mavx512vl -o movhps movhps.c

Tavis.

-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@sdf.org
_\_V _( ) _( )  @taviso

--EyzYklt4zakDr1HU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="movhps.c"

#define _GNU_SOURCE
#include <stdint.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <stdbool.h>
#include <x86intrin.h>
#include <immintrin.h>
#include <sched.h>
#include <syscall.h>
#include <err.h>

#define __aligned __attribute__((aligned(32)))

#if !defined(__AVX512VL__)
# error You must compile this with -mavx512vl to get the needed intrinsics
#endif

static const uint64_t kData[] = { 0x4444444444444444, 0x4242424242424242 };
static const uint64_t kZero;

static void vmovhps_testcase()
{
    uint64_t result[2] __aligned = {0};
    register __m128i r0  asm("xmm0");
    register __m128i r1  asm("xmm1");
    register __m128i r17 asm("xmm17");
    uint64_t count = 0;

    _mm256_zeroall();

    do {
        count++;

        // Trigger bug
        asm volatile ("vmovdqu %1, %0"      : "=v"(r0)  : "m"(kData));
        asm volatile ("vmovlps %2, %1, %0"  : "=v"(r1)  : "v"(r0), "m"(kZero));
        asm volatile ("vmovhps %2, %1, %0"  : "=v"(r17) : "v"(r0), "m"(kZero));
    } while (!_mm_testz_si128(r1, r1));

    _mm_storeu_si128((void *) result, r1);

    fprintf(stderr, "After %llu: %016llx, %016llx\n", count, result[0], result[1]);
    return;
}

int main(int argc, char **argv)
{
    while (true) {
        vmovhps_testcase();
    }
    return 0;
}

--EyzYklt4zakDr1HU--
