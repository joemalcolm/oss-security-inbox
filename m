X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1132" "Friday" "8" "May" "2020" "18:38:08" "+0800" "qing xu" "m1s5p6688@gmail.com" "<CAPmGPbh1WL1HejDqCMCQnqTrn1fnENs=XSXc4+HbN+tzYyYz6Q@mail.gmail.com>" "31" "[oss-security] Linux kernel: two buffer overflow in the marvell wifi driver" "^Date:" nil nil "5" "2020050810:38:08" "[oss-security] Linux kernel: two buffer overflow in the marvell wifi driver" (number mark "        m1s5p6688@gm May  8   31/1132  " thread-indent "\"[oss-security] Linux kernel: two buffer overflow in the marvell wifi driver\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel: two buffer overflow in the marvell wifi driver" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14245 invoked by uid 550); 8 May 2020 11:38:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17833 invoked from network); 8 May 2020 10:38:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=ZtE1Jbeo1Qo6jFzxM/lp31MNEhi69wBxU/W+R1D7KVg=;
        b=SRj9iQX4OE2512zhxpeCq5T6Q3sTTNNJLRqP39sF3ks7lF2oiD67vz+W/atwCjCS8B
         hg2hmmwd+kqtG5C4sbmVqOuqVleeNmYgeRz8l6uzmXKfuGHu0ES+3I+XkANvCVzg/bzS
         oW8HRo4eUpG0gMrVTAtdAa3PSagHZM/xWTNcPSQeU3oY16oGaOE9e7GnbatLYE8QoG4U
         HH27Qx6re5z1ansZ7e1E3SLH9bblY9JgfyFtb6zFI5YeSph/5PCkUw9xbfdCJF3k2aMs
         2EoPyk7U0RcL4HfdrbGPRpO2mdA4+vLuoUBWu9leQmBCEq7zzYHr1nOpaFnYrF8PbQNu
         ju2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ZtE1Jbeo1Qo6jFzxM/lp31MNEhi69wBxU/W+R1D7KVg=;
        b=IAdV1jQ/yI0vFPTEyGIQiVFKaDt4fw8cBta1/AACC/1JmXcnWz9Dz5T1Xj57uesG23
         DPUADSMMXVtas5HWyklDEuQc1zFJ1RFjQzKxfxuuMK+egJINXQ6bykKOhxhAErkEm/YJ
         E6bYtVTmFwoKX7TsjbjVjn8enMv7SdNS+E6zrhV0d0NmwLErzu57a+uVNLC3Ot9B/uXb
         jPebfQ39MGmw+pfe1TNWrJUN0KZ9IO1lbtM+5+SUSdh01xN0s5B5fvm3VAGzUDLDGUJt
         zSy7UgcCBM8EUTiA4S1rrZVu8Tx9D++LIxDtC3HALrBlfAPTom4+13NHLPn26LXs/Gij
         G+EQ==
X-Gm-Message-State: AGi0Pub2iVYfOkO5hwMQlnRI9iyUhTLXrRvQgrJWTvF6Cth07bN0F1u1
	Rvxunp6cG4SoQBIm2YldctilwJWZQgpDk+sGfJHpzmwBP3A=
X-Google-Smtp-Source: APiQypIq8ev3gx45FatB5YV68VlpQyA4bi3aQwNqVG6qTTpsAz2mFVSFRgLKybLMLnePZslsEUapk1JOG4iFiHQynNE=
X-Received: by 2002:a1f:4106:: with SMTP id o6mr1090028vka.52.1588934299507;
 Fri, 08 May 2020 03:38:19 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAPmGPbh1WL1HejDqCMCQnqTrn1fnENs=XSXc4+HbN+tzYyYz6Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000007e5fcb05a52098bc"
Date: Fri, 8 May 2020 18:38:08 +0800
From: qing xu <m1s5p6688@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux kernel: two buffer overflow in the marvell wifi driver
To: oss-security@lists.openwall.com

--0000000000007e5fcb05a52098bc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
There are two buffer overflows in marvell wifi chip driver in Linux kernel
which cause a denial of service(system crash) or possibly execute arbitrary
code.

Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
[1]CVE-2020-12653=EF=BC=9AThe mwifiex_cmd_append_vsie_tlv() in
drivers/net/wireless/marvell/mwifiex/scan.c calls memcpy() without checking
the destination size may trigger a buffer overflower, which a local user
could use to cause denial of service or the execution of arbitrary code.

[2]CVE-2020-12654=EF=BC=9Amwifiex_ret_wmm_get_status() in
drivers/net/wireless/marvell/mwifiex/wmm.c calls memcpy() without checking
the destination size.Since the source is given from remote AP which
contains illegal wmm elements , this may trigger a heap buffer overflow.

Patch
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
https://patchwork.kernel.org/patch/11315255/
https://patchwork.kernel.org/patch/11315253/

Credit
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
This issue was discovered by ADLab of Venustech

--0000000000007e5fcb05a52098bc--
