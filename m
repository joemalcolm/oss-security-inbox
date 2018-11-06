X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4034" "Tuesday" "6" "November" "2018" "11:57:46" "+0530" "Dhiraj Mishra" "mishra.dhiraj95@gmail.com" "<CAG8b5tTY45qXBP3_sUcCwP5epnNVRjrgRB6Em2Zi00eePHX6wg@mail.gmail.com>" "118" "[oss-security] libiec61850 stack based buffer overflow - CVE-2018-18957" nil nil nil "11" "2018110606:27:46" "[oss-security] libiec61850 stack based buffer overflow - CVE-2018-18957" (number mark "U       mishra.dhira Nov  6  118/4034  " thread-indent "\"[oss-security] libiec61850 stack based buffer overflow - CVE-2018-18957\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29954 invoked by uid 550); 6 Nov 2018 10:49:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20395 invoked from network); 6 Nov 2018 06:28:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=/viMegWFIO8wpdHMgdb518KjWFLgDqyOH7zFkrmjYy0=;
        b=XXMZjtNFKG9U+sd2E5XwOwHEiNAzbH/f+treXOCtdCF1T7QN+n/V24RXkyaEa3H/iz
         wFZ7uobQLWUrScp+cUiBBIEP675GlN1ePI9SPGGFz5V1Fn2IoTO7pc8WhphJb9ru0Onv
         lwW5eoCHFjFIeUMlTSch2iiuKtEGk+ECo+MIFjS4L1XxoyTuTlOu8UV6hivqZjDqFg/m
         zSF4U5z4x/qISaAU648YK2zBnBh6nYVwHPaWtmFFo5dXJCK7z7tzoxpFRjhWpO49iNY6
         ZI/bk73+bTccPvFWMtm5fafBEJbEdZqNvt/Lj6kq0X0WB2R6TKkgrDt59iLj/gwWeOyk
         3Vgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=/viMegWFIO8wpdHMgdb518KjWFLgDqyOH7zFkrmjYy0=;
        b=UBzh4IJ38S0g9iVB0UwZcAYDL7msBwX/x41eFG6RLf5pg3tC+p+H4t0syXkAG4qI/d
         0z7t22xR68QtgenX2Bg/xhuKyrxVBBGCZFU5W8TnnBQsP2Bulr7IMZ99WD8TbD2zCALs
         3TJXoNIv4VerQy7L5r74taXG56RC3fKoMX3+jmwhMzK3ycTHkDJN86KNZxUiumkDtMYa
         fDqpKK9ZTYe++iHATH33ySkEb2M8W84BJ8CGuxbpLlUjK88i20BsT2mRddqROAeaVSWy
         Wg0aEAfC6Jzzq2k2OQguH97IHu1y+2V/IoBne6oQORCjT9Fr2I7UaLsxmbhK/q5Orw6k
         SZnA==
X-Gm-Message-State: AGRZ1gLZP4+PEKmZLB8w+if08xyZPVdCcFDRH5CP5ApLQ/vOjSHWt3pK
	yDFy61e93UwoDZVOt84fqEfDbatUazFTZbqC4gqMvrU9
X-Google-Smtp-Source: AJdET5dqHnOo3BC8EyA5hZLoepJTk60wvpGK6mh7l13OunFsJJ+xzWMqLVl7FY8j/Nkm4smaJlWZqw7XEJewdTq54VU=
X-Received: by 2002:a62:adb:: with SMTP id 88-v6mr11184192pfk.121.1541485677516;
 Mon, 05 Nov 2018 22:27:57 -0800 (PST)
MIME-Version: 1.0
From: Dhiraj Mishra <mishra.dhiraj95@gmail.com>
Date: Tue, 6 Nov 2018 11:57:46 +0530
Message-ID: <CAG8b5tTY45qXBP3_sUcCwP5epnNVRjrgRB6Em2Zi00eePHX6wg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000003c1d9c0579f91a90"
Subject: [oss-security] libiec61850 stack based buffer overflow - CVE-2018-18957

--0000000000003c1d9c0579f91a90
Content-Type: text/plain; charset="UTF-8"

## Summary

While fuzzing a stack based buffer overflow was found in libIEC61850 (the
open-source library for the IEC 61850 protocols) in prepareGooseBuffer in
goose/goose_publisher.c

## Steps to reproduce

$ ./goose_publisher_example crash_goosecr_stack_smash_overflow_aaaaaaaaa
Using interface crash_goosecr_stack_smash_overflow_aaaaaaaaa
*** stack smashing detected ***: <unknown> terminated
Aborted
$

## Debugging

(gdb) run crash_goosecr_stack_smash_overflow_aaaaaaaaa
Starting program:
/home/input0/Desktop/libiec61850/examples/goose_publisher/goose_publisher_example
crash_goosecr_stack_smash_overflow_aaaaaaaaa
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1".
Using interface crash_goosecr_stack_smash_overflow_aaaaaaaaa
*** stack smashing detected ***: <unknown> terminated

Program received signal SIGABRT, Aborted.
__GI_raise (sig=sig@entry=6) at ../sysdeps/unix/sysv/linux/raise.c:51
51    ../sysdeps/unix/sysv/linux/raise.c: No such file or directory.
(gdb) bt
#0  __GI_raise (sig=sig@entry=6) at ../sysdeps/unix/sysv/linux/raise.c:51
#1  0x00007ffff7805801 in __GI_abort () at abort.c:79
#2  0x00007ffff784e897 in __libc_message (action=action@entry=do_abort,
fmt=fmt@entry=0x7ffff797b988 "*** %s ***: %s terminated\n")
    at ../sysdeps/posix/libc_fatal.c:181
#3  0x00007ffff78f9cd1 in __GI___fortify_fail_abort
(need_backtrace=need_backtrace@entry=false,
    msg=msg@entry=0x7ffff797b966 "stack smashing detected") at
fortify_fail.c:33
#4  0x00007ffff78f9c92 in __stack_chk_fail () at stack_chk_fail.c:29
#5  0x000055555555a211 in Ethernet_getInterfaceMACAddress
(interfaceId=0x7fffffffdeee "crash_goosecr_stack_smash_overflow_aaaaaaaaa",
    addr=0x7fffffffd91c "k_smas\377\377") at
hal/ethernet/linux/ethernet_linux.c:170
#6  0x00005555555594ee in prepareGooseBuffer (self=0x5555557637d0,
parameters=0x7fffffffd9ac,
    interfaceID=0x7fffffffdeee
"crash_goosecr_stack_smash_overflow_aaaaaaaaa") at
src/goose/goose_publisher.c:168
#7  0x0000555555559293 in GoosePublisher_create (parameters=0x7fffffffd9ac,
    interfaceID=0x7fffffffdeee
"crash_goosecr_stack_smash_overflow_aaaaaaaaa") at
src/goose/goose_publisher.c:72
#8  0x0000555555555387 in main (argc=2, argv=0x7fffffffdaa8) at
goose_publisher_example.c:52
(gdb) i r
rax            0x0    0
rbx            0x7fffffffd6b0    140737488344752
rcx            0x7ffff7803e97    140737345765015
rdx            0x0    0
rsi            0x7fffffffd410    140737488344080
rdi            0x2    2
rbp            0x7fffffffd840    0x7fffffffd840
rsp            0x7fffffffd410    0x7fffffffd410
r8             0x0    0
r9             0x7fffffffd410    140737488344080
r10            0x8    8
r11            0x246    582
r12            0x7fffffffd6b0    140737488344752
r13            0x1000    4096
r14            0x0    0
r15            0x30    48
rip            0x7ffff7803e97    0x7ffff7803e97 <__GI_raise+199>
eflags         0x246    [ PF ZF IF ]
cs             0x33    51
ss             0x2b    43
ds             0x0    0
es             0x0    0
fs             0x0    0
gs             0x0    0
(gdb)

## src

Snip : src/goose/goose_publisher.c

{
    GoosePublisher self = (GoosePublisher) GLOBAL_CALLOC(1, sizeof(struct
sGoosePublisher));
    prepareGooseBuffer(self, parameters, interfaceID);
    self->timestamp = MmsValue_newUtcTimeByMsTime(Hal_getTimeInMs());
    GoosePublisher_reset(self);
    return self;
}

Snip: src/goose/goose_publisher.c

    if (interfaceID != NULL)
        Ethernet_getInterfaceMACAddress(interfaceID, srcAddr);
    else
Ethernet_getInterfaceMACAddress(CONFIG_ETHERNET_INTERFACE_ID, srcAddr);

## Reference

https://github.com/mz-automation/libiec61850/issues/83
http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-18957


Thank you
-- 
Regards

*Dhiraj Mishra.*GPG ID :  51720F56   |  Finger Print : 1F6A FC7B 05AA CF29
8C1C  ED65 3233 4D18 5172 0F56

--0000000000003c1d9c0579f91a90--
