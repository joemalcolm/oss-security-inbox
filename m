X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["423" "Thursday" "10" "November" "2016" "13:18:44" "+0200" "eov eov" "seclist45@gmail.com" "<CAPbtD9nNvN19NGdM+NqiBarBVDU2qP+e3j9XoNXs9mEjd+yqjQ@mail.gmail.com>" "22" "[oss-security] Vlany: A Linux (LD_PRELOAD) rootkit" nil nil nil "11" "2016111011:18:44" "[oss-security] Vlany: A Linux (LD_PRELOAD) rootkit" (number mark "U       seclist45@gm Nov 10   22/423   " thread-indent "\"[oss-security] Vlany: A Linux (LD_PRELOAD) rootkit\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28601 invoked by uid 550); 10 Nov 2016 11:45:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11313 invoked from network); 10 Nov 2016 11:18:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=yVPYJ1Itzo/7vd6h88i7p5hQubJpDdQz2duSm+sslik=;
        b=GDJXXBbR/dNN7X+nn2q82pRunuUrqDaXwodpe1tEWnIlPotLk6a2hjcLD/j3wYW9im
         jKUUXvB3BOw+N9qmrKMQxkYSOXpUePyZPdVTJxglXR20cB8NdcPbXebepNC3KjYKYAwK
         PeuRiqj5IntXqeCu0sJH8P1mcH8pElJYmnVK/3qZQ1wv/JD6DOKEFQtCyi8gtQZ5npCP
         l7AZC25ReMg8q0nihxVfUKS6tL4XCVJAQMmJktsu8SH+DWNpKrynyjPBrQnpqTtyaQV0
         feyeXtp/84xkUscCLlBP4kW2QYfzmwr25SI3vzTTKsOhoVVyy2Sy55CK2YO+GhPnDuLs
         5t8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=yVPYJ1Itzo/7vd6h88i7p5hQubJpDdQz2duSm+sslik=;
        b=KvS2IXGYW9s/9um1YdwhetSx6/9rbWEJqHZlGchxEOs4vJGiiYNe8MwncENe87usnx
         QZ1rr8CPIpicNSM556aNWjoj8Maq0zcNQpzYTi253/c1rCbaXiK3jdD1U+b7cIBwERpX
         FUGJjEjOaYbgQhZXxOSD4GtPNXsLpwx10IkgtvEN4+kZh+puNT2BGyXxIlL4RLuPz+fp
         lYpIpmPgqkWtj4iAPhQAavpdbw1R8S+Y3RiW6WKFoEIWZo6KgIQymnGzN7RobDyRozVk
         14Cr89QDvFytyqlrqF4fziqYxCkV38d23jfzclohPbw9lV+f3f11nfHcRJJN1JWIS+5X
         l62w==
X-Gm-Message-State: ABUngveQmjoVcBCye0si7IP5Dgw+lMqM18lR6iH6tfyCPfnkwNG8i0kALHEBW6Xux8BA+QwobtKr3K54pfel1A==
X-Received: by 10.36.110.78 with SMTP id w75mr3557125itc.8.1478776724671; Thu,
 10 Nov 2016 03:18:44 -0800 (PST)
MIME-Version: 1.0
From: eov eov <seclist45@gmail.com>
Date: Thu, 10 Nov 2016 13:18:44 +0200
Message-ID: <CAPbtD9nNvN19NGdM+NqiBarBVDU2qP+e3j9XoNXs9mEjd+yqjQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a114aa32a6052790540f0894c
Subject: [oss-security] Vlany: A Linux (LD_PRELOAD) rootkit

--001a114aa32a6052790540f0894c
Content-Type: text/plain; charset=UTF-8

Features:

Process hiding
User hiding
Network hiding
LXC container
Anti-Debug
Anti-Forensics
Persistent (re)installation & Anti-Detection
Dynamic linker modifications
Backdoors
accept() backdoor (derived from Jynx2)
PAM backdoor
PAM auth logger
vlany-exclusive commands

Download: https://github.com/mempodippy/vlany

--001a114aa32a6052790540f0894c--
