X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["587" "Thursday" "6" "October" "2016" "12:09:05" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdQxo7hS2_7m4_tMS2iK_b2YZSjmCL41yYof6J7qwWtN1w@mail.gmail.com>" "20" "[oss-security] CVE request: DoS loading a SVG in Firefox" nil nil nil "10" "2016100615:09:05" "[oss-security] CVE request: DoS loading a SVG in Firefox" (number mark "U       gustavo.grie Oct  6   20/587   " thread-indent "\"[oss-security] CVE request: DoS loading a SVG in Firefox\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18193 invoked by uid 550); 6 Oct 2016 15:09:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18172 invoked from network); 6 Oct 2016 15:09:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=nVrkjGNJd6MVZ18h4E8e9J0R0jby2o5DJO/sKL61ao4=;
        b=gX62kt4r0Oe27QdWGNHnuJVHaOb/qk/Cp/wgWTqrK60lCiBRL17cMptgpWWfRnfXAG
         woP+Gt+M4dkMbb8AXM8FtoGLABJ2SQw1uGEygUwHnF8RQ3XEp9YMM/pGJRnIMaR5E71g
         T9lvd7KbCdS/lT2niNNurOxSJA8Z9c3LNzIz16pGlsc+7XiOjoazIzqAXRkyEWRgzyY3
         hinSi+W1aGhKmBo+e40uwFoqwWRCzvHq6AWgzuKo99Cc4nNHXry3om48veeZyU0uZi02
         VoreI3NZe+j92CKZQIa3yAnUmhN3utzV8yfRxTYswWJ6UPoY5ocFkQr+8kPqWQ1MIQwW
         SXzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=nVrkjGNJd6MVZ18h4E8e9J0R0jby2o5DJO/sKL61ao4=;
        b=JAod5RoocxDXi3dC4Li9ReE2X6eqH+nf3X8f5PXEJXSdCjiH3f0vsiknl5IYojfER7
         UT+rdERgFU+HJvlGdviZCUkKmJtkS0POWFttyC6GUQC6UF+M4TcPcjj4mGK5xsWy/Y6c
         thBaKUQJJRx8f9DeyAUXSwItwOCdVKsROx9PzJ6yiW2n9HvsL8fZkC12zGOjGl3js7QD
         tGb+5eHAZoRep5qkDczKUp75F0RbI6grMZZxG9uANdaGNfI2WYzt9Jc3TaaD/cGjhGQP
         h2jJJJ6M/aeUPebgrdDM+moE+mu9cAmWX6ISNZ1B/0l+9rAjTOvyYIsG2POPGGLh9mj0
         07Vw==
X-Gm-Message-State: AA6/9RmtvCveFtE8nrS4lr6PswMiTWjR0HVlB3w39LnRjdwffMEc8rtdlbT6WWl0Uloz1XVV0yxjfT/qeFLbRg==
X-Received: by 10.107.58.10 with SMTP id h10mr8085726ioa.78.1475766545789;
 Thu, 06 Oct 2016 08:09:05 -0700 (PDT)
MIME-Version: 1.0
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Date: Thu, 6 Oct 2016 12:09:05 -0300
Message-ID: <CACn5sdQxo7hS2_7m4_tMS2iK_b2YZSjmCL41yYof6J7qwWtN1w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE request: DoS loading a SVG in Firefox

Hello,

Some months ago, we found that just loading this image:

https://dcc.fceia.unr.edu.ar/~ggrieco/oom.svg (518K)

will cause Firefox to consume all your memory. Once you click, you
cannot stop the memory constant memory leak. It can take a few minutes
(we tested in a desktop computer with 16GB). At the end, Firefox will
abort or it will be terminated by the OS.

At least Firefox 49 and 51 in several platforms are affected. A report
in the Mozilla bug tracker was filled:

https://bugzilla.mozilla.org/show_bug.cgi?id=1297206

Please assign a CVE if suitable.

Regards,
Gustavo.
