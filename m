X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["715" "Wednesday" "9" "May" "2018" "15:20:03" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhRC-+DmnUY-xvOx0uyynp7T2jfarnAcnJbxNqAFesefjw@mail.gmail.com>" "28" "[oss-security] CVE-2018-1118 linux kernel: vhost: Information disclosure in vhost/vhost.c:vhost_new_msg()" nil nil nil "5" "2018050905:20:03" "[oss-security] CVE-2018-1118 linux kernel: vhost: Information disclosure in vhost/vhost.c:vhost_new_msg()" (number mark "U       wmealing@red May  9   28/715   " thread-indent "\"[oss-security] CVE-2018-1118 linux kernel: vhost: Information disclosure in vhost/vhost.c:vhost_new_msg()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30511 invoked by uid 550); 9 May 2018 05:20:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30490 invoked from network); 9 May 2018 05:20:15 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=eZXnVu2ixdmceMSMUQ+i9RkR3LQzgLPm8rXAt5RuR1A=;
        b=tzKFTp62VjZL80SSSdfm0d/rdsa75YBmZs5heHhzzqdQjcLxibOqjbqDrcybe4hR5W
         yDTE5qizjgE5ifWOAraDjdKkP2Gd/D8vu2DxT+HtPqQwO95wXKMO0fkae1/nifhNezCW
         V6BZPw5NOxdJ839EG41oHXqm8hKt2PR2QqP8LI/6r9ZDVHnS2tqc749O1tDkc80nx8vm
         lgOS2A4OtkmUEQxIXWlu+7NE16QscprmGRsebig4QTSCtd1+WnYSKH0zzYfI31O0FF4E
         uFWQAcXouW3k3U0nBOHwkz11mWLQ1xyyuTFJh7SKQzRaT28uvkLCcIkUmTb0or6ZQGU1
         v94A==
X-Gm-Message-State: ALQs6tCMJRI2hxtIonZVO94SwH6bPq8f6rHO5kMaBRLjwNXq2rwGpuLN
	pI49J5K2gERjWY5mTBbaCdT2f9dPys2q56nrV5kcH7DAdXM=
X-Google-Smtp-Source: AB8JxZpj8auZI906F5yhJf/ZfJ/G+/5w+Yl5UpJm90YgpJmlHXmyiTlDnumoJ4eOhiYAuDvh7zS8tng/txJBiiWHxzo=
X-Received: by 2002:a6b:200e:: with SMTP id g14-v6mr50926652iog.161.1525843203626;
 Tue, 08 May 2018 22:20:03 -0700 (PDT)
MIME-Version: 1.0
From: Wade Mealing <wmealing@redhat.com>
Date: Wed, 9 May 2018 15:20:03 +1000
Message-ID: <CALJHwhRC-+DmnUY-xvOx0uyynp7T2jfarnAcnJbxNqAFesefjw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2018-1118 linux kernel: vhost: Information disclosure in vhost/vhost.c:vhost_new_msg()

Gday,

A flaw was found in the vhost_new_msg() function which does not
properly initialize memory in messages passed between virtual guests
and the host operating system. This can allow local privileged users
to read previously set kernel memory contents when reading from the
/dev/vhost-net device file.  This would be classified as an
information leak that could be used to defeat other protection
mechanisms.

As far as I can tell this information doesn't flow to guests, only to
the parent system which is hosting the virtual machines.



Upstream post:

https://lkml.org/lkml/2018/4/27/833

https://bugzilla.redhat.com/show_bug.cgi?id=1573699

Thanks
-- 
Wade Mealing

Product Security - Kernel, RHCE

Red Hat
