X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6277" "Wednesday" "30" "March" "2016" "14:43:21" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdTHZPTK7+u1ANCU-T-czJ_vT_-VQp8CisHreKKPAPpazw@mail.gmail.com>" "113" "[oss-security] CVE request: Heap overflow in VLC 2.1.6 processing wav files" "^Date:" nil nil "3" "2016033017:43:21" "[oss-security] CVE request: Heap overflow in VLC 2.1.6 processing wav files" (number mark "U       gustavo.grie Mar 30  113/6277  " thread-indent "\"[oss-security] CVE request: Heap overflow in VLC 2.1.6 processing wav files\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26415 invoked by uid 550); 30 Mar 2016 17:43:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26394 invoked from network); 30 Mar 2016 17:43:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=o3THJCBdxufINpmsEDRtUeSJHMxwQvq39E121Dt5odA=;
        b=qy5RKHWSWL4og+emKlSwGffs+HMpxCJ2kaHlIwQ0rzl6g/rp59zSUCaFZgq4R1NjX0
         s9pxSdUH9tvjU9rfjjUbJ5G7xj3CrqTlZw5FqmgY9zus5WCTxY/qX7iFioNgQilWdlUu
         rzKul3/Gm/Xr+Tn1QxgZTnfLKaF7f+NxfhKwVcFhPO3YhUoag4rnCF1v88t0Komnycyi
         D8/etW8GhwhgygxjPGgh3f/kkpgerUokC0IlQYDmEPjlOWNlMTud5BZfGDEjE7JIU0V/
         0f5WEuMZMTElbVviFRTVrzEIfHYNJYsGeZRNGJNScil9wxU3RYQxcKJObsuQnRr/1Vgk
         ckJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=o3THJCBdxufINpmsEDRtUeSJHMxwQvq39E121Dt5odA=;
        b=WJMNWdBcvvI9w8qKu1J5YoMoaR3O0Q+XLrzNnegPMIRMxyk+gLl0hRfbHjNQbqlJzO
         z/7DDr5a4VQNcmRDCAuQrK0xtc/c2jyQjuSrS4fa5NaNAzSwc6DZ48HlEyflahKlOcox
         XlgKXH7aKj7MjLj6NvdxzEvZPKaswO6DZHCGbOqlTl4txXd/K+Pgz/FiFABJBo635rLN
         x3LZisLm2SLq6WEdXpoQD35T7wnjy90fF/0fD750aqB9NTmIL6wSfJGotJTx7bkwd6CW
         CkvJWZUk82N5weSusvw/1F+U/hDO/bj6yJie1Rm+EcutiUCc66c/aK1UcYUEfb+mLKVZ
         aX1A==
X-Gm-Message-State: AD7BkJJYNFl/H6ILrN5erwrCjYt+mHyGBjsdOShCVhRFDTbu1a9hOyQh4JzMPpceL1QHm3aER8EOdnYKK1sBng==
MIME-Version: 1.0
X-Received: by 10.25.147.202 with SMTP id v193mr4661065lfd.162.1459359801903;
 Wed, 30 Mar 2016 10:43:21 -0700 (PDT)
Message-ID: <CACn5sdTHZPTK7+u1ANCU-T-czJ_vT_-VQp8CisHreKKPAPpazw@mail.gmail.com>
Content-Type: multipart/mixed; boundary=001a1140225c980d36052f47aee9
Date: Wed, 30 Mar 2016 14:43:21 -0300
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Heap overflow in VLC 2.1.6 processing wav files
To: oss-security@lists.openwall.com

--001a1140225c980d36052f47aee9
Content-Type: multipart/alternative; boundary=001a1140225c980d2f052f47aee7

--001a1140225c980d2f052f47aee7
Content-Type: text/plain; charset=UTF-8

Hi,

We found a buffer overflow in the parsing and processing of wav files in
VLC (version 2.1.6-0). It was tested in Ubuntu 14.04 (x86_64), but it will
probably affects other versions as well. Fortunately, it seems to be fixed
in the last release of VLC. Here you can see the gdb stack trace:

__memcpy_sse2_unaligned () at
../sysdeps/x86_64/multiarch/memcpy-sse2-unaligned.S:116
116 ../sysdeps/x86_64/multiarch/memcpy-sse2-unaligned.S: No existe el
archivo o el directorio.
(gdb) bt
#0 __memcpy_sse2_unaligned () at
../sysdeps/x86_64/multiarch/memcpy-sse2-unaligned.S:116
#1 0x00007ffff71436e9 in memcpy (__len=4290773038, __src=<optimized out>,
__dest=<optimized out>) at /usr/include/x86_64-linux-gnu/bits/string3.h:51
#2 AStreamPeekStream (s=<optimized out>, pp_peek=0x7fffea824988,
i_read=4294967276) at input/stream.c:1115
#3 0x00007fffdebb42b3 in ChunkFind (p_demux=p_demux@entry=0x7fffd4c01828,
fcc=fcc@entry=0x7fffdebb576b "fmt ", pi_size=pi_size@entry=0x7fffea824a3c)
at wav.c:522
#4 0x00007fffdebb4761 in Open (p_this=0x7fffd4c01828) at wav.c:166
#5 0x00007ffff716d178 in module_load (obj=obj@entry=0x7fffd4c01828,
m=m@entry=0x7b92b0, init=init@entry=0x7ffff716d0d0 <generic_start>,
args=args@entry=0x7fffea824b50) at modules/modules.c:185
#6 0x00007ffff716d72e in vlc_module_load (obj=obj@entry=0x7fffd4c01828,
capability=capability@entry=0x7ffff71a4059 "demux", name=0x7ffff71a43bb "",
name@entry=0x7fffd4c018e0 "", strict=<optimized out>,
probe=probe@entry=0x7ffff716d0d0
<generic_start>) at modules/modules.c:277
#7 0x00007ffff716dc04 in module_need (obj=obj@entry=0x7fffd4c01828,
cap=cap@entry=0x7ffff71a4059 "demux", name=name@entry=0x7fffd4c018e0 "",
strict=<optimized out>) at modules/modules.c:366
#8 0x00007ffff712cfbe in demux_New (p_obj=p_obj@entry=0x7fffd00009b8,
p_parent_input=p_parent_input@entry=0x7fffd00009b8,
psz_access=<optimized out>, psz_demux=0x7ffff71b9ca5 "",
psz_location=<optimized out>, s=<optimized out>, out=0x7fffd4000aa0,
b_quick=false)
at input/demux.c:188
#9 0x00007ffff7139d5d in InputSourceInit (p_input=p_input@entry=0x7fffd00009b8,
in=<optimized out>, psz_mrl=<optimized out>,
psz_forced_demux=psz_forced_demux@entry=0x0,
b_in_can_fail=b_in_can_fail@entry=false) at input/input.c:2535
#10 0x00007ffff713ab6b in Init (p_input=p_input@entry=0x7fffd00009b8) at
input/input.c:1225
#11 0x00007ffff713e0e6 in Run (obj=0x7fffd00009b8) at input/input.c:521
#12 0x00007ffff79a9182 in start_thread (arg=0x7fffea825700) at
pthread_create.c:312
#13 0x00007ffff74d247d in clone () at
../sysdeps/unix/sysv/linux/x86_64/clone.S:111

It is evident that the memcpy operation has an abnormally large size
parameter (4290773038). Find attached a test case to reproduce it.

Regards,
Gustavo.

--001a1140225c980d2f052f47aee7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>We found a buffer overflow in the parsing and p=
rocessing of wav files in VLC (version 2.1.6-0). It was tested in Ubuntu 14=
.04 (x86_64), but it will probably affects other versions as well. Fortunat=
ely, it seems to be fixed in the last release of VLC. Here you can see the =
gdb stack trace:<br><br>__memcpy_sse2_unaligned () at ../sysdeps/x86_64/mul=
tiarch/memcpy-sse2-unaligned.S:116<br>116 ../sysdeps/x86_64/multiarch/memcp=
y-sse2-unaligned.S: No existe el archivo o el directorio.<br>(gdb) bt<br>#0=
 __memcpy_sse2_unaligned () at ../sysdeps/x86_64/multiarch/memcpy-sse2-unal=
igned.S:116<br>#1 0x00007ffff71436e9 in memcpy (__len=3D4290773038, __src=
=3D&lt;optimized out&gt;, __dest=3D&lt;optimized out&gt;) at /usr/include/x=
86_64-linux-gnu/bits/string3.h:51<br>#2 AStreamPeekStream (s=3D&lt;optimize=
d out&gt;, pp_peek=3D0x7fffea824988, i_read=3D4294967276) at input/stream.c=
:1115<br>#3 0x00007fffdebb42b3 in ChunkFind (p_demux=3Dp_demux@entry=3D0x7f=
ffd4c01828, fcc=3Dfcc@entry=3D0x7fffdebb576b &quot;fmt &quot;, pi_size=3Dpi=
_size@entry=3D0x7fffea824a3c)<br>at wav.c:522<br>#4 0x00007fffdebb4761 in O=
pen (p_this=3D0x7fffd4c01828) at wav.c:166<br>#5 0x00007ffff716d178 in modu=
le_load (obj=3Dobj@entry=3D0x7fffd4c01828, m=3Dm@entry=3D0x7b92b0, init=3Di=
nit@entry=3D0x7ffff716d0d0 &lt;generic_start&gt;, <br>args=3Dargs@entry=3D0=
x7fffea824b50) at modules/modules.c:185<br>#6 0x00007ffff716d72e in vlc_mod=
ule_load (obj=3Dobj@entry=3D0x7fffd4c01828, capability=3Dcapability@entry=
=3D0x7ffff71a4059 &quot;demux&quot;, name=3D0x7ffff71a43bb &quot;&quot;, <b=
r>name@entry=3D0x7fffd4c018e0 &quot;&quot;, strict=3D&lt;optimized out&gt;,=
 probe=3Dprobe@entry=3D0x7ffff716d0d0 &lt;generic_start&gt;) at modules/mod=
ules.c:277<br>#7 0x00007ffff716dc04 in module_need (obj=3Dobj@entry=3D0x7ff=
fd4c01828, cap=3Dcap@entry=3D0x7ffff71a4059 &quot;demux&quot;, name=3Dname@=
entry=3D0x7fffd4c018e0 &quot;&quot;, <br>strict=3D&lt;optimized out&gt;) at=
 modules/modules.c:366<br>#8 0x00007ffff712cfbe in demux_New (p_obj=3Dp_obj=
@entry=3D0x7fffd00009b8, p_parent_input=3Dp_parent_input@entry=3D0x7fffd000=
09b8, <br>psz_access=3D&lt;optimized out&gt;, psz_demux=3D0x7ffff71b9ca5 &q=
uot;&quot;, psz_location=3D&lt;optimized out&gt;, s=3D&lt;optimized out&gt;=
, out=3D0x7fffd4000aa0, b_quick=3Dfalse)<br>at input/demux.c:188<br>#9 0x00=
007ffff7139d5d in InputSourceInit (p_input=3Dp_input@entry=3D0x7fffd00009b8=
, in=3D&lt;optimized out&gt;, psz_mrl=3D&lt;optimized out&gt;, <br>psz_forc=
ed_demux=3Dpsz_forced_demux@entry=3D0x0, b_in_can_fail=3Db_in_can_fail@entr=
y=3Dfalse) at input/input.c:2535<br>#10 0x00007ffff713ab6b in Init (p_input=
=3Dp_input@entry=3D0x7fffd00009b8) at input/input.c:1225<br>#11 0x00007ffff=
713e0e6 in Run (obj=3D0x7fffd00009b8) at input/input.c:521<br>#12 0x00007ff=
ff79a9182 in start_thread (arg=3D0x7fffea825700) at pthread_create.c:312<br=
>#13 0x00007ffff74d247d in clone () at ../sysdeps/unix/sysv/linux/x86_64/cl=
one.S:111<br><br>It is evident that the memcpy operation has an abnormally =
large size parameter (4290773038). Find attached a test case to reproduce i=
t.<br><br>Regards,<br>Gustavo.</div>

--001a1140225c980d2f052f47aee7--

--001a1140225c980d36052f47aee9--
