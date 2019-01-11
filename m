X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2332" "Friday" "11" "January" "2019" "23:44:28" "+0530" "Dhiraj Mishra" "mishra.dhiraj95@gmail.com" "<CAG8b5tTFV3cziyLRuwDpV=DrhwQtOp6D_n=BH4_mYvLc3cKC+g@mail.gmail.com>" "66" "[oss-security] SEGV in libIEC61850 protocol" "^Date:" nil nil "1" "2019011118:14:28" "[oss-security] SEGV in libIEC61850 protocol" (number mark "        mishra.dhira Jan 11   66/2332  " thread-indent "\"[oss-security] SEGV in libIEC61850 protocol\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8072 invoked by uid 550); 11 Jan 2019 18:21:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28264 invoked from network); 11 Jan 2019 18:14:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=VpXkoKQ0zHcYs1IbaYaRm8kfmy1lm9Fuf3QATKEJ3AI=;
        b=RNVCdCyHjOFC6njFC/fKGaZJIJ3ctA64Wq+mkn2tABAaJkP0oZavPybjV8mMBz9GWS
         9RQSQDrdf2g16QDUR+KHjsRteNVjHCIc0PDRGqAuQ7jio/N8noMqnTApTm2oGjiJ/+FQ
         tfpSLlCLhCterS/qRo4gazpwq4sMmAgfPA+vykDSZ1FlWuFAeHt/axHjWE0r4D0Ehgh2
         4pIQGVT8mDwPN+9DIKTiif67QDwhGuMp+KdDVDgb4zCbY+sdGVo3ijmhw/E8Si24BmjT
         oRgFuoFOnQFOCmNbkqsOa4F2oA+dY2Mx133JSlUXVIOqO306lVp6XHUF7ODpzR38/hXC
         NXWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=VpXkoKQ0zHcYs1IbaYaRm8kfmy1lm9Fuf3QATKEJ3AI=;
        b=b27BojE/1KnB4IgoUfFI8Yjeoa/y/JWlL1AW3jcknU5oao/PucXa25nhZ2+G+xVjxI
         NT1EinrTcedqcnEfd0y/7MqeHRvKNXwKNhviBoBjQukFUUd9OAl+0bsv/Pi/1KCATr3L
         MgY8BW1nRvtP+KiFIBf/lI1XHf9bEzmtuLe1GA6ipKWfaP7nfQAbSjufhs++tN2ckNuG
         J3BgnbluHWm050HTAJN8xxI4is3W//Ssu2K1Y6EBA1i8jL37Y1Y5vzzC8OIunLlvNjGz
         t90jQdhv6/Cts6GwX9d1EAwj/I7wGj3X/zatKLcM98/BWyRN2gKwa2hASUbImawuQQqT
         tSpw==
X-Gm-Message-State: AJcUukdgTPIAH7sCHITokhxkKg7D8VBa/FFrbvqz9IE+x4JF0k4LRvSS
	AGJIQqfYCH/TyJzRwXekkEjgAkDB9rO/DNU9eRZVLKEb
X-Google-Smtp-Source: ALg8bN7deJhaiQa0UA2cTtZGCvNdZl+KBL+Gz5MQG0TXgCtsD+fRKuCLH7dsm6cOi4010YwTE1L9ZacZmcU03/F/5k4=
X-Received: by 2002:a62:e704:: with SMTP id s4mr15800210pfh.124.1547230479380;
 Fri, 11 Jan 2019 10:14:39 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAG8b5tTFV3cziyLRuwDpV=DrhwQtOp6D_n=BH4_mYvLc3cKC+g@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000001bf57b057f32ab69"
Date: Fri, 11 Jan 2019 23:44:28 +0530
From: Dhiraj Mishra <mishra.dhiraj95@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] SEGV in libIEC61850 protocol
To: oss-security@lists.openwall.com

--0000000000001bf57b057f32ab69
Content-Type: text/plain; charset="UTF-8"

Hi List,

## Summary:
An issue has been found in libIEC61850 v1.3.1. Ethernet_setProtocolFilter
in hal/ethernet/linux/ethernet_linux.c has a SEGV, as demonstrated by
sv_subscriber_example.c and sv_subscriber.c.

## Snip code from sv_subscriber.c#L186
        Thread_start(thread);
    }
    else {
        if (DEBUG_SV_SUBSCRIBER)
            printf("SV_SUBSCRIBER: Starting SV receiver failed for
interface %s\n", self->interfaceId);
    }
}

## Memory leak:

Using interface eth0
Error creating raw socket!
ASAN:DEADLYSIGNAL
==1403==ERROR: AddressSanitizer: SEGV on unknown address 0x00000000000a (pc
0x55b5675c1284 bp 0x7f92623fee30 sp 0x7f92623fee20 T1)
==1403==The signal is caused by a WRITE memory access.
==1403==Hint: address points to the zero page.
    #0 0x55b5675c1283 in Ethernet_setProtocolFilter
/home/input0/Desktop/libiec61850/hal/ethernet/linux/ethernet_linux.c:209
    #1 0x55b5675ba75f in SVReceiver_startThreadless
/home/input0/Desktop/libiec61850/src/sampled_values/sv_subscriber.c:232
    #2 0x55b5675ba3b7 in svReceiverLoop
/home/input0/Desktop/libiec61850/src/sampled_values/sv_subscriber.c:163
    #3 0x55b5675c1720 in destroyAutomaticThread
/home/input0/Desktop/libiec61850/hal/thread/linux/thread_linux.c:90
    #4 0x7f9265c976da in start_thread
(/lib/x86_64-linux-gnu/libpthread.so.0+0x76da)
    #5 0x7f92659c088e in __clone (/lib/x86_64-linux-gnu/libc.so.6+0x12188e)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV
/home/input0/Desktop/libiec61850/hal/ethernet/linux/ethernet_linux.c:209 in
Ethernet_setProtocolFilter
Thread T1 created by T0 here:
    #0 0x7f9265ee6d2f in __interceptor_pthread_create
(/usr/lib/x86_64-linux-gnu/libasan.so.4+0x37d2f)
    #1 0x55b5675c17ab in Thread_start
/home/input0/Desktop/libiec61850/hal/thread/linux/thread_linux.c:101
    #2 0x55b5675ba49a in SVReceiver_start
/home/input0/Desktop/libiec61850/src/sampled_values/sv_subscriber.c:186
    #3 0x55b5675b9eec in main
/home/input0/Desktop/libiec61850/examples/sv_subscriber/sv_subscriber_example.c:76
    #4 0x7f92658c0b96 in __libc_start_main
(/lib/x86_64-linux-gnu/libc.so.6+0x21b96)

==1403==ABORTING

Later CVE-2019-6136 was assigned to this.


Thank you
@mishradhiraj_

--0000000000001bf57b057f32ab69--
