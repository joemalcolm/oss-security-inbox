X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1037" "Wednesday" "9" "November" "2016" "15:41:47" "+0800" "Idler" "idler1984@gmail.com" "<CACCOJE2A=1ruGLYkTe5n=nUKRJo6jaLH_-Q6e=F2vHFiUQg=vg@mail.gmail.com>" "32" "[oss-security] CVE Request - Samsung Exynos fimg2d Multiple Issues" nil nil nil "11" "2016110907:41:47" "[oss-security] CVE Request - Samsung Exynos fimg2d Multiple Issues" (number mark "U       idler1984@gm Nov  9   32/1037  " thread-indent "\"[oss-security] CVE Request - Samsung Exynos fimg2d Multiple Issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3994 invoked by uid 550); 9 Nov 2016 11:05:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9548 invoked from network); 9 Nov 2016 07:41:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=nVgVkOFc+027j/HnTMvTKqNGSuiCR4opusx/M3EGF/M=;
        b=jEnuyExCL28iyg2gSgBqdSVCx64n+0SRpFBTTVIknbsGLVLRsZqXKYTnOJr/aVlR92
         AoxUCQJXPQTQkIKlvGsLD5QGes5LooDElAAKb8er3aRWO1viQPp2bp+w/5NniqVzlsW1
         vmRlHa7X6beqhAV/Sj0VlVr0ragn7fxZ124ZZ9WMdtm400RgW2U5qR+klIZFikIz0+6Q
         LseM0e4dSQoxudXNJFrHXQJhpY/2jhjsRJI3nQYfdUIIYpaX39EZ4TXckwN5TANBCj+j
         i3V4ofGzDJcY4KDKrUr1lQVtlgcYljIcwkzEppgG7yDZjrxWxt0TQB+qmEnYbj2rz5c2
         R0lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=nVgVkOFc+027j/HnTMvTKqNGSuiCR4opusx/M3EGF/M=;
        b=R7MSV5INJ4wMifm+BBe3ASJrLuzV8aP0gbZkpLigiRGPT+tI/RZ/beNssgQyDUw2rB
         R24nlnn9ofTVkdcPSicfc+l/QzYGXhGnxwQsYytwkC+0G6jtf1r3r0mchxTA7/9kyGOD
         50n5QlGnWXASfxQ8UCO4wfDESEvOq1R7fub3dcG8yFrhXVGcZrcSMrfiDJjFEpzA+96z
         /XWTJJDJXul/IWULY8mldQko9Ajs/JI4ENHPS6fpb4rY0ElIcCwUThO/G9YL7VXyvht4
         q09/A7tfX4OMNjpZGOzr9lNOokbLADOkx4+6xoEH/wlIJMt90DoGBCWXhZV3DZga3Wa6
         6dsg==
X-Gm-Message-State: ABUngvcuPXhf6BUPMifX2YcF0TCSA2W3aqnlcfQpzP/z7IpSDoDsam3DBjZTVNI4rwlRGZ6eP9BN2ElEH/tNeQ==
X-Received: by 10.55.221.4 with SMTP id n4mr19149013qki.138.1478677307459;
 Tue, 08 Nov 2016 23:41:47 -0800 (PST)
MIME-Version: 1.0
From: Idler <idler1984@gmail.com>
Date: Wed, 9 Nov 2016 15:41:47 +0800
Message-ID: <CACCOJE2A=1ruGLYkTe5n=nUKRJo6jaLH_-Q6e=F2vHFiUQg=vg@mail.gmail.com>
To: oss-security@lists.openwall.com, Anarcheuz Fritz <anarcheuz@gmail.com>, 
	cve-assign@mitre.org
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE Request - Samsung Exynos fimg2d Multiple Issues

Hello,

I'd like to request for CVEs for the following two vulnearbilities
fixed in Samsung Exynos fimg2d driver for Android:

Security bulletin: http://security.samsungmobile.com/smrupdate.html#SMR-NOV=
-2016

SVE-2016-6736: Kernel Crash on /dev/fimg2d ioctl command
Severity: Medium
Affected versions: All devices with Exynos 5433/54xx/7420 chipsets
Reported on: June 11, 2016
Disclosure status: Privately disclosed.
The fimg2d which is one of the graphic devices for Exynos chipsets
doesn=E2=80=99t have exception control routines to handle unexpected comman=
ds
and it can lead to kernel panic.
The patch prevents kernel panic by ignoring inappropriate commands at the s=
tate.

SVE-2016-6853: Use After Free in /dev/fimg2d
Severity: Medium
Affected versions: All devices with Exynos 5433/54xx/7420 chipsets
Reported on: August 5, 2016
Disclosure status: Privately disclosed.
A use-after-free vulnerability in fimg2d allows attackers to gain
access to unauthorized data.
The patch with error handling was applied.


Thank you,
James
