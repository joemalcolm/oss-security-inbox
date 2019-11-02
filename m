X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1515" "Saturday" "2" "November" "2019" "22:27:27" "+0300" "Alexander Popov" "alex.popov@linux.com" "<ab2c1aae-38d8-c15e-6109-f522f85936d2@linux.com>" "39" "[oss-security] [ Linux kernel ] Exploitable bugs in drivers/media/platform/vivid" nil nil nil "11" "2019110219:27:27" "[oss-security] [ Linux kernel ] Exploitable bugs in drivers/media/platform/vivid" (number mark "U       alex.popov@l Nov  2   39/1515  " thread-indent "\"[oss-security] [ Linux kernel ] Exploitable bugs in drivers/media/platform/vivid\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [ Linux kernel ] Exploitable bugs in drivers/media/platform/vivid" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3969 invoked by uid 550); 2 Nov 2019 19:27:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3937 invoked from network); 2 Nov 2019 19:27:43 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:to:from:subject:autocrypt:message-id
         :date:user-agent:mime-version:content-language
         :content-transfer-encoding;
        bh=MwPyH6iKhWXZ83Em+Rxv/yWvyfj7W/MaI/aQWVrDmgM=;
        b=qLU0HFNq6mQC92+uoKr+7rZLPYthA2lYVyMTIvePwf11P/tbrnlApH+qYm9edZQiKb
         6DOQBJI7IiM07r9IiDdQjduKlYPRl1qZ/+PqNfgCPiPRWNMN+A7ojlXJ/prIK2gZ2vNz
         uTNAjpItkK+8dfAcJjqSf/eyArx0c/2LDtjZOQRoy7CmLpIxmMMMJ1t62D1glmY6Ydkt
         1DgDRBwcljDU+/gs8FG0F6spOD9xgEuPZ3QG2/Yc2sgdbOcMURNiCCHgoXZM/oznCIl7
         hAKjimGGi0AggoVtlWJH09a97ICSHYxz+Suu+p/chct4Y2F7Z7T5Ctl5oFCku7rQ+T0j
         68/w==
X-Gm-Message-State: APjAAAU9H4goW410wlreuOZNgDNKUuT+lmIonE68bVlf1d3o9B9K78WY
	it6dUJTZzW4Hf+M0nh/IPKCqkLl7m8Y=
X-Google-Smtp-Source: APXvYqxYfDoODbOPPOVY/AlAmXfy1Q/7jPxw4EULLiFrIsEDWVLVUiZKnD25mItVSLneGqHjq64Ilw==
X-Received: by 2002:a2e:7207:: with SMTP id n7mr11751551ljc.207.1572722851488;
        Sat, 02 Nov 2019 12:27:31 -0700 (PDT)
To: oss-security@lists.openwall.com
From: Alexander Popov <alex.popov@linux.com>
Autocrypt: addr=alex.popov@linux.com; prefer-encrypt=mutual; keydata=
 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
 j3lCqPk=
Message-ID: <ab2c1aae-38d8-c15e-6109-f522f85936d2@linux.com>
Date: Sat, 2 Nov 2019 22:27:27 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [ Linux kernel ] Exploitable bugs in drivers/media/platform/vivid

Hello!

I used the syzkaller fuzzer with custom modifications and found a bunch of
5-year old bugs in the Linux kernel. I managed to exploit one of them for a
local privilege escalation.

These vulnerabilities are caused by wrong mutex locking in the vivid driver of
the V4L2 subsystem. Please see the fixing patch that I've just sent to LKML:
https://lore.kernel.org/lkml/20191102190327.24903-1-alex.popov@linux.com/

The vivid driver doesn't require any special hardware. It is shipped in Ubuntu,
Debian, Arch Linux, SUSE Linux Enterprise and openSUSE.

On Ubuntu the devices created by this driver are available to the normal user,
since Ubuntu applies RW ACL when the user is logged in:
  a13x@ubuntu_server_1804:~$ getfacl /dev/video0
  getfacl: Removing leading '/' from absolute path names
  # file: dev/video0
  # owner: root
  # group: video
  user::rw-
  user:a13x:rw-
  group::rw-
  mask::rw-
  other::---

(Un)fortunately, I don't know how to autoload the vulnerable driver, which
limits the severity of these vulnerabilities. That's why the Linux kernel
security team allows me to do the full disclosure.

But there is an interesting aspect -- my PoC exploit bypasses SMEP and SMAP on
the fresh Ubuntu Server 18.04. Moreover, it gains the local privilege escalation
from the kthread context (where the userspace is not mapped). I'm going to share
the details about the exploit techniques later.

For now I would recommend to blacklist the vivid kernel module on your machines.

Best regards,
Alexander
