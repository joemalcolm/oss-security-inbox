X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1766" "Tuesday" "4" "May" "2021" "11:06:52" "+0100" "Piotr Krysiuk" "piotras@gmail.com" nil "40" "[oss-security] [CVE-2021-31829] Linux kernel protection of stack pointer against speculative pointer arithmetic can be bypassed to leak content of kernel memory" nil nil nil "5" nil nil (number mark "U       piotras@gmai May  4   40/1766  " thread-indent "\"[oss-security] [CVE-2021-31829] Linux kernel protection of stack pointer against speculative pointer arithmetic can be bypassed to leak content of kernel memory\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2021-31829] Linux kernel protection of stack pointer against speculative pointer arithmetic can be bypassed to leak content of kernel memory" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9722 invoked by uid 550); 4 May 2021 10:29:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30575 invoked from network); 4 May 2021 10:07:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=vekzMr7zD44gUkquCFiBX/VZ8Vy4B+laaQC1IdP8GXQ=;
        b=GJnX1fG0DMtnrb/3ZSq7PprP3Zh9Wxnn6X4s7czpCORCkLhlmdU9X/xXneNJe5uES8
         FrQd/9hoTB3uZuklLkOj91r62CtudKeZqEW1bg++/gL3FWp72GgoevLqpxcLMAVpMf+2
         6dcPCYz/fbc9O5K5CCjAKb4mFwJpwTVvlMKAPSm5XlHNuA45Pm6SEyeGzH49XNsjSi6l
         XTgMtD9EPxhOdpeNhri1tFLq4SgFp+cI+xfkXhi9tJ0EgUk4RkWK/TIqmlkee/OcR3fv
         pMNNaz8KwRgSGeIHy1eEFzHQmay7yoqEHzMcPXuUU0+9rH0qDPX4spIBsbN3POYtqCVG
         Z3DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=vekzMr7zD44gUkquCFiBX/VZ8Vy4B+laaQC1IdP8GXQ=;
        b=gkBTisFiCak2+SX3t3A47qV6cJdyhPitYAi05VAOrk9P627XmQD+Y+gDIG2A389Zmd
         eDBSBcqDhMOcLfGb9OZDGtpvFVE6hy6MR2amPtkrySKA3nGi8rXBcnBF4UignC2/SvMj
         QkZOHqpSECE5tWi1WqWAx85hoL/NP0srNzRfWGjSZxpUywdTNocL+P8b+YC5Ts97RE45
         2Q4kP6AFq9lon0/YXC+bN1EEgJBylK/vQdhMgUCxb/F6I4wwUkAoRVAjlCWdOqJgYiIk
         e9j1JazfVobPknnXD6yTz4kXCybBHMzNYXmZicV8tyudjYtmMnF+2WQO2ducpxpbkDzV
         WSwA==
X-Gm-Message-State: AOAM5322r8RYHD8swikdhYtEpws2/Xcer5mDr1Rs6u3kB6e2t8GRqgPR
	g6wecrJlGPFC9OwhXplWYP27oRMUl4rwijoMok+HKnr206P19g==
X-Google-Smtp-Source: ABdhPJz+NEDT686/098D2BNaRc66HOlmGEIhPndtQ2uYVsTl8T6lHzX5A9RWV6gUiO/m1I2tzAF6O7SIcym7IqUJeCg=
X-Received: by 2002:a5d:6dc4:: with SMTP id d4mr31954124wrz.105.1620122822923;
 Tue, 04 May 2021 03:07:02 -0700 (PDT)
MIME-Version: 1.0
From: Piotr Krysiuk <piotras@gmail.com>
Date: Tue, 4 May 2021 11:06:52 +0100
Message-ID: <CAFzhf4qipkzzR1r8mowFaMNmUxXMhR9agw=gqJs1CSLNF0=rWA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2021-31829] Linux kernel protection of stack pointer against
 speculative pointer arithmetic can be bypassed to leak content of kernel memory

An issue has been discovered in the Linux kernel mechanism to mitigate
speculative loads (Spectre mitigation).

Unprivileged BPF programs running on affected systems can bypass
the protection and execute speculative loads from the kernel stack.
This can be abused to extract contents of the stack via side-channel.
The extracted contents may include addresses of kernel structures
that could be used to defeat Kernel Address Space Layout Randomization
(KASLR) to facilitate exploitation of other vulnerabilities.

The identified gap is that when protecting BPF stack pointer against
speculative pointer arithmetic, the BPF stack area itself is not
protected against speculative loads. This could be abused to perform
speculative loads from any location within the BPF stack. And so
any restricted data from the BPF stack could be disclosed, such as
addresses of data structures referred by the BPF program. Further,
the original content of kernel memory is not wiped when allocating
the BPF stack, and could be disclosed as well.

I developed a PoC that allows unprivileged local users to extract
contents of 511 bytes from the BPF stack.

The PoC has been shared privately with <security@kernel.org> to assist
with fix development.

The patches are available from the BPF subsystem public git repository.

The fix has dependency of another recent commit fixing a separate
issue. The full patch series is as follows:

* https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf.git/patch/?id=b9b34ddbe2076ade359cd5ce7537d5ed019e9807
* https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf.git/patch/?id=801c6058d14a82179a7ee17a4b532cac6fad067f

# Discoverers

Piotr Krysiuk <piotras@gmail.com>

# References

CVE-2021-31829 (reserved via https://cveform.mitre.org/)
