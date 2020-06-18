X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["700" "Thursday" "18" "June" "2020" "11:19:35" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhRQAcpZS_gOF0c80OHx+hj-nknXbkaspyc1=J4VjkRRDQ@mail.gmail.com>" "27" "[oss-security] CVE-2020-10781 kernel: zram sysfs resource consumption" "^Date:" nil nil "6" "2020061801:19:35" "[oss-security] CVE-2020-10781 kernel: zram sysfs resource consumption" (number mark "U       wmealing@red Jun 18   27/700   " thread-indent "\"[oss-security] CVE-2020-10781 kernel: zram sysfs resource consumption\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-10781 kernel: zram sysfs resource consumption" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24046 invoked by uid 550); 18 Jun 2020 01:20:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24022 invoked from network); 18 Jun 2020 01:20:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592443190;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=25A9TTesabjBFXcHEiJbAD7mYLZcDhJnRV4Z2tkInx8=;
	b=gti+DsUwaTkC1ehgIe/Dsgc259Ro2SJX5diyZbc4+2fRtytXUmrEX7iPrxY34pARunG6Ml
	HQLDZBFTOmkMt2lZlT/8zxuFqJ6/Ez5n6wVN3xH/Yds/KM8d/2QUm4ynlKz51qsSlurv/j
	9rLcgyrxd837lpV4OPKR13TiDueZxC8=
X-MC-Unique: eGkOejMlPiOEqwutyQgTbw-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=25A9TTesabjBFXcHEiJbAD7mYLZcDhJnRV4Z2tkInx8=;
        b=CvtmIUTzAwzMgGn4uaqdovvymaBXnstQMPzHVzhrlb1MXgHIuWfgU1Cfo8WyW0hxZx
         etoXdMR+bzPj7YLLJafl2S3NCAyoKRLc5xaKmxWGQ3wpEojnLZt36obIp3PmWfagqrrH
         l/iUesN8notbsx4TMIlKAi7FM2/N/h0SfIB2ThjSsGqOAsqsrzRIBnWSi58gbNryhKTa
         +ZJNBuj/1/orKfoMs93BcQWvDst92eR/7bu3efWOmQc7lBTsQjBBdiIvE13Z2jsIhvpY
         ljffxT5lziuenOdiccoSPM/1cko2c/aw7eKo+eVaJYQTF29ZFkpYNgvkdhZ2LrAVh0uO
         +cMg==
X-Gm-Message-State: AOAM532gPHR/JeXNIpqR2+PsT8eUxTae+a1Rd0b6Aku+meT6yyQqGBTY
	P6G8L4xJ4OlFZhrHRGCpSzW7J8Bpy9r7+HCFYpKTK8cMxKYq6ZZ76WY4+XWb6+m7xgj8IIV5ZJK
	Nyj33vhaOHaD6xmiGfQpAqoeKZsJzmGAi5LmMJkyQmpr0
X-Received: by 2002:adf:f84d:: with SMTP id d13mr1799339wrq.99.1592443186926;
        Wed, 17 Jun 2020 18:19:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw+i7D0G3pQ/8IOx/HaVCUCw44JHZySt80HHzj+FGT4u3Hyn+1WuI8OKTFJAVs5llNdAfLRY70YoBbnPEccVTw=
X-Received: by 2002:adf:f84d:: with SMTP id d13mr1799330wrq.99.1592443186725;
 Wed, 17 Jun 2020 18:19:46 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CALJHwhRQAcpZS_gOF0c80OHx+hj-nknXbkaspyc1=J4VjkRRDQ@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=wmealing@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Date: Thu, 18 Jun 2020 11:19:35 +1000
From: Wade Mealing <wmealing@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2020-10781 kernel: zram sysfs resource consumption
To: oss-security@lists.openwall.com

Gday,

A user with a local account and the ability to read the
/sys/class/zram-control/hot_add file which on each read will create a
zram device node in the /dev/ directory.  This allocates kernel memory
and is not allocated to a user.

Continually reading this file may consume a large amount of system
memory and cause the system OOM killer to activate, terminating
userspace processes possibly making the system inoperable.

Acknowledgement:
Luca Bruno of Red Hat

Upstream discussion and patch
https://lore.kernel.org/linux-block/20200617103412.GA2027053@kroah.com/

Red Hat bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=1847832

Thanks,

Wade Mealing

Product Security - Kernel
Red Hat

