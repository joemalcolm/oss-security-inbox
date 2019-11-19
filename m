X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1991" "Tuesday" "19" "November" "2019" "13:33:48" "+0200" "Georgi Guninski" "gguninski@gmail.com" "<CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>" "46" "[oss-security] Mitigating malicious packages in gnu/linux" "^Date:" nil nil "11" "2019111911:33:48" "[oss-security] Mitigating malicious packages in gnu/linux" (number mark "        gguninski@gm Nov 19   46/1991  " thread-indent "\"[oss-security] Mitigating malicious packages in gnu/linux\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Mitigating malicious packages in gnu/linux" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18352 invoked by uid 550); 19 Nov 2019 11:59:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28103 invoked from network); 19 Nov 2019 11:34:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=10pvn3uLIZPdhGxTT7OBzh4Tnw7O+/s1ti0gjN8+PcQ=;
        b=Mtb+Im+munfUYrKb3AQenidBEghzR0rnyooVcNsQ3q0GI1P5Ti86q25dPGYRrCqELh
         MzCNWKWjvl/4SDHZ+ssPfkGwABUVwCpl81TqOSupVecuw7SE+iSMpHBRYzCLInor7Bvr
         cErgF+YPL1gWxDwpzRBRnrO0z83SPJECwHPCz0HOjmEomK+Hxt0vSt+i5+xXFeEoMxPj
         YqGzsi7aarpmFehvM6DLYp1rzTphNJkqd/VBpIs2sRzWZSSvL2ielWqGoVC3Hsv0JbQ/
         kQ1wyb4rMmghAf6B3hHKBJjzYFU/uZmT0wiMzgOl4Kzxevfh4lsyVmJXrvFa/U8czmCE
         P0WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=10pvn3uLIZPdhGxTT7OBzh4Tnw7O+/s1ti0gjN8+PcQ=;
        b=hGf46kO1FsBpDCtPlWT9Y6c2YjVZ7CTaHt0wCSeJ8EOVRkqFH7+2LwhZfcq5g+LIeI
         a3Cw2YEVSVj+uafIaMI90N3GYyrMrwCt33BHes5izIk80gAnowNg1rIeUN8//0bvO4V9
         iCvLQ3j/uzfsVZ6oZxHU9ihiZu01rnIL+hDX4AGl/8CLY6C4RUcynhJuBiGEJCab5JuH
         YzH9kOalM30SyL3cA4hB69WcZNs+kITiYTdPtLbiNM+wSyBV8emgHNVpsJaYm0U0+qnf
         M3YEj2Q/lgElcm1Zg0cTvmgvMUlTDcj4yLIUzfgrhyXQYuvcq1Hk/nE10Ul1n8nKTRnN
         opPw==
X-Gm-Message-State: APjAAAX3SJOJJjemiY1ChOKroFFpxzybHbYiRvZu/92K4sKLRQHfinzo
	NUiV2plG1bWWvQu0W5vJLmEoyQqaABzTt+Bv/tbWa4Q/uhg=
X-Google-Smtp-Source: APXvYqzNlAu0J6hCRTjftB/ZQKZBFeVRJxMjszvKh+xQZ+Q19ich06f+jvAAgFQz9FKunAAuOfACTj96wLEZWslcWb8=
X-Received: by 2002:a5d:8752:: with SMTP id k18mr1250491iol.238.1574163240100;
 Tue, 19 Nov 2019 03:34:00 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Tue, 19 Nov 2019 13:33:48 +0200
From: Georgi Guninski <gguninski@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Mitigating malicious packages in gnu/linux
To: oss-security@lists.openwall.com

As end user and contributor of gnu/linux, I am concerned about malicious
packages (either hostile developers or hacked developers or another reason)
and have two questions:

* What do linux vendors to avoid malicious packages?

* As end user what can I do to mitigate malicious packages?

Some thoughts and rants:

1. This already happened in 2003 with the micq package in debian:  unnoticed
easter egg causing DOS, see [1].

2. This already happened to Redhat in 2008? see [5], Red Hat OpenSSH Backdoor
Vulnerability

3. In 2015 Microsoft issued weird update, see [6],[7].

4. Portable malware in portable languages (Java, Javascript), taking the
worst from windoze.

5. Google play. Google play has about 2.8M packages [2] for android. Debian
has about 31K packages [3] XXXold_stat. To our surprise google play is only
about 90 times bigger than debian per number of packages and the metrics
is unclear for size of binary packages or lines of code. Google scans for
malware, not sure how effective is this.Google's permissions of applications
are mitigating factor.

6. The art of backdooring: sufficiently sophisticated backdoor is
indistinguishable from secure code, see Obfuscation contest [4].

7. Getting root vs reading $HOME vs euid == DAEMON. Getting root is important,
but there is more interesting in user's $HOME.

[1](https://lists.debian.org/debian-devel/2003/02/msg00771.html)
[2](https://www.statista.com/statistics/266210/number-of-available-applications-in-the-google-play-store/)
[3](https://sources.debian.org/stats/)
[4](https://ioccc.org/)
[5](https://www.securityfocus.com/bid/30794/info)
[6](https://j.ludost.net/blog/archives/2015/10/03/cheers_windows_admins_did_the_weird_garbled_windows_7_update_contains_message_to_microsoft/index.html)
[7](https://j.ludost.net/blog/archives/2015/10/02/cheers_windows_admins_weird_garbled_windows_7_update/index.html)

-- 
CV:    https://j.ludost.net/resumegg.pdf
site:  http://www.guninski.com
blog:  https://j.ludost.net/blog
