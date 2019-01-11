X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1496" "Friday" "11" "January" "2019" "23:44:16" "+0530" "Dhiraj Mishra" "mishra.dhiraj95@gmail.com" "<CAG8b5tSb+8moLaULqekrO3PASigOwJp_0eXwDn-Edg5p+60Bhw@mail.gmail.com>" "44" "[oss-security] NULL pointer dereference in lib60870 protocol" "^Date:" nil nil "1" "2019011118:14:16" "[oss-security] NULL pointer dereference in lib60870 protocol" (number mark "        mishra.dhira Jan 11   44/1496  " thread-indent "\"[oss-security] NULL pointer dereference in lib60870 protocol\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5935 invoked by uid 550); 11 Jan 2019 18:20:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28060 invoked from network); 11 Jan 2019 18:14:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=fXCqjdCvefRJ+m1YddLrK9DmIfROrqSzsaVXAC1cs4Q=;
        b=CYmCnBUrk8l+rC2xt0nFHeRCy5kQquFp3gLsMC9WosurWxhwU2/ih45asK8xpCnWUT
         5TlmHwgDV84KfEo/cMfozU13jcfStVhBiijbD/G8YX92jlEvtdD+sBKmwue5YaHkPj5U
         6LHIbCFT/RCFrAUAPXVxIqzuG5AKHuZe7qv7EaqFqhrSOIkuDNcMdmp2rpPDrAyGZ+pC
         7w7vOOHkuyLVgFeELT243FAqedTc7I/KGR82jHa6dhGqxjasBEaS9I8dgBjLPH0t6sRX
         H7OU1mcG9ohzYA89YavR0QgMFWzUhpLo2GbpVOg2STWXXl8or5HNWCBtvEWohsnTnspo
         s8jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=fXCqjdCvefRJ+m1YddLrK9DmIfROrqSzsaVXAC1cs4Q=;
        b=N2hilKR5IB1Ppa5LuqamwUp61rJe4b7XudFde+H4SH+UWfuO+RdoN32n8eNgC3ISUZ
         pzSaNBt3W6nekCsdgdvm/IiUHMtH49toN+IXcAu/SNhS2OAUSqD4EcowaWGkWWT57q92
         FsJN0ooxZc3owkyejnP6pcmGzut1B0lHCEJwbp4L1jUtY3kENqkxmsl94whh194frFYN
         WjTZsJl7AELnlv/ziOsNM504iz1IuOCwEW/C5YGFajwPalfAhxIfW7WWtcFRGG/E2UW1
         SxrhsUAob+CzEYSamR19jpLbdMOHqUc7ZrbF2Z+b5rwhAdl7jiAPCO6TF/ZJLmZCrbne
         W4pA==
X-Gm-Message-State: AJcUukd6tTY8Ffo9G+X98Sa6obAL6pZjJkdtit+Z/SteBbY3p4/WWubB
	EWycmqL5e9gKNGgsppFYGEL+b56RAaVX1L6QcP7TmOg0
X-Google-Smtp-Source: ALg8bN5x48nmQlbAJTCRkyiKtYlfBJBg0UAZpXzL5Am/PrVarQhD40CYCPH4OPneFlNMCdzHyMaz5xTK4A+0CWINcKk=
X-Received: by 2002:a62:1c86:: with SMTP id c128mr16245342pfc.54.1547230467241;
 Fri, 11 Jan 2019 10:14:27 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAG8b5tSb+8moLaULqekrO3PASigOwJp_0eXwDn-Edg5p+60Bhw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000062bb14057f32aa14"
Date: Fri, 11 Jan 2019 23:44:16 +0530
From: Dhiraj Mishra <mishra.dhiraj95@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] NULL pointer dereference in lib60870 protocol
To: oss-security@lists.openwall.com

--00000000000062bb14057f32aa14
Content-Type: text/plain; charset="UTF-8"

Hi List,

## Summary:
An issue was discovered in lib60870 2.1.1. LinkLayer_setAddress in
link_layer/link_layer.c has a NULL pointer dereference.

Snip code from link_layer.c#L142:
LinkLayer_setAddress(LinkLayer self, int address)
{
    self->address = address;
}
## BT:

==5832==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc
0x55eb02eed6a2 bp 0x7ffc3b237e30 sp 0x7ffc3b237e20 T0)
==5832==The signal is caused by a READ memory access.
==5832==Hint: address points to the zero page.
    #0 0x55eb02eed6a1 in LinkLayer_setAddress
/home/input0/Desktop/lib60870/lib60870-C/src/iec60870/link_layer/link_layer.c:142
    #1 0x55eb02eeab30 in CS101_Master_setOwnAddress
/home/input0/Desktop/lib60870/lib60870-C/src/iec60870/cs101/cs101_master.c:311
    #2 0x55eb02ec4601 in main
/home/input0/Desktop/lib60870/lib60870-C/examples/cs101_master_balanced/master_example.c:127
    #3 0x7fb921c52b96 in __libc_start_main
(/lib/x86_64-linux-gnu/libc.so.6+0x21b96)
    #4 0x55eb02ec40f9 in _start
(/home/input0/Desktop/lib60870/lib60870-C/build/examples/cs101_master_balanced/cs101_master_balanced+0x120f9)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV
/home/input0/Desktop/lib60870/lib60870-C/src/iec60870/link_layer/link_layer.c:142
in LinkLayer_setAddress
==5832==ABORTING

Later CVE-2019-6137 was assigned to this.


Thank you
@mishradhiraj_

--00000000000062bb14057f32aa14--
