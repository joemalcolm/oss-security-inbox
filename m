X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["480" "Friday" "31" "March" "2017" "14:03:09" "+0200" "Andrey Konovalov" "andreyknvl@google.com" "<CAAeHK+x6PmHr1jWD1MUiZx_Oj1R1gai3oXj03xbcfDe86uSjNA@mail.gmail.com>" "14" "[oss-security] CVE-2017-7308: Linux kernel: integer overflow in packet_set_ring" "^Date:" nil nil "3" "2017033112:03:09" "[oss-security] CVE-2017-7308: Linux kernel: integer overflow in packet_set_ring" (number mark "        andreyknvl@g Mar 31   14/480   " thread-indent "\"[oss-security] CVE-2017-7308: Linux kernel: integer overflow in packet_set_ring\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32337 invoked by uid 550); 31 Mar 2017 16:04:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28529 invoked from network); 31 Mar 2017 12:03:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=E6jFW8kKWrYZYIhbwqlBazwWqgkLg5bd2qnrVLi7Lcg=;
        b=c2khqtauesuJA0xJpP122JyjgZHd7fXhXsDLmJr2eVtFitmL1fR38M+RhttaAmEQU9
         HGticVtVkl74LZYDc1Kvto1ymu8vWQMek+JH8UC0LPV/r0aoeKxWig8Gbc1Xm4MrFF0D
         yFV+QmoMEQBY0QLmk3FwPE28BNy386HZ8ELs0HfAFHk4tT6Axi+3rBacw+dXz7YmtSjt
         A2cdPEu6afuRtc44ZM0shar1Xrj8OwVD/V8RPzvZu7+oBId/VXLM42Gx1lM1rafS0bkF
         BsP20MGbjPpTcR/OEIWuzfvmhOizzhkeKVKH+rt4UfQRKxjfMiOSjox2/bgd3P2SbTr0
         xQyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=E6jFW8kKWrYZYIhbwqlBazwWqgkLg5bd2qnrVLi7Lcg=;
        b=MXm9K/8CA5/uAv9AGKSv6vHWS4hL1n5GF5vO9BgBLH+iUNZdOIJhNuMNhd39ISgIbh
         MxMIALvQMRrMtLjgDc3FXeU9uucZJT1/Lp7ge+nxF+YzDbOuJtEiuN1haDMnPm5eeiyp
         ap9GAe5JMi5SC6h2s13VJ8hABpQcrRtl7KvZnri7JjsfM9hlGvGbwdAE9umGI4iu5gT7
         /Kzza4P3fI1k8qkDlmrTHsBNmTr1dfK94q6ppOSnRxFnzxLMlJbbAb7zIJOAvVHqw00S
         5tZtLdBM0FMIENC06lFK4fT5xQSHzJddk1d/vHs7hnMzSAEM4jr7YuCn7KUXLPA+1i2n
         aoEQ==
X-Gm-Message-State: AFeK/H096wDsYemD6LzMRbgL23eEcVc+rFZ0DWmw38fPl2xq7eOrCK2ClJkrehLlXFTulWDWy2akdJiMUp4ij4ft
X-Received: by 10.98.212.7 with SMTP id a7mr2612067pfh.34.1490961789818; Fri,
 31 Mar 2017 05:03:09 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAAeHK+x6PmHr1jWD1MUiZx_Oj1R1gai3oXj03xbcfDe86uSjNA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Fri, 31 Mar 2017 14:03:09 +0200
From: Andrey Konovalov <andreyknvl@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-7308: Linux kernel: integer overflow in packet_set_ring
To: oss-security@lists.openwall.com

Hi,

CVE-2017-7308 [1] was assigned to the following issue:

The packet_set_ring function in net/packet/af_packet.c in the Linux
kernel through 4.10.6 does not properly validate certain block-size
data, which allows local users to cause a denial of service (overflow)
or possibly have unspecified other impact via crafted system calls.

The fix is sent upstream [2].

[1] http://www.cve.mitre.org/cgi-bin/cvename.cgi?name=2017-7308

[2] https://patchwork.ozlabs.org/patch/744811/
