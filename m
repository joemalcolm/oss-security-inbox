X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["70094" "Saturday" "23" "September" "2017" "07:47:15" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170923054715.oco5the7pqdcefu2@eldamar.local>" "999" "[oss-security] Re: [CVE-2017-14266] tcprewrite Heap-Based Buffer Overflow" nil nil nil "9" "2017092305:47:15" "[oss-security] Re: [CVE-2017-14266] tcprewrite Heap-Based Buffer Overflow" (number mark "U       carnil@debia Sep 23  999/70094 " thread-indent "\"[oss-security] Re: [CVE-2017-14266] tcprewrite Heap-Based Buffer Overflow\"\n") "<15ea5d4a538-c0d-92d8@webjas-vab088.srv.aolmail.net>" ("<15ea5d4a538-c0d-92d8@webjas-vab088.srv.aolmail.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5816 invoked by uid 550); 23 Sep 2017 05:47:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5795 invoked from network); 23 Sep 2017 05:47:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JH3/aQdYvqIIs2Ps0pb+mXVo3JDzu81GpDZWvVgxwbE=;
        b=lz5T7AiezVCWdzwPZ0Vrlk7SosvPXpNYHot9uWIdDccuIhKp+c3Veh8ijm7UNF9kt+
         7hccTz72d10hUlNEp2wcpJR9hCMxPvVlFk6Jjw1dSRzPVjWzoRpV7tWsyQOCdPMiRsxM
         61ZH+RYy+ipc1o6B38llvzeC1ASu3vnMf7NF1oYhaJhmNHaQigPI2WiJXbrEjgGukTeg
         WMnmzPZRcZ+T8UzDd6gtszgHQOt0Wu1dWWdKRoHCrkCXEklSwTmtnXam0iv1dG5ahUKf
         52F4R1L/tato/QiY0Mt4gZYJNU6g+0vdCIdwd1Boax9nV+MzmaCsVYeIySgLMvm2Uvhb
         KwGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=JH3/aQdYvqIIs2Ps0pb+mXVo3JDzu81GpDZWvVgxwbE=;
        b=iz6VYXIFfQHhXXZ60JRizMUWtPxkAuQsUuyxA9xI1JIwN/H+3/xuCxpLFOzwbquYpZ
         BRbtEpOEO1O8fJFYAW79Mes0n9yMOPPW0Xc/6YJaSVN5IVtb24BttruTtnSQatJ/ZH/T
         8S6uPHfkXZ9clRVOhpjcLKi/Lqpr32nEHmTTQDs3uRhtnKKP9waR6+z0K8ONmUFV6dDB
         zXwWpr6XouGCthRMht+aDvlIIYkHYPx8/mfzkwo6z92lrrecG/I2YDLbJTMIvS8pMXxr
         bYNkS+dKe9qhnUaQUgWVcbOv8C97NduMIPXB2clNPpN4+GbeUXzRlzfubGdjPUT981oc
         53BA==
X-Gm-Message-State: AHPjjUhGXL8jmOOPuYafvBOUrop85Qz2i7xJuiua8VfoAIMImgeqlqsp
	V7y0OqvgHl2GB9qrQKrGv2k=
X-Google-Smtp-Source: AOwi7QCe77BazQi21rL7HVcDLrucdkys0eQDW4fIrLN6vD8cF7Z0lTE2KZRwFqXSuaUA1tguHJwA8w==
X-Received: by 10.223.179.10 with SMTP id j10mr1075622wrd.273.1506145639461;
        Fri, 22 Sep 2017 22:47:19 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 23 Sep 2017 07:47:15 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: Hosein Askari <hosein.askari@aol.com>
Cc: luciano@debian.org, team@security.debian.org,
	oss-security@lists.openwall.com
Message-ID: <20170923054715.oco5the7pqdcefu2@eldamar.local>
References: <15ea5d4a538-c0d-92d8@webjas-vab088.srv.aolmail.net>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="r5kjbcostkmbxb3b"
Content-Disposition: inline
In-Reply-To: <15ea5d4a538-c0d-92d8@webjas-vab088.srv.aolmail.net>
User-Agent: NeoMutt/20170609 (1.8.3)
Subject: [oss-security] Re: [CVE-2017-14266] tcprewrite Heap-Based Buffer Overflow

--r5kjbcostkmbxb3b
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi

On Thu, Sep 21, 2017 at 03:05:30PM -0400, Hosein Askari wrote:
> I uploaded the file,please check out these links:
> https://files.fm/u/dkrrjjj2
> 
> http://www.filedropper.com/tcp_1
> 
> https://expirebox.com/download/bcef1a6e3cb2877cd26ef60add1ddaee.html

Thanks for providing the tcp.zip (it looks the mail did not make it to
the list, the attachment was 6.4M so maybe it was rejected).

I'm attaching for list archiving purposed the base64 encoded tcp.pcap
gzip compressed file.

Now looking at an ASAN build, on i386:

sid-i386:/tmp/source-tcpreplay/tcpreplay-3.4.4# ./src/tcprewrite --portmap=21:2121 --infile=/tmp/tcp.pcap --outfile=/tmp/output.pcap
=================================================================
==31017==ERROR: AddressSanitizer: heap-buffer-overflow on address 0xb46107ff at pc 0xb726e32a bp 0xbf82fee8 sp 0xbf82fac0
WRITE of size 65549 at 0xb46107ff thread T0
    #0 0xb726e329  (/usr/lib/i386-linux-gnu/libasan.so.4+0x74329)
    #1 0x804e3b4 in rewrite_packets src/tcprewrite.c:267
    #2 0x804da06 in main src/tcprewrite.c:140
    #3 0xb6ff2285 in __libc_start_main (/lib/i386-linux-gnu/libc.so.6+0x18285)
    #4 0x804a060  (/tmp/source-tcpreplay/tcpreplay-3.4.4/src/tcprewrite+0x804a060)

0xb46107ff is located 0 bytes to the right of 65535-byte region [0xb4600800,0xb46107ff)
allocated by thread T0 here:
    #0 0xb72d8cd4 in malloc (/usr/lib/i386-linux-gnu/libasan.so.4+0xdecd4)
    #1 0x80734ea in _our_safe_malloc src/common/utils.c:57
    #2 0x804e22c in rewrite_packets src/tcprewrite.c:248
    #3 0x804da06 in main src/tcprewrite.c:140
    #4 0xb6ff2285 in __libc_start_main (/lib/i386-linux-gnu/libc.so.6+0x18285)

SUMMARY: AddressSanitizer: heap-buffer-overflow (/usr/lib/i386-linux-gnu/libasan.so.4+0x74329)
Shadow bytes around the buggy address:
  0x368c20a0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x368c20b0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x368c20c0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x368c20d0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x368c20e0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
=>0x368c20f0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00[07]
  0x368c2100: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x368c2110: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x368c2120: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x368c2130: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x368c2140: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
Shadow byte legend (one shadow byte represents 8 application bytes):
  Addressable:           00
  Partially addressable: 01 02 03 04 05 06 07
  Heap left redzone:       fa
  Freed heap region:       fd
  Stack left redzone:      f1
  Stack mid redzone:       f2
  Stack right redzone:     f3
  Stack after return:      f5
  Stack use after scope:   f8
  Global redzone:          f9
  Global init order:       f6
  Poisoned by user:        f7
  Container overflow:      fc
  Array cookie:            ac
  Intra object redzone:    bb
  ASan internal:           fe
  Left alloca redzone:     ca
  Right alloca redzone:    cb
==31017==ABORTING

In src/tcprewrite.c:

230 /** 
231  * Main loop to rewrite packets
232  */
233 int
234 rewrite_packets(tcpedit_t *tcpedit, pcap_t *pin, pcap_dumper_t *pout)
235 {
236     tcpr_dir_t cache_result = TCPR_DIR_C2S;     /* default to primary */
237     struct pcap_pkthdr pkthdr, *pkthdr_ptr;     /* packet header */
238     const u_char *pktconst = NULL;              /* packet from libpcap */
239     u_char **pktdata = NULL;
240     static u_char *pktdata_buff;
241     static char *frag = NULL;
242     COUNTER packetnum = 0;
243     int rcode, frag_len, i;
244 
245     pkthdr_ptr = &pkthdr;
246 
247     if (pktdata_buff == NULL)
248         pktdata_buff = (u_char *)safe_malloc(MAXPACKET);
249
250     pktdata = &pktdata_buff;
251
252     if (frag == NULL)
253         frag = (char *)safe_malloc(MAXPACKET);
254 
255     /* MAIN LOOP 
256      * Keep sending while we have packets or until
257      * we've sent enough packets
258      */
259     while ((pktconst = pcap_next(pin, pkthdr_ptr)) != NULL) {
260         packetnum++;
261         dbgx(2, "packet " COUNTER_SPEC " caplen %d", packetnum, pkthdr.caplen);
262 
263         /* 
264          * copy over the packet so we can pad it out if necessary and
265          * because pcap_next() returns a const ptr
266          */
267         memcpy(*pktdata, pktconst, pkthdr.caplen);
[...]

So in line 248 MAXPACKET with originally 

#define MAXPACKET 65535         /* was 16436 linux loopback, but maybe something is bigger then   
                                   linux loopback */

and on line 267 there is a memcpy to a destination which is too small.

Earlier there was CVE-2016-6160 which was assigned for:

https://bugs.debian.org/829350

with patch enforce-maxpacket.patch, wich addresses this issue as well.

I asked MITRE if CVE-2017-14266 should be rejected, since
CVE-2016-6160 exists, or if the two should be kept, for different
types of issues. 

Regards,
Salvatore

--r5kjbcostkmbxb3b
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="tcp.pcap.gz.base64"

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
AAAAAAAAAAD8lbtz21jvxLEtoTv5uLvqc8XQE8LcO37QFbqa1/58QwiF9IT28TNv33nMLx57waaJ
0bZpHZWZycNCsSWEygvTk078XldLWJdMWFdv4sDOI9OJS/r2Thw/M7Sn09Kpo9ML5cqS7MQ/+4Ut
PK4ltCYbp6d6jYmJnS+Ka/xHdo2r5sY12grl3Y8+CWsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADwl+zObWO9vziuJezYGOLZVzH0
hI3bd764K3Q13/n4hhAK6Rk/M7Q/NnPTxO07j/nF6IxC+Yrbk4eFYksIlRfuOQAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABPomWr+1aM9C8vrRhY2V8aGC6d07e8v7R0fWn+0HD/
wGDpuOGz+1YP3LltrPf4t7SEHRtDPPsqhp6wcfvOWV2hq/nOxzaEUEjP+Jmh/bGZmyZu33nML0Zn
FMpX3J48LBRbQqi8ODkv9MYDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAT6pl
q/tWjPQvL60YWNlfGhgundO3vL+0dH1p/tBw/8Bg6bjhs/tWD9y5bax3/VtawoLkGxZUDSiGnhC6
7vjvrtDVvHbnhhAK6Qnt42fevvOYXzzWMesDN7RN3VWZmzwsFFtCqMxKzgsLhSktj83cNJF+Pp3+
sVVTQzmZVq43ff4dd8Xp/11v+uj0ZPq8J6YvSKfPnt1Zmrl2+IRFJy8vzZnVOWtOR2tLestNyS3d
ydTuerfM3fmS9JYl7917y/iZoT294fad8wqjbYVyZWbmlgXpxEPeMjUsTiYsrjdxwR13x72/ld17
XuFPez9W6c5OPKqzs3Ti4Ko1I6WVA4P9pZGhodLKocEzZu3Z/hlvyd2+M25/eZ3tD2u0/XNzJ95x
T9z+4artD4vbH5RsX2diR/6Ofxt3vKzOjs9stOOzLpkaTkomnFRv4rzwmXTivGlPTDwrtPedW/lj
+hWbJ23ZUukMYdLkibsmT4pTT06fF5qa9ksnvzh/coiTb9nn1Z+18ZLNb0im7958cL3JlZP3Tp53
Sd67ED4bJ7dX7bw7mb6w6l2IU9OJN6cTiyGe6onFueH6dOLcQ+tOnF4oN3dkJ/pjDwCeetKiuC23
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
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/srduW2s9/Kx
qaE7+bi76nPF0BPC3N2f7gpdzcc+bUMIhfSE9vGVn3+oaftFP7p+0WjbtI7KzORhodgSQmVhetKJ
n0kmrksmrKs3cWDrL9KJwx/dO3F8ZWhPp6VTR6cXypUl2Yl/9gu7duvU0JpsnJ7qNSYmtv4yXWNk
v6o13hnXaCuUdz/6xBqL/uw1AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA+Et257ax3vf8x9SwY2OIZ1/F0BM2bt/6P12hq/n+v9sQ
QiE94ytD+0UPXL/o8w81bR+dUShfcXvysFBsCaGyKDkLvacAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAADAk2rZ6r4VI/3LSysGVvaXBoZL5/Qt7y8tXV+aPzTcPzBYOm747L7VA3du
G+u96ddTw46NIZ59FUNP2Lh966+6Qlfz/UdvCKGQnvGVof2iB65f9PmHmraPziiUr7g9eVgotoRQ
eWNyFnrjAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCfVstV9K0b6l5dWDKzs
Lw0Ml87pW95fWrq+NH9ouH9gsHTc8Nl9qwfu3DbW+61fTw0Lkm9YUDWgGHpC6Nr9ma7Q1Xzs/htC
KKQntI+v/PxDTdsv+vHx/3ND29RdlbnJw0KxJYTKG5OzsFCY0nLRA9cvSj+fTm+/Z1ooJ9PK9abP
3/3ZOD3Umz46PZk+74npa9Pps2d3lmauHT5h0cnLS3Nmdc6a09Hakt4yJ7mlO5naXe+WuVv/N71l
+Nt7bxlfGdrTG5KbfjzaVihXZmZuWZtO/HIycXEyYXG9iQt2X59OfOXjVXv/+E97P1bpzk48qrOz
dOLgqjUjpZUDg/2lkaGh0sqhwTNm7dn+P/K3/3Xc/lt1tv9jo+3vzp24+3PxXT+4avs/xu0PSrav
M3Fn/o6/iTtur7Pj7kY73v/YtHBSMuGkehPnhU+kE+cd+sTEwdB+2rGV+9Ov2Dxpy5ZKZwiTJk/c
NXlSnHpu+rzQ1LRfOvnR/MkhTr5ln1c/+KKvXNefTN+5+eB6kyvn7p1cfDzvXQifjJMPq9p5ZzJ9
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
tBDap8dz8Jrka6e1/T8BOqHbIFBmAA==

--r5kjbcostkmbxb3b
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="enforce-maxpacket.patch"

Subject: tcprewrite: Handle frames of 65535 octets size
Author: Christoph Biedl <debian.axhn@manchmal.in-ulm.de>
Date: Mon Jun 29 17:08:24 2015 +0200

diff --git a/src/defines.h.in b/src/defines.h.in
index 3a1bf1e..5468d14 100644
--- a/src/defines.h.in
+++ b/src/defines.h.in
@@ -104,7 +104,7 @@ typedef struct tcpr_speed_s tcpr_speed_t;
 #define DEFAULT_MTU 1500        /* Max Transmission Unit of standard ethernet
                                  * don't forget *frames* are MTU + L2 header! */
 
-#define MAXPACKET 65535         /* was 16436 linux loopback, but maybe something is bigger then 
+#define MAXPACKET 65549         /* was 16436 linux loopback, but maybe something is bigger then 
                                    linux loopback */
 
 #define MAX_SNAPLEN 65535       /* tell libpcap to capture the entire packet */
diff --git a/src/tcprewrite.c b/src/tcprewrite.c
index 90a6f2e..9c32a5e 100644
--- a/src/tcprewrite.c
+++ b/src/tcprewrite.c
@@ -253,6 +253,8 @@ rewrite_packets(tcpedit_t *tcpedit, pcap_t *pin, pcap_dumper_t *pout)
         packetnum++;
         dbgx(2, "packet " COUNTER_SPEC " caplen %d", packetnum, pkthdr.caplen);
 
+        if (pkthdr.caplen > MAXPACKET)
+            errx(-1, "Frame too big, caplen %d exceeds %d", pkthdr.caplen, MAXPACKET);
         /* 
          * copy over the packet so we can pad it out if necessary and
          * because pcap_next() returns a const ptr

--r5kjbcostkmbxb3b--
