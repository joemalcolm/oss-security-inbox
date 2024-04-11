Received: (qmail 29788 invoked by uid 550); 11 Apr 2024 13:44:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27701 invoked from network); 11 Apr 2024 08:33:09 -0000
Authentication-Results: mail.absynth.de;
	auth=pass smtp.auth=info@christopher-kunz.de smtp.mailfrom=info@christopher-kunz.de
Message-ID: <b701b525-0c42-4b3a-a1a3-0ea68e864fbe@christopher-kunz.de>
Date: Thu, 11 Apr 2024 10:32:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: "Dr. Christopher Kunz" <info@christopher-kunz.de>
To: oss-security@lists.openwall.com
References: <607d5716-128f-44c5-ab52-6dde4ca6e8a4@christopher-kunz.de>
Autocrypt: addr=info@christopher-kunz.de; keydata=
 xsDiBD3U55kRBADKaqmPY/RBZ0luAFvOsa2lqQN8qXEimlCrbe0+WWywWDYNO/0c5B1FhUt2
 heF12OV9u1ldDdynB/awdV3NYaoizce86XQzQGcPpIOlEgI9iTTc1FSP9zDkkljLMrMB8WGK
 Q8WH6yLT+BOTIoK/rMs9DEN0hcsxOZY1wTEzhOfewwCg/7fHkook6P1/O/iOG3k/r90Um98D
 /AvzlFtPaRn5qiCWjeopDW1RAJNLvWwKs1HHv8m1UOtMNisqObD3SuHn9lp4FfGAu7gaJoqI
 /l6Rk02dgmBq+gyV+qg8PYXMlhh0xEfEO/TPPjx+nZnDRvO59tOj0pg2GLpIvQtdlwow1Iq4
 r2XfHUk1b827GZGAg1+ckkkNSG24A/9l238stiojp+GYwpuYkGrxROSYX+0slzRc40DHjtrb
 Jidz2Usmilyvt5WA1iBmAKw3L2TLQKpLtxAkGWSrDfdnl38VrYGMEM6WVctY6TxrqzrQLhaw
 W+17goNN73S3uP3C0YrdVjZc5jl0xlfli4zP7HmxL1YyRlLQ22aVcdDmS80rQ2hyaXN0b3Bo
 ZXIgS3VueiA8aW5mb0BjaHJpc3RvcGhlci1rdW56LmRlPsJ4BBMRAgA4AhsDBgsJCAcDAgMV
 AgMDFgIBAh4BAheAFiEEyIKO0X3RkBHAiOpQXPou6zl6ysEFAmWdKLICGQEACgkQXPou6zl6
 ysEHsQCfeqMRH0HyzVzl6XyNrxXdi0kSacYAnjXCcViWthCxB04fgluoiFw7b02TzsFNBD3U
 55kQCAD2Qle3CH8IF3KiutapQvMF6PlTETlPtvFuuUs4INoBp1ajFOmPQFXz0AfGy0OplK33
 TGSGSfgMg71l6RfUodNQ+PVZX9x2Uk89PY3bzpnhV5JZzf24rnRPxfx2vIPFRzBhznzJZv8V
 +bv9kV7HAarTW56NoKVyOtQa8L9GAFgr5fSI/VhOSdvNILSd5JEHNmszbDgNRR0PfIizHHxb
 LY7288kjwEPwpVsYjY67VYy4XTjTNP18F1dDox0YbN4zISy1Kv884bEpQBgRjXyEpwpy1obE
 AxnIByl6ypUM2Zafq9AKUJsCRtMIPWakXUGfnHy9iUsiGSa6q6Jew1XpMgs7AAICB/97dSwj
 NNOvwX1CYynQFaXrajIBF9fSZcOJNZ5vh/+ejkl2nobkQicbI97dKYttanBaF4O//lPjNcbO
 iXkiqEI8FQPyp5I+KIkVy6MiNM09zd0qHVwlihok2JG5wSGXfUsXjk3iPsxIVhWZSrB2q0By
 Av95xcvUtxQl5cCGGqTxBIsGjiN4wkDS0FNXFH2hOuH5pCl+cbDdZmYTc1O+aeSygvLN76gs
 tBgDODp8p2Fiu7RL99SRLTIHdniSvOr/bm4BDRYY0D6P/MoZQydZPMmZAOv3qnOkPox/9e5/
 zP8cmLm08gbez8wjfl6Rl5OjngTIatupEWXZK022C2+LJBeFwkwEGBECAAwFAj3U55kFGwwA
 AAAACgkQXPou6zl6ysHXxgCgw8C3Y9WTlhK6j3KgyciAF6X+odsAnja8RhnAa3HRM8YZbeaW
 DC6HBdDe
In-Reply-To: <607d5716-128f-44c5-ab52-6dde4ca6e8a4@christopher-kunz.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] New Linux LPE via GSMIOC_SETCONF_DLCI?

FWIW,

on a freshly installed and fully updated default Debian 12 VM (from the 
current netinst iso), the first two exploits yield different results.

> PoC and writeup are here: 
> https://github.com/YuriiCrimson/ExploitGSM/tree/main

This, let's call it "Yurii's version", works as advertised:

$ ./ExploitGSM debian
kallsyms restricted, begin retvial kallsyms table
detected kernel path-> /boot/vmlinuz-6.1.0-18-amd64
detected compressed format -> xz
Uncompressed kernel size -> 65902908
successfully taken kernel!
begin try leak startup_xen!
startup_xen leaked address  -> ffffffff8c86f1c0
text leaked address         -> ffffffff8a800000
lockdep_map_size     -> 32
spinlock_t_size      -> 4
mutex_size           -> 32
gsm_mux_event_offset -> 56
Let go thread
We get root, spawn shell
root@debianexploitgsm:/root# id
uid=0(root) gid=0(root) groups=0(root)


> PoC: 
> https://github.com/jmpe4x/GSM_Linux_Kernel_LPE_Nday_Exploit/tree/main 

This one, however, segfaults. I recompiled it with debugging symbols and 
ran it through a quick gdb:

Reading symbols from ./ExploitGSM...
(gdb) run debian
Starting program: 
/home/absynth/GSM_Linux_Kernel_LPE_Nday_Exploit/ExploitGSM debian
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1".

Program received signal SIGSEGV, Segmentation fault.
0x00000000004324f7 in __strcmp_avx2 ()
(gdb) bt
#0  0x00000000004324f7 in __strcmp_avx2 ()
#1  0x0000000000401b5e in main (argc=2, argv=0x7fffffffe3f8) at 
/home/absynth/GSM_Linux_Kernel_LPE_Nday_Exploit/main.c:552
(gdb)

Line 552 is the kernel release check, so a fairly straightforward piece 
of code:

         if (strcmp(iter_kernel->os_name, argv[1]) || 
strcmp(iter_kernel->kernel, kernel_info.release))

I'm not a C developer, so I'm not too sure what goes wrong here, but I 
guess it's a simple fix.

With regards to Yurii's PoC, I'd say that this can indeed be classified 
as a working 0day LPE in the default configuration.

We don't have a CVE for this yet, do we?

Regards,

--cku

