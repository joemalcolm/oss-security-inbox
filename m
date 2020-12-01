X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1443" "Tuesday" "1" "December" "2020" "13:51:58" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" "<CAFcO6XPv=KkOzk_wzNJDSv1h-X3TnbVXrZm3CR2aS+-EA9CHzg@mail.gmail.com>" "51" "[oss-security] Linux Kernel: ALSA: use-after-free Write in snd_rawmidi_kernel_write1" nil nil nil "12" "2020120105:51:58" "[oss-security] Linux Kernel: ALSA: use-after-free Write in snd_rawmidi_kernel_write1" (number mark "U       butterflyhua Dec  1   51/1443  " thread-indent "\"[oss-security] Linux Kernel: ALSA: use-after-free Write in snd_rawmidi_kernel_write1\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux Kernel: ALSA: use-after-free Write in snd_rawmidi_kernel_write1" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16269 invoked by uid 550); 1 Dec 2020 06:08:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7290 invoked from network); 1 Dec 2020 05:52:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=PyzgTC8khHPHuMAAzxlSP+REg2/op+Q0SW36VRq78RY=;
        b=AvOCwl+BsIhnbuCMg7hO498CVJHWt3D7pacEwf8XJoPW4y1HH9hesVoFuUE19U7yng
         7Boknwobyq7erXIKy4ThNJFb7G7eHSMn9bZDhUtFg5VYyBkHT5TUDvkgWduO+d3zqJpx
         UQXoLcAjTw/wmHMafF9p7zBRn6e9SpofiY4KTcL0WEp/nDwEppYhjewAWj3R13INWu5/
         YLhMaR18rbY7tuVj+LTDf527g5WtrIDR4dhXBe5Q8GgebJFcAWD+cBVaAsSEqusH/5L+
         h0AXrBC16yzsscHSvDOYTDRiySKih9QFgmO9+N1tabAoOSR5kX6TlgcrRywG7FlE0UI3
         iq0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=PyzgTC8khHPHuMAAzxlSP+REg2/op+Q0SW36VRq78RY=;
        b=jmFKMH1sZv5Ko5vTN30F+1Ak7xvqd2Ndgm0lKbqEaPrTwTP06YOA1vGGH8F3jSol+i
         d8zQXTUr2TaBd8EFbHjcUdHrY/KizZRmvKgqH3GW6gr2DeLR3Io6yvjsi79ItRhfz2HI
         r6MSxqqHW14ersOe+e6Eqyd0L6a4f1a0SzSn+kVakpyDWN2cT2EgHOcpwNTrwDTgy4d+
         4vhMYCYW0BK85p1M4X9kwlBw1ISpH6U+fAGqLq7rmL+QU+Ilmsa5okFc/m7COAzcmNOv
         VRlvMuX0+CsXQo9I9jsY6Zuht6jYkt+jdqlbl5BRePfydCVJu0asN9StqZ52T9bwXb0I
         or8Q==
X-Gm-Message-State: AOAM5301Lus78fG+TWRelYVakZA2c1ZzLLuwDZgB9t6HaiYdiEfY+ATP
	sEvDxuToPJOQWAbhHZnPom/5D2OumBfxhb3ztt7tsmuY800=
X-Google-Smtp-Source: ABdhPJxD6gm2tmQMCEt1mqrJP82hj4oCt1/NO/hCoWLh4jUi2IBdc6vpW+ngKV6I4G5VOCmtvlB9rqQ5i2KYc8SQwTs=
X-Received: by 2002:a25:8b89:: with SMTP id j9mr1193866ybl.302.1606801929156;
 Mon, 30 Nov 2020 21:52:09 -0800 (PST)
MIME-Version: 1.0
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Tue, 1 Dec 2020 13:51:58 +0800
Message-ID: <CAFcO6XPv=KkOzk_wzNJDSv1h-X3TnbVXrZm3CR2aS+-EA9CHzg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000363beb05b560ba35"
Subject: [oss-security] Linux Kernel: ALSA: use-after-free Write in snd_rawmidi_kernel_write1

--000000000000363beb05b560ba35
Content-Type: text/plain; charset="UTF-8"

Hi,
I reported a use-after-free bug in snd_rawmidi_kernel_write1 in
sound/core/rawmidi.c months ago. And I reproduced it in the latest version
linux-5.7.0 at that time.

Description:

It was found that the raw midi kernel driver does not protect
against concurrent access which leads to a use-after-free in
snd_rawmidi_kernel_read1() and snd_rawmidi_kernel_write1() in rawmidi.c
file.
A malicious local attacker could possibly use this for privilege
escalation.

Root Cause:

The rawmidi core allows user to resize the runtime buffer via ioctl,
and this may lead to UAF when performed during concurrent reads or writes:
the read/write functions unlock the runtime lock temporarily during copying
form/to user-space,
and that's the race window.

Patch for this issue:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=c1f6e3c818dd734c30f6a7eeebf232ba2cf3181d

CVE assigned:

not assigned.

Timeline:

*2020/5/7  - Vulnerability reported to security@kernel.org.
*2020/5/7  - Vulnerability confirmed and patched.
*2020/5/18 - Request a CVE ID via https://cveform.mitre.org/
*2020/11/18 - CVE Request responded but not assigned.
*2020/11/18 - Reported to Red Hat.
*2020/12/1 - Opened on oss -security@lists.openwall.com

Credit:

This issue was discovered by the ADLab of venustech.


Regards.
 butt3rflyh4ck.

--000000000000363beb05b560ba35--
