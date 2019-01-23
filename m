X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["750" "Wednesday" "23" "January" "2019" "14:28:51" "-0600" "Timothy Michaud" "tmm08a@acu.edu" "<CAO5rKUP1iPL87rTg5jUKE43uNxVEoAJb+aGOsAfi+vuwkbtNMg@mail.gmail.com>" "18" "[oss-security] Linux Kernel: Missing access_ok() checks in IOCTL function (gpu/drm/i915 Driver)" "^Date:" nil nil "1" "2019012320:28:51" "[oss-security] Linux Kernel: Missing access_ok() checks in IOCTL function (gpu/drm/i915 Driver)" (number mark "U       tmm08a@acu.e Jan 23   18/750   " thread-indent "\"[oss-security] Linux Kernel: Missing access_ok() checks in IOCTL function (gpu/drm/i915 Driver)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32318 invoked by uid 550); 23 Jan 2019 21:12:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23578 invoked from network); 23 Jan 2019 20:29:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=acu-edu.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=qNBzDJxDYMrSENI0xnZivexM6e5aqkMoBnRalTbnyP8=;
        b=0IUBka7Sat/XJISqmmVtv754hxb/i9CnZUBCSZSkVyIvNni5iJxpI3Dv3b4Y1UGPZD
         hzwdDCYtcC3O8pSYfaDczwJzZNT1eZnsDIjtFkhlTkKgadTOiT2CK8AP/q6KV8QONXeA
         lpkDVaQmUYbuo/2IKAM4GYoVnchpOczN2QkUEEGT9Ax+fznAWzlgLMS8lmNy3mOq+uFM
         9bdmipmDqZ8xTtMKvyoRLDUzXNc2VjHyrWdq58JzRqAee9SwEMHye3/drcY0MBWYrNZA
         mxmc2w6CxqrvAm2Zp6kL6PFH3qOg2r1tORt9rydb0KJp2ekfFgOnF62CTymZQM5QLTHq
         tbqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=qNBzDJxDYMrSENI0xnZivexM6e5aqkMoBnRalTbnyP8=;
        b=rQCNE7E++KRXKtAmlly46Nl/mry81bCgtOVFtVse61kiN+rPk0NIbNPoU9xneYwPHz
         /lDUiszMoR4tPbCFV5PzlFLn0Kr8+qBLwzsymqWENt0YpjSrSi05WjQkGWlXL/w9Cwft
         Dpid9AmnhQ/eECC5DqlHNQo2/cqMj4n7C+Rpf9nNIY4acTTfHF41Agodn0kUx0Ya7SfS
         9g0XD4OH1f2uE7pU4OUQ9zTOiBXfDxfo6jCIztlvFvslJejR3xa4WORuWpKLr7rGx0Sn
         aKJjokL20aYUDrQvOe77hGaK3ZTJD+ceVOc4D6KpCCiksEUlnTgaQEwoUwTGN2RvLbri
         VQRg==
X-Gm-Message-State: AJcUukcFSm4spFwfs1iLSk4G8JBHQvAlkUfdzrSsSrt1jPa0Mt4y4iiH
	g7+DqI5EQz3EecDmeVyIkjSX6HJcUSAHv2aMg1vw9bS4G6A=
X-Google-Smtp-Source: ALg8bN4EZNLg741KsKw2koFTtdOv6RXR9Ji5Xskwi8JtkjDq7powdZH/aUzaZ0QzrZF/UftF0JM0du2rb4W/QNUCKQ0=
X-Received: by 2002:adf:fc09:: with SMTP id i9mr4104646wrr.299.1548275347812;
 Wed, 23 Jan 2019 12:29:07 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAO5rKUP1iPL87rTg5jUKE43uNxVEoAJb+aGOsAfi+vuwkbtNMg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000001f14ea058025f232"
Date: Wed, 23 Jan 2019 14:28:51 -0600
From: Timothy Michaud <tmm08a@acu.edu>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux Kernel: Missing access_ok() checks in IOCTL function
 (gpu/drm/i915 Driver)
To: oss-security@lists.openwall.com

--0000000000001f14ea058025f232
Content-Type: text/plain; charset="UTF-8"

NOTE: I have requested a CVE identifier, and I'm sending this message, to
make tracking of the fix easier; however, to avoid missing security fixes
without CVE identifiers, you should *NOT* be cherry-picking a specific
patch in response to a notification about a kernel security bug.

Due to a lack of "access_ok()" checks in i915_gem_execbuffer2_ioctl[1], it
is possible to escalate privileges similar to the waitid vulnerability[2]

This is CVE-2018-20669

[1] -
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=594cc251fdd0d231d342d88b2fdff4bc42fb0690
[2] - https://salls.github.io/Linux-Kernel-CVE-2017-5123/

--0000000000001f14ea058025f232--
