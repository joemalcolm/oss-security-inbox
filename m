X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1451" "Friday" "18" "March" "2016" "15:28:11" "+0100" "=?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?=" "robert@swiecki.net" "<CAP145piPtZJb=PqZT6-JJudkfryeyU4YM03D4uFFEDa5rUFF5A@mail.gmail.com>" "31" "[oss-security] Re: AMD newest ucode 0x06000832 for Piledriver-based CPUs seems to behave in a problematic way" "^Date:" nil nil "3" "2016031814:28:11" "[oss-security] Re: AMD newest ucode 0x06000832 for Piledriver-based CPUs seems to behave in a problematic way" (number mark "        robert@swiec Mar 18   31/1451  " thread-indent "\"[oss-security] Re: AMD newest ucode 0x06000832 for Piledriver-based CPUs seems to behave in a problematic way\"\n") "<CAP145pjL_=W0C_3NvHxkJ2girfx3wS-7i-epRxwcmDmd7J3E1Q@mail.gmail.com>" ("<CAP145pjL_=W0C_3NvHxkJ2girfx3wS-7i-epRxwcmDmd7J3E1Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28668 invoked by uid 550); 18 Mar 2016 14:28:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28612 invoked from network); 18 Mar 2016 14:28:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=swiecki.net; s=google;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-transfer-encoding;
        bh=/RjI57hQiOExqk7T3L60dnoOWAMayNnwqDKGqdNPcdc=;
        b=C0tVDnNjPQPYjPOUptZuM2WlxCeaTToX9AfAG0xK1qyZ/zIxinZ2cR+2GDYyBGEi3z
         hY15eBDcqdlY4HF32Gsc4d2L7gZaZ/CrrCCPS1AQuxTZYHDXdzW0B0eMvQRm45UnAeCt
         bKBtuoRIpGRDB9iQ6YiSC6q3+SMGyOpCznu/E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-transfer-encoding;
        bh=/RjI57hQiOExqk7T3L60dnoOWAMayNnwqDKGqdNPcdc=;
        b=YOOguQoxTks71PtVXstM87w/IgAWfifs7Z4zjSGxu5v0OvRWtZzMqEoUY5qeX9Uvm5
         78pMGU6XoHu7ZyqDKjSJ4HbMqOyn7LBNQJkST//znUjteyYqI/plVI+bFuEHIwAgBJVL
         RlBQVPFpUXUU9djX2NNf7Indhou4vziOnizA5QehH/pPOgCjQGNGxXedIh2RUlUExT2B
         L/bePVp/sAvktryKSLLWhKi1y5Xs8IcrIT+q8q74A7PCRJxaH2hp4p+oHhA4NejjYhDs
         YRV8JDqCT6KQBaqxroDTWnfCjOmEm50qpdfIYtE9xPStmZWrV9AUpNHHzv0m/VL2q0bS
         cNxA==
X-Gm-Message-State: AD7BkJLANJJPhqEyyCR8+cSkSIA0dN/rM2Q24iTP/svCyKPUvCCJKJJQx7PZzTOlOFTF8XBltdFVlz7twrMYqg==
MIME-Version: 1.0
X-Received: by 10.194.123.35 with SMTP id lx3mr16188427wjb.132.1458311291141;
 Fri, 18 Mar 2016 07:28:11 -0700 (PDT)
In-Reply-To: <CAP145pjL_=W0C_3NvHxkJ2girfx3wS-7i-epRxwcmDmd7J3E1Q@mail.gmail.com>
References: <CAP145pjL_=W0C_3NvHxkJ2girfx3wS-7i-epRxwcmDmd7J3E1Q@mail.gmail.com>
Message-ID: <CAP145piPtZJb=PqZT6-JJudkfryeyU4YM03D4uFFEDa5rUFF5A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 18 Mar 2016 15:28:11 +0100
From: =?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?= <robert@swiecki.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: AMD newest ucode 0x06000832 for Piledriver-based CPUs seems to
 behave in a problematic way
To: oss-security@lists.openwall.com

2016-02-28 5:28 GMT+01:00 Robert =C5=9Awi=C4=99cki <robert@swiecki.net>:

> AMD newest public ucode 0x06000832 for Piledriver-based CPUs (newer
> AMD FX, and Opteron 3300/4300/6300 series) seems to be broken. Under
> certain conditions it allows unprivileged users running under qemu VMs
> to affect the host Linux kernel in a problematic manner: the CPU
> starts to behave in an erratic way, and it leads to CPU execution flow
> of the host kernel (the one running on bare metal) to be changed.

It seems that AMD (somewhat silently) released - in
https://lkml.org/lkml/2016/3/17/43 - a new microcode for 15th family
of AMD CPUs.

I applied this patch to the previous ucode, and got this -
http://alt.swiecki.net/.a/amd-ucode-20160316.tbz2 - which resulted in:

[1634167.526985] microcode: CPU0: new patch_level=3D0x0600084f
[1634167.560059] microcode: CPU2: new patch_level=3D0x0600084f
[1634167.584795] microcode: CPU4: new patch_level=3D0x0600084f
[1634167.609298] microcode: CPU6: new patch_level=3D0x0600084f

Quick testing suggests that bugs from 0x06000832 and 0x06000836 ucode
versions are gone. Unfortunately it's not published yet on
http://www.amd64.org/microcode.html nor the new README/errata is
available, so I have no more details on that, but given that AMD
promised new ucode in March fixing this problem - as per
http://www.theregister.co.uk/2016/03/06/amd_microcode_6000836_fix/ -
this might be it.

--=20
Robert =C5=9Awi=C4=99cki
