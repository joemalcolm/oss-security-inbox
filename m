X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1005" "Friday" "8" "November" "2019" "10:03:44" "+0200" "Georgi Guninski" "gguninski@gmail.com" "<CAGUWgD9si-9cayWBzt+AUi8iyb0hY=8fExf6-mLDr-C+mcqiyg@mail.gmail.com>" "43" "[oss-security] Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|" "^Date:" nil nil "11" "2019110808:03:44" "[oss-security] Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|" (number mark "        gguninski@gm Nov  8   43/1005  " thread-indent "\"[oss-security] Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19826 invoked by uid 550); 8 Nov 2019 08:48:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7592 invoked from network); 8 Nov 2019 08:04:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=FqvsErNWJ4ntBj1wLojzdXmRZhRiB44Bdh2USJmFb90=;
        b=HNBD7KFCI1GJAuv9Wjvk4aRWDC+2txQ7ImopbpRgm4FcuxvpUqmcvXJzZ6C1b+Ru/V
         FDmeGYzdjgDisTa6+myPBOAOea0Au7Ie6wEcX98XsanCBJ7yAvGjPoZJmpuq3Lq/03O8
         knhDc7sOJKnSPM2CdybF/NUhje2mEGm1e1hhUhbX5nAMdTJ+iA67i2F8zp4ohELDAwGW
         7Rm3XJoXvG91yPELVSBV2qjIJSNsYiipdkiQsi3W7T5LzffJIuFizo+OBYejTS00Ua+S
         f1Xu4U03G0h5qP8DCKeNC60rEMvedjs9o1H/K45HYym3AfoJoFL3IGRN/we73QJJ5mdV
         29rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=FqvsErNWJ4ntBj1wLojzdXmRZhRiB44Bdh2USJmFb90=;
        b=HPD3pWV44ZruyvnDsWs2MjW3ev5U8woXNu2ms8bgIechKjzd8vPDPFTBfyYudHMP61
         bNlKjoMYYjIozi+KkqWR6nmyOK53n5OrPnnMZi83RzqzT//1NJLqyGg7J029/8yNRWZV
         U06bOEshbFlevnZFqV8yMi6Cg71KfUQYNEzb/5EkloDyZe7SyWplKdpppy4nWSCScccW
         vgBPqcZkHKyYVUeXj/TzM8JJr0EK7XBfx/fepgcj8/RhjPBdZsWC/55BkUrqlWiz0Wu1
         g09nyN5KteFrgFkAw8R5disQeAoL48P77gxUaoRlZTy+sBFm1RmFXm80Vdr4Ci15GshA
         x2TA==
X-Gm-Message-State: APjAAAVkm2/Ji7mLfMcKnL7goTqcnGwq4Vkh7Ou+XASrQBe9FHKao0na
	Xg5btTuc8zHKCRFJAtwZ4WhIBBjsFcoF3gghNzCP4U4w1vY=
X-Google-Smtp-Source: APXvYqy2rzwGou56RmS2wJ5tU9uZpN6N+7MD4qFupzoZbuavGk4SUIjV6saciZ+DBOB+V8MXnSTgDX3duksyG8qBUbY=
X-Received: by 2002:a6b:ce0b:: with SMTP id p11mr8939353iob.72.1573200236438;
 Fri, 08 Nov 2019 00:03:56 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAGUWgD9si-9cayWBzt+AUi8iyb0hY=8fExf6-mLDr-C+mcqiyg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 8 Nov 2019 10:03:44 +0200
From: Georgi Guninski <gguninski@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|
To: oss-security@lists.openwall.com

Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|

There is heated discussion on gcc's bugzilla starting from 2007:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=30475
and clang is also affected, depending on optimization flags.

poc is the program at end.

gcc with all optimization flags optimizes away |assert(a+100 > a)|
even if there is no integer overflow, only signed overflow.

clang fires the assertion with -O0, but also optimizes it away
with -O3

The formal verifier CBMC fires the assertion, which might of
interest about formally verified programs.

Signed integer arithmetic is commonly used even without integer
overflows.

Could this compiler issue be security problem?

Any workarounds?

===poc===
#include <assert.h>

int foo(int a) {
  assert(a+100 > a);
  printf("%d %d\n",a+100,a);
  return a;
}

int main() {
  foo(100);
  foo(0x7fffffff);
}
=========


CV:    https://j.ludost.net/resumegg.pdf
site:  http://www.guninski.com
blog:  https://j.ludost.net/blog
