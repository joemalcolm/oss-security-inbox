X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4748" "Tuesday" "20" "August" "2019" "20:20:34" "+0200" "Andrey Konovalov" "andreyknvl@gmail.com" "<CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>" "119" "[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" "^Date:" nil nil "8" "2019082018:20:34" "[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" (number mark "        andreyknvl@g Aug 20  119/4748  " thread-indent "\"[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29825 invoked by uid 550); 20 Aug 2019 18:20:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29797 invoked from network); 20 Aug 2019 18:20:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=kyAEZ3ndywg3RuxTHXv/fvN5SZZVL9gNcBaUoKeDxIY=;
        b=FF4zswymC4iT7RfC+OhWnkCWwoEpoxEUP7eqcDdPOi5pdiIHjldx54WQKzMTTWrF3i
         ndzi7FsobK52eI/yn1RDCOP4SBx9/MimFg7fJKCLPWVD9jQgYch37guGXzvs+8c9HxSG
         V/48OarvLA5Q2OLHayF5+pkyQSDfLq02tKtngH+rqRNnh2Zak49pqXAqVyBiJcKu73Ld
         mLEnZqo/KiRhVPC6n74z/x0G8Mg4f8V83zOzIOtY0Cxn0THfPd9J0xMklzWk32IWU06O
         y1wJ2ef1gtQwOX6MZbeDmk7ki/c7GHRWLKzB6fYclXtJ8q2dlahsyKUVzvJilameBe1P
         KD1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=kyAEZ3ndywg3RuxTHXv/fvN5SZZVL9gNcBaUoKeDxIY=;
        b=p8Z7SNTluBNXvmxZ8EvaJcSxjuHIPJdJTC9eLxbzIgglIkfENI34L8NjwpYQxmTHOn
         D1vf9T3nNZOTwG3Zfx/EVOenT7Zl1pTYQAumw9gZNYDmb7HaNZ+F/UvZUi+Y/JmGeW1L
         1nPvh8Fnu9VDALt8fst73NfydOI1GjnyuSYEN156U8H0NMvSYnLuquRkiGmjyPWaueyc
         xpJVeN5RdWBHcgf19fpTWhqo1lqHSGfM0w56JIbR5V5VnsrcrgiFBWePH6c0aDvjCxTJ
         JMW1xiRAqHMBLFj4FWIKSf0tmvESJjUamHu7JyHM01Dq6jfMpicnZgDAcM0S5d8vSFmI
         zw/A==
X-Gm-Message-State: APjAAAUJTczMz18HMyc8194xro9nkH2A0ZXiuxyWo6ZeCEJA66TB91em
	J3JY3aEOXFS25RmD3oFFqgQ5B5o4xuqZix+jX+FuXedd
X-Google-Smtp-Source: APXvYqzaumMmLCAqDVxdq5iNM4YDQtiearvIoypgJW+3INyNr/u4f+dPq2IbPKR/xXKXuNCXZiJYCahzdvjiX3Zbp5s=
X-Received: by 2002:a2e:948:: with SMTP id 69mr15248651ljj.39.1566325245269;
 Tue, 20 Aug 2019 11:20:45 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Tue, 20 Aug 2019 20:20:34 +0200
From: Andrey Konovalov <andreyknvl@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2
To: oss-security@lists.openwall.com

Hi!

I've previously reported vulnerabilities in the Linux kernel USB
drivers on this list [1] found with syzkaller [2]. The USB fuzzing
project has been on hold for a while, but has been resumed earlier
this year. Here's a new bunch of 15 CVEs.

As an experiment this time I've requested CVEs for 2 bugs
(CVE-2019-15290, CVE-2019-15291) that haven't yet been fixed (fixes
for the other 13 bugs are in the upstream kernel). Both have been
reported by syzbot over 4 months ago. I've made sure that these 2 bugs
are reproducible with a crafted USB device and crash a Linux laptop
(or rather crash the USB worker thread) with one of the distro
kernels.

There are many more still not fixed bugs shown here [3].

[1] https://www.openwall.com/lists/oss-security/2017/12/12/7

[2] https://github.com/google/syzkaller/blob/master/docs/linux/external_fuzzing_usb.md

[3] https://syzkaller.appspot.com/upstream?manager=ci2-upstream-usb

### CVEs

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-15290

An issue was discovered in the Linux kernel through 5.2.9. There is a
NULL pointer dereference caused by a malicious USB device in the
ath6kl_usb_alloc_urb_from_pipe function in the
drivers/net/wireless/ath/ath6kl/usb.c driver.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-15291

An issue was discovered in the Linux kernel through 5.2.9. There is a
NULL pointer dereference caused by a malicious USB device in the
flexcop_usb_probe function in the drivers/media/usb/b2c2/flexcop-usb.c
driver.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-15211

An issue was discovered in the Linux kernel before 5.2.6. There is a
use-after-free caused by a malicious USB device in the
drivers/media/v4l2-core/v4l2-dev.c driver because
drivers/media/radio/radio-raremono.c does not properly allocate
memory.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-15212

An issue was discovered in the Linux kernel before 5.1.8. There is a
double-free caused by a malicious USB device in the
drivers/usb/misc/rio500.c driver.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-15213

An issue was discovered in the Linux kernel before 5.2.3. There is a
use-after-free caused by a malicious USB device in the
drivers/media/usb/dvb-usb/dvb-usb-init.c driver.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-15214

An issue was discovered in the Linux kernel before 5.0.10. There is a
use-after-free in the sound subsystem because card disconnection
causes certain data structures to be deleted too early. This is
related to sound/core/init.c and sound/core/info.c.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-15215

An issue was discovered in the Linux kernel before 5.2.6. There is a
use-after-free caused by a malicious USB device in the
drivers/media/usb/cpia2/cpia2_usb.c driver.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-15216

An issue was discovered in the Linux kernel before 5.0.14. There is a
NULL pointer dereference caused by a malicious USB device in the
drivers/usb/misc/yurex.c driver.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-15217

An issue was discovered in the Linux kernel before 5.2.3. There is a
NULL pointer dereference caused by a malicious USB device in the
drivers/media/usb/zr364xx/zr364xx.c driver.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-15218

An issue was discovered in the Linux kernel before 5.1.8. There is a
NULL pointer dereference caused by a malicious USB device in the
drivers/media/usb/siano/smsusb.c driver.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-15219

An issue was discovered in the Linux kernel before 5.1.8. There is a
NULL pointer dereference caused by a malicious USB device in the
drivers/usb/misc/sisusbvga/sisusb.c driver.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-15220

An issue was discovered in the Linux kernel before 5.2.1. There is a
use-after-free caused by a malicious USB device in the
drivers/net/wireless/intersil/p54/p54usb.c driver.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-15221

An issue was discovered in the Linux kernel before 5.1.17. There is a
NULL pointer dereference caused by a malicious USB device in the
sound/usb/line6/pcm.c driver.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-15222

An issue was discovered in the Linux kernel before 5.2.8. There is a
NULL pointer dereference caused by a malicious USB device in the
sound/usb/helper.c (motu_microbookii) driver.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-15223

An issue was discovered in the Linux kernel before 5.1.8. There is a
NULL pointer dereference caused by a malicious USB device in the
sound/usb/line6/driver.c driver.
