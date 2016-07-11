X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1016" "Monday" "11" "July" "2016" "12:11:43" "+0200" "Cedric Buissart" "cbuissar@redhat.com" "<CAKG8Do6jzQUGa-hgGxa8oxYAhkz3qm8sMMXmbC8HuNJZKGqbLw@mail.gmail.com>" "34" "[oss-security] CVE-2016-5011: util-linux: Extended partition loop in MBR partition table leads to DoS" nil nil nil "7" "2016071110:11:43" "[oss-security] CVE-2016-5011: util-linux: Extended partition loop in MBR partition table leads to DoS" (number mark "U       cbuissar@red Jul 11   34/1016  " thread-indent "\"[oss-security] CVE-2016-5011: util-linux: Extended partition loop in MBR partition table leads to DoS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7775 invoked by uid 550); 11 Jul 2016 10:11:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7757 invoked from network); 11 Jul 2016 10:11:55 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=o5E55bNp3MLhnirKtjRvyVu4mQOKcgmw/Uk2+jaWGKw=;
        b=blFaHg9w2xQLIDkpNDZNHFrr5P+wYC8pjUgYwU46bXnPEGWACQxAHZxJYK22zjmdBP
         YIhMZXtkhTw5L2/LYkqjUx6hq57cLAUFdZ6PFVMcqQSJP7KKYmL9ElyH0BasPKUXY3dx
         XJemKmVMchminazLAtTZWRA1scH0IrLBssbjWHhtHDLTT9Bx4h37phKF/I01IOiqrSsN
         21PT/PqjLh9QDAaPrxS1fr1SBEU9Tj1zDBL3x6QP5T6KtantsIDbieZA8OwbS+EZmLS4
         i57vk8W4ArrdxO1H8eTKzOTPzjCWEL7I0Yml/cwVMSYEt/IZuDBLrWz5Zd5TGQ4xZccV
         5UEQ==
X-Gm-Message-State: ALyK8tI4xIK9kOHqq8dKo7jQ9iDvdOHjlPchdLTXlUswId0EL8U7kD42ry2MuUT3MFDA9GsXBrPajEKWzUw5cfLu
X-Received: by 10.66.245.1 with SMTP id xk1mr34321097pac.58.1468231903553;
 Mon, 11 Jul 2016 03:11:43 -0700 (PDT)
MIME-Version: 1.0
From: Cedric Buissart <cbuissar@redhat.com>
Date: Mon, 11 Jul 2016 12:11:43 +0200
Message-ID: <CAKG8Do6jzQUGa-hgGxa8oxYAhkz3qm8sMMXmbC8HuNJZKGqbLw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=047d7b11203b0f3c5b05375961d1
Subject: [oss-security] CVE-2016-5011: util-linux: Extended partition loop in MBR partition
 table leads to DoS

--047d7b11203b0f3c5b05375961d1
Content-Type: text/plain; charset=UTF-8

Hi,

This is to disclose the following CVE:

CVE-2016-5011: util-linux: Extended partition loop in MBR partition table
leads to DoS

Description :
The util-linux libblkid is vulnerable to a Denial of Service attack during
MSDOS partition table parsing, in the extended partition boot record (EBR).
If the next EBR starts at relative offset 0, parse_dos_extended() will loop
until running out of memory. An attacker could install a specially crafted
MSDOS partition table in a storage device and trick a user into using it.
This library is used, among others, by systemd-udevd daemon.

Upstream patch:
libblkid: ignore extended partition at zero offset
https://git.kernel.org/cgit/utils/util-linux/util-linux.git/commit/?id=7164a1c3

Impact: Low
CVSS3 scoring : AV:P/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H/E:H/RL:U/RC:C

Reported by: Christian Moch & Michael Gruhn

Best Regards,

-- 
Cedric Buissart,
Product Security

--047d7b11203b0f3c5b05375961d1--
