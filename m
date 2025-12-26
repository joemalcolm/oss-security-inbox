Received: (qmail 21576 invoked by uid 550); 26 Dec 2025 18:37:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32203 invoked from network); 26 Dec 2025 05:56:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766728581; x=1767333381; darn=lists.openwall.com;
        h=mime-version:user-agent:message-id:date:subject:to:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mngAPB1MjKsDhbDFggt5s2rpc0tUSCjFzANuXdyuC68=;
        b=JQAsz0mgYlEP6k/tXBQo/UBkMxF8QLTDPW7fxPs+v+b0ESn/G4xK0xmM3283UQOhPd
         piAq8TlZ8QWCsL6TWnDS+zw1qfKHAkB301hrlAKapnpid7qP5/OQ0epgUcWcX+nP8kv2
         A+93oz8ZxmVR+yYGMpsAinsEo9TWf81XqV+d7fMOR5f6PCqm+CcYrJmsbd/Dd2ApDqTr
         xJ38e7BgGeZErlDax5scflLxInQT3Ogp74Z8dGSYqAdmma4nbCZ81xAbvERj+kQqhHVO
         6ElI54jlY349zjxOChmp0H+sGV1jBq8h57B2XGCPE8oNRU9/yeE7/S1TCiDlPhUt2ftd
         Xj5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766728581; x=1767333381;
        h=mime-version:user-agent:message-id:date:subject:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mngAPB1MjKsDhbDFggt5s2rpc0tUSCjFzANuXdyuC68=;
        b=iw2oaFrs21nhNvGjp39BnX1CM+mp6wRHi4kU8iDIm27orZrC65N58d6Atl60kNfKwR
         oLruexrkvgNeIY0G3XPJPH2fR61NThI/hmKWiem+rwcTwlkopzPHLZ3LcumJKnL45tR7
         23gta9PZScnyuA/Gha5/l0OhttbKoLpaMJW/VGhPxHls+juwqFy2af84ftm0U+yMWR54
         M2pGNBkmoyovBuFCZES/xXQLpL8KvOKXr5lHKAXywJWgVGfluEdOBNx5zKhUbfNlOBt7
         ePnXqzSFUIPhnSyYuJB1Zvrc0jjFTLwpYd166RHqTcY05N4TheJ96e0KAMEYR2RhU67Q
         tA1A==
X-Gm-Message-State: AOJu0Yztwc/v/oykwD7aLA2GK5DneOsxMWLFG02Vn56K/rNqt29SN6ud
	8vzxl37ZXgLF2ThT52iYAbeXFu6JQEj0JQR5+qnJ93LAi7hACUBFRniL3yjrYw==
X-Gm-Gg: AY/fxX5uTqECfL9l9TIGxKV1Du8P1Z1BVQOFYPHKns0sf3YtAFT78UYcgYiPOevvOVY
	OZPguyRTLHcRrF5TEVdF9KNbXAzRtsdLlJV6+fcM8GzHzm+/u8Sb+z5x6JwpFzF/ZH2mFSZvGEg
	T36H0X3J8Kc/ex/ARLdgUrfsne64Q5w5PPKfTZ+5kQULnK6ib3MdzryZq11UErQqpBcd3204nS2
	iDh3dbCZudh6+Ue4Q1FopUgH5n8IgNAFQF7LbL8Eiw/JdRJPp2N4Hmn/QtktSF3V0FVw6oV0Qew
	rDTTWIbHWP10zItVj1h7WLPyQiWigxBHGZgUetB/Ro4TDt8/uMB78H2qwfcJjlrURJ6omM3VJAn
	BCFFOM7CSzTL0GOCGab52BESM6vwkIzl4Q6gqfuxo75mgHM3XIr9BkYJ77klFXbL6B4Ru
X-Google-Smtp-Source: AGHT+IG6ZORHjhB4MbAkSrcSElwGwAnOMDpUS0djiR6ga3sgRKpUu0UMGpun4Xh91bTxI1Pc6Jr4xg==
X-Received: by 2002:a05:6a20:548d:b0:366:5bda:1e87 with SMTP id adf61e73a8af0-376ab3de2d9mr20247223637.80.1766728581075;
        Thu, 25 Dec 2025 21:56:21 -0800 (PST)
From: Collin Funk <collin.funk1@gmail.com>
To: oss-security@lists.openwall.com
Date: Thu, 25 Dec 2025 21:56:19 -0800
Message-ID: <875x9tiy64.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] CVE-2018-25153 against GNU barcode seems bogus

The description of CVE-2018-25153 states [1]:

    GNU Barcode 0.99 contains a memory leak vulnerability in the command
    line processing function within cmdline.c. Attackers can exploit
    this vulnerability by providing specially crafted input that causes
    unfreed memory allocations, potentially leading to denial of service
    conditions.

It links to a page with the following description and "reproduction"
steps [2]:
    
    # Desc: GNU Barcode suffers from a memory leak vulnerability, which can be exploited
    # by malicious people to cause a DoS (Denial of Service). The vulnerability is
    # caused due to an error in the 'cmdline.c', which can be exploited to cause a
    # memory leak via a specially crafted file. The vulnerability is confirmed in
    # version 0.99. Other versions may also be affected.
    
    cmdline.c:
    
    128: int commandline(struct commandline *args, int argc, char **argv,
    129:                 char *errorhead)
    130: {
    131:     struct commandline *ptr;
    132:     char *getopt_desc = (char *)calloc(512, 1);
    133:     int desc_offset = 0;
    134:     int opt, retval;
    135:     char *value;

    lqwrm@metalgear:~/research/barcode-0.99$ ./barcode -b id:000034,sig:06,src:000000,op:havoc,rep:128
    [...]
    ==2183==ERROR: LeakSanitizer: detected memory leaks

    Direct leak of 512 byte(s) in 1 object(s) allocated from:
        #0 0x7fcb3aca179a in __interceptor_calloc (/usr/lib/x86_64-linux-gnu/libasan.so.2+0x9879a)
        #1 0x407be2 in commandline /home/lqwrm/research/barcode-0.99/cmdline.c:132
    
    Direct leak of 55 byte(s) in 1 object(s) allocated from:
        #0 0x7fcb3aca1602 in malloc (/usr/lib/x86_64-linux-gnu/libasan.so.2+0x98602)
        #1 0x7fcb3a8ca489 in __strdup (/lib/x86_64-linux-gnu/libc.so.6+0x8b489)
    
    SUMMARY: AddressSanitizer: 567 byte(s) leaked in 2 allocation(s).

I have never looked at GNU barcode previously. It took me a minute to
see that the referenced function "commandline" is called only once per
program invocation in main.c:

    $ find . -name '*.[ch]' | xargs grep 'commandline[[:space:]]*('
    ./cmdline.c:int commandline(struct commandline *args, int argc, char **argv,
    ./cmdline.h:extern int commandline(struct commandline *args,
    ./main.c:    retval = commandline(option_table, argc, argv, "Use: %s [options]\n");

Upon opening main.c you can see it is not in a loop and called directly
in the main function. It will never allocate and leak more than 512 bytes.

The strdup, which is not even mentioned in the "vulnerability"
description, can easily allocate more memory. It is called for every
'-b' option:

    $ yes  -- '-b id:000034,sig:06,src:000000,op:havoc,rep:128' \
        | head -n 512 | tr '\n' ' ' | valgrind barcode 2>&1 > /dev/null \
        | grep -F  'definitely lost'
    ==28596==    definitely lost: 25,282 bytes in 195 blocks

Even then you would hit command-line argument limits before you allocate
enough memory to cause problems.

I hope VulnCheck does not find out about the rest of GNU's software,
which often does not call free before exiting.

Collin

[1] https://nvd.nist.gov/vuln/detail/CVE-2018-25153
[2] https://www.exploit-db.com/exploits/44798
