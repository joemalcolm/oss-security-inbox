Received: (qmail 27889 invoked by uid 550); 20 Apr 2022 06:39:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7943 invoked from network); 20 Apr 2022 05:58:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650434307;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=H3WIS2A6VxR7Veklkwj8eXkDN4cCZ0KqjDAtD5ttAeY=;
	b=hh+3ztQFbIO6BgJNU38208LlUZTH5m0F8JAhxhzNd2sQe1P8KYXS1PSNZo1ByBYmbveBS3
	VNp3wKJ6EihvSwvwm98Th9dYSlTTzTgyfJRiw2oLNKs/Gv8ReWcX/9QgfHVmFhusXT9EYn
	YWSsp9WKpIrSKRL6hrDUsasZbWN7GC8=
X-MC-Unique: XksO2Qc1MSG3StynX8-stw-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:from:subject:content-transfer-encoding;
        bh=H3WIS2A6VxR7Veklkwj8eXkDN4cCZ0KqjDAtD5ttAeY=;
        b=yXI53ypAoUrBvuNQvnrXQAIO5+uuopICu6EGZQ3OPan/lXxJWGpklWCgvXwtvT3FS1
         ijhwy+isIlt1pD/i2rNhO2fHbiunoytaUSn/gt+c+RZwd+f8+9Mi7E9JabLTuyfzijJz
         IBzEMWSBh7HXMnsNMJpWaC2hacKeeq33KusVI4ZiYIQ5WByRmhcIPMpaxVbvL6VmslZI
         OYeG5PDTIOIToOskM24N6zK3vcxU9+GSXoMpVcXcL+le89OGRgX14JdpuTUhrRfaXTcY
         EC08QkqW4SbPnSwsnzsLrKRW2Qpj9sOeO1/QCnz3utZ7MyjPpuu6l4JyMzVJeSkryT8n
         v56g==
X-Gm-Message-State: AOAM532aybRa0PMKQvOb9z+mcbJPMR56EOV7Y9Y+caMLoELPZIK3AtbR
	q/oMANM56GB70gD+JXnsuyQwO8isB1tvnFXaOKIi25s0oA1H3Pt5ipYDTkXdSBVpsRk/TkY8jKJ
	NS7VbVCGleVa+pd5ttWGphlCDtpqY0/8HYXNv8b2BoSrjSE1GyQEiJNS4FhyndcKvofhEsmjLau
	Kw4U2zRGoeKxHg
X-Received: by 2002:a63:b20a:0:b0:398:9e3e:d581 with SMTP id x10-20020a63b20a000000b003989e3ed581mr18438390pge.236.1650434305138;
        Tue, 19 Apr 2022 22:58:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxS1H1aeVbiz9F2U6pbLocl9dfxlYrNcYkULPEmZLSdOYaWSbt1go5Ze54WZQa4lDWe8aPbAA==
X-Received: by 2002:a63:b20a:0:b0:398:9e3e:d581 with SMTP id x10-20020a63b20a000000b003989e3ed581mr18438367pge.236.1650434304631;
        Tue, 19 Apr 2022 22:58:24 -0700 (PDT)
Message-ID: <86c70de9-3adb-a18c-23aa-0110d83dbdc2@redhat.com>
Date: Wed, 20 Apr 2022 15:58:20 +1000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
To: oss-security@lists.openwall.com
From: Peter Hutterer <peter.hutterer@redhat.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=peter.hutterer@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2022-1215 libinput format string vulnerability

Title: Format string vulnerability in libinput
Component: libinput, affecting all Wayland compositors and X.Org when 
using xf86-input-libinput
Report URL: https://gitlab.freedesktop.org/libinput/libinput/-/issues/752
Reporter: Albin Eldstål-Ahrens and Lukas Lamster
CVSS: 7.1 AV:L/AC:L/PR:H/UI:N/S:C/C:H/I:H/A:H/E:U/RL:O/RC:C
Disclosure date: Embargo cancelled due to an independent public bug filed

When a device is detected by libinput, libinput logs several messages 
through log handlers set up by the callers. These log handlers usually 
eventually result in a printf call. Logging happens with the privileges 
of the caller, in the case of Xorg this may be root.

The device name ends up as part of the format string and a kernel device 
with printf-style format string placeholders in the device name can 
enable an attacker to run malicious code. An exploit is possible through 
any device where the attacker controls the device name, e.g. /dev/uinput 
or Bluetooth devices.

All versions of libinput since 1.10 (released Feb 2018) are affected.

The upstream patch is available as commit
   2a8b8fde90d63d48ce09ddae44142674bbca1c28

libinput releases that include these patches are:
- 1.20.1
- 1.19.4
- 1.18.2
Releases of versions 1.17.x and earlier are not planned at this stage.

Many thanks to Albin Eldstål-Ahrens and Benjamin Svensson from Assured 
AB for their discovery and responsible reporting of this issue.

This issue was independently discovered by Lukas Lamster. Many thanks 
for their discovery and responsible reporting.

