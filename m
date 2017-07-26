X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["13433" "Wednesday" "26" "July" "2017" "16:39:07" "+0530" "Dhiru Kholia" "dhiru.kholia@gmail.com" "<20170726110907.GA14319@lonestar>" "408" "[oss-security] Four memory safety bugs in \"sipcrack\" package (2 CVE IDs)" "^Date:" nil nil "7" "2017072611:09:07" "[oss-security] Four memory safety bugs in \"sipcrack\" package (2 CVE IDs)" (number mark "        dhiru.kholia Jul 26  408/13433 " thread-indent "\"[oss-security] Four memory safety bugs in \"sipcrack\" package (2 CVE IDs)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28537 invoked by uid 550); 26 Jul 2017 11:22:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22028 invoked from network); 26 Jul 2017 11:09:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=zH1CbauO69u8cr8XKLpOqog4ez9E90BpMvjTxWY46yc=;
        b=diAWajbQLwYmexLPz2WkhEwH0kactbDdH5Q5nb48ROJP8BeQNcKKhwk8jHK2Xucj/j
         oJp3fwvFk/396E5NlFtKSxTIrwFTssqfnCD9f5uAJ9ik8FX3UgdvhrYIbLWS9GJS6XY1
         6Z+RyA48oJ9lApzTwH1lfJwCwuBCmijdIjvWKSh+HnZMjGIuwF6Lx1O3wq/T/Ald/IIe
         Fg3P/W6/lop8DoXqjSfrAymaUpO/xKLyOhvxJkHwS1CAPg7VViKZL0GbHvYx5LGEV/uf
         F6kVmiZzmY+5pdzEgWZAKPDvQ6/tXEXm1KwKvezi4XqsbFsbHMv6HjU9mTZ1lsfrxg3t
         C/ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=zH1CbauO69u8cr8XKLpOqog4ez9E90BpMvjTxWY46yc=;
        b=LORhuL90doL1VaA1br0cHJJfdsQUQHxpbdU/51+JY4CSu2r7ePCKdf66kEh4Ij1FLD
         Wz43P4I2GfhOJBtB3hLey23RnxWIIaqNF/KFaLVBUlDSOPZi6GUEaXJwkMiU8QYk/V5Z
         dmkBeeoUGLbGuu6qDDbO5dYZ06gpLlhrVMFkmVQELEhfZIs5umhDlIAJG2wSWUm5mZ28
         Wcedx0cuh2ljslVDmcC0R5uMWJ85CZ366utrexHoxKF3oEAtBp6PZPTED/5w6POiN2dh
         dfOE70yIcw6KEpg+ul45Wx7WdJbEZcLlr/hsntDUD4aPm3lLq31U6XI6rW/mES0ZBfBm
         /QVQ==
X-Gm-Message-State: AIVw113khB9UZsEcfxQEJQ0jTsald1x2kD3U4/XKIaIQIP8/7GAyks2F
	Yh9/BOnCb2lNG9NeYEc=
X-Received: by 10.28.168.84 with SMTP id r81mr442469wme.148.1501067354774;
        Wed, 26 Jul 2017 04:09:14 -0700 (PDT)
Message-ID: <20170726110907.GA14319@lonestar>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8t9RHnE3ZwKMSgU+"
Content-Disposition: inline
User-Agent: Mutt/1.8.3 (2017-05-23)
Date: Wed, 26 Jul 2017 16:39:07 +0530
From: Dhiru Kholia <dhiru.kholia@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Four memory safety bugs in "sipcrack" package (2 CVE IDs)
To: oss-security@lists.openwall.com

--8t9RHnE3ZwKMSgU+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Summary
-------

This report describes four memory safety bugs in the sipcrack software package
as shipped with Debian. Since these bugs can be triggered remotely, they should
potentially be considered as security bugs.

The security impact of these bugs seems to be limited to a remote denial of
service (loss of intended functionality), either through sipdump segfault under
specific conditions due to invalid memory usage, or through memory exhaustion
due to the memory leaks in sipdump.

I found these bugs with the help of libFuzzer.


Steps to reproduce
------------------

https://packages.debian.org/sid/sipcrack

wget http://http.debian.net/debian/pool/main/s/sipcrack/sipcrack_0.2.orig.tar.gz
wget http://http.debian.net/debian/pool/main/s/sipcrack/sipcrack_0.2-2.diff.gz

To trigger these bugs, build sipcrack with Address Sanitizer (ASan) enabled.
To do this, add the "-fsanitize=address --ggdb" flags to "FLAGS" in Makefile
and also disable "strip" in Makefile.

After building sipcrack with "make", ensure that ASan is enabled.

$ ldd ./sipdump  | grep asan
	libasan.so.3 => /lib64/libasan.so.3 (0x00007fc7e85a5000)


Bug 1 and 2
-----------

$ ./sipdump -p minimized-from-e39ecbf0989dd3c763eda09a1e639901b219a62d /dev/null

...

* Using pcap file 'minimized-from-e39ecbf0989dd3c763eda09a1e639901b219a62d' for sniffing

==2233==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x60600000efaa at pc 0x000000404b7e bp 0x7ffddfaf7e10 sp 0x7ffddfaf7e00
WRITE of size 1 at 0x60600000efaa thread T0
    #0 0x404b7d in sniff_logins /fuzzing/sipcrack-0.2-orig/SIPdump.c:536
    #1 0x7f410d05d87c in pcap_offline_read (/lib64/libpcap.so.1+0x2187c)
    #2 0x7f410d04df6e in pcap_loop (/lib64/libpcap.so.1+0x11f6e)
    #3 0x401e8e in main /fuzzing/sipcrack-0.2-orig/SIPdump.c:216
    #4 0x7f410cc9a730 in __libc_start_main (/lib64/libc.so.6+0x20730)
    #5 0x4023f8 in _start (/fuzzing/sipcrack-0.2-orig/sipdump+0x4023f8)

0x60600000efaa is located 21 bytes to the right of 53-byte region [0x60600000ef60,0x60600000ef95)
allocated by thread T0 here:
    #0 0x7f410d346e70 in malloc (/lib64/libasan.so.3+0xc6e70)
    #1 0x7f410d05e2ef in pcap_check_header (/lib64/libpcap.so.1+0x222ef)

0. This heap-buffer-overflow can be triggered remotely over a network when
sipdump is run in live capture mode (-i option).

1. SIPdump.c:536 line executes "payload[size_payload] = 0x00" and this line has
an off-by-one memory write problem.

2. There is also a correctness problem with this line. The "packet" variable is
declared as "const unsigned char *packet" but the "payload" pointer tries to
write to this "const packet" variable on the same line (SIPdump.c:536).

3. For the same reproducer, "payload" is pointing to out-of-bounds memory after
"payload = (unsigned char *)(packet + SIZE_ETHERNET + size_ip + size_proto)"
line is executed. This leads to out-of-bounds memory read in the same function.

Here is a patch to fix both the off-by-one memory write problem, and
the out-of-bounds access problem,

diff --git a/SIPdump.c b/SIPdump.c
index 08a8712..f103b8a 100644
--- a/SIPdump.c
+++ b/SIPdump.c
@@ -485,7 +485,12 @@ static void sniff_logins(unsigned char *args,
   const struct udp_header *udp;
   unsigned char *payload;
   conn_t connection;
-  size_t size_ip=0, size_proto=0, size_payload=0;
+  size_t size_ip=0, size_proto=0;
+  unsigned char *payload_copy;
+  ssize_t size_payload=0;

   /* Get ethernet header */


@@ -533,12 +542,24 @@ static void sniff_logins(unsigned char *args,

   payload = (unsigned char *)(packet + SIZE_ETHERNET + size_ip + size_proto);
   size_payload = ntohs(ip->ip_len) - (size_ip + size_proto);
-  payload[size_payload] = 0x00;
+
+  /* Bounds checking */
+  if (size_payload < 0 || SIZE_ETHERNET + size_ip + size_proto + size_payload> header->caplen) {
+    return;
+  }

   /* If we have a payload send to payload and connection information to parser */

   if(size_payload > 0) {
-    parse_payload(&connection, payload, size_payload);
+    payload_copy = malloc(size_payload + 1);
+    if (!payload_copy) {
+      printf("malformed packet?, malloc call failed!\n");
+      return;
+    }
+    memcpy(payload_copy, payload, size_payload);
+    payload_copy[size_payload] = 0x00;
+    parse_payload(&connection, payload_copy, size_payload);
+    free(payload_copy);
   }

   return;

The Common Vulnerabilities and Exposures (CVE) project has assigned the ID
CVE-2017-11654 to this issue.

CVE ID: CVE-2017-11654 - memory safety issues in sipcrack

Summary: An out-of-bounds read and write flaw was found in the way sipcrack
handled SIP traffic. A remote attacker could potentially use this flaw to crash
the sipdump process under certain circumstances by generating specially crafted
SIP traffic.

Attack Vectors,

Network: processing crafted network traffic, Local: opening a crafted .pcap file.


Bug 3
-----

$ ./sipdump -p minimized-from-2ab2ad60c6bd7705eb4aafb3b7eddb264786928a /dev/null

...

=================================================================
==4179==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x60400000dffe at pc 0x000000404c75 bp 0x7fff43148ae0 sp 0x7fff43148ad0
READ of size 1 at 0x60400000dffe thread T0
    #0 0x404c74 in sniff_logins /fuzzing/sipcrack-0.2-orig/SIPdump.c:515
    #1 0x7fcef00fd87c in pcap_offline_read (/lib64/libpcap.so.1+0x2187c)
    #2 0x7fcef00edf6e in pcap_loop (/lib64/libpcap.so.1+0x11f6e)
    #3 0x401f1e in main /fuzzing/sipcrack-0.2-orig/SIPdump.c:216
    #4 0x7fceefd3a730 in __libc_start_main (/lib64/libc.so.6+0x20730)
    #5 0x402488 in _start (/fuzzing/sipcrack-0.2-orig/sipdump+0x402488)

0x60400000dffe is located 12 bytes to the right of 34-byte region [0x60400000dfd0,0x60400000dff2)
allocated by thread T0 here:
    #0 0x7fcef03e6e70 in malloc (/lib64/libasan.so.3+0xc6e70)
    #1 0x7fcef00fe2ef in pcap_check_header (/lib64/libpcap.so.1+0x222ef)


SIPdump.c:515 line is "size_proto = TH_OFF(tcp)*4". This out-of-bounds read
occurs because the program does not verify the actual packet length is enough
(header->caplen) before reading the packet data.

The following patch fixes this problem,

diff --git a/SIPdump.c b/SIPdump.c
index 08a8712..ec0663c 100644
--- a/SIPdump.c
+++ b/SIPdump.c
@@ -510,6 +516,8 @@ static void sniff_logins(unsigned char *args,
   switch(ip->ip_p)
   {
   case IPPROTO_TCP:
+    if (SIZE_ETHERNET + size_ip + sizeof(struct tcp_header) > header->caplen)
+      return;
     tcp = (struct tcp_header *)(packet + SIZE_ETHERNET + size_ip);
     size_proto = TH_OFF(tcp)*4;
     if (size_proto < 20) {

NOTE: "case IPPROTO_UDP" has a similar bug which needs to be fixed too.

I did not request a CVE ID for this bug. I recommend fixing this memory safety
bug though.


Memory leak bug
---------------

$ ./sipdump -p ./minimized-from-b19a95a3aca02c6fe6ddc4a995c8abdc4f88f095 /dev/null
...
* Using pcap file './minimized-from-b19a95a3aca02c6fe6ddc4a995c8abdc4f88f095' for sniffing

=================================================================
==6828==ERROR: LeakSanitizer: detected memory leaks

Direct leak of 80 byte(s) in 1 object(s) allocated from:
    #0 0x7fa4078c2220 in realloc (/lib64/libasan.so.3+0xc7220)
    #1 0x402782 in stringtoarray /fuzzing/sipcrack-0.2-orig/wrap.c:63


Here is a patch to fix this problem,

diff --git a/SIPcrack.c b/SIPcrack.c
index eb27b99..57f87ea 100644
--- a/SIPcrack.c
+++ b/SIPcrack.c
@@ -432,6 +432,7 @@ static int parse_sniffed_line(login_t *login, char *buffer)
   }

   /* Return */
+  free(lines);

   if(num_lines != 12)
     return -1;

diff --git a/SIPdump.c b/SIPdump.c
index 08a8712..c6fc14e 100644
--- a/SIPdump.c
+++ b/SIPdump.c
@@ -594,6 +610,7 @@ static int parse_sip_proto(char *out,

   if(error || (!found && lines[num_lines-1][0] == 0x00)) {
     free(lines[num_lines - 1]);
+    free(lines);
     return -1;
   }

@@ -601,6 +618,7 @@ static int parse_sip_proto(char *out,

   if(found) {
     free(lines[num_lines - 1]);
+    free(lines);
     return 1;
   }

@@ -609,6 +627,7 @@ static int parse_sip_proto(char *out,
   if(out_len - 1 < strlen(lines[num_lines - 1])) {
     debug(("Buffer too small for line, ignoring..."));
     free(lines[num_lines - 1]);
+    free(lines);
     return -1;
   }

@@ -617,6 +636,8 @@ static int parse_sip_proto(char *out,
   /* Free last line */
   free(lines[num_lines - 1]);

+  free(lines);
+
   return 0;
 }


The Common Vulnerabilities and Exposures (CVE) project has assigned the ID CVE-2017-11655 to this issue.

CVE ID: CVE-2017-11655 - memory leak in sipcrack

Summary: A memory leak was found in the way sipcrack handled processing of SIP
traffic. A remote attacker could potentially use this flaw to crash
long-running sipdump network sniffing sessions.

Vulnerability Type,
Memory leak leading to denial of service due to memory exhaustion, CWE-401

Attack Vectors,
Network: processing crafted network traffic, Local: opening a crafted .pcap file.

-- 
Dhiru

--8t9RHnE3ZwKMSgU+
Content-Type: application/octet-stream
Content-Disposition: attachment; filename=minimized-from-2ab2ad60c6bd7705eb4aafb3b7eddb264786928a
Content-Transfer-Encoding: base64

1MOyoQIABAAAAAAAAAARACIAAAABAAAAdYwxT5ZoDQBKAAAASgAAAAAaoIPZ
ZAAk6NfjCQgARQAAPNUxQABABuFtaW5pbWl6ZV9jX2ludGVhbHRlcOMBCApr
1rxjAHc8T9cbDABDAAAAQwAAAAAAAAAA

--8t9RHnE3ZwKMSgU+
Content-Type: application/octet-stream
Content-Disposition: attachment; filename=minimized-from-b19a95a3aca02c6fe6ddc4a995c8abdc4f88f095
Content-Transfer-Encoding: base64

1MOyoQIABP//AAAAAAAAAP//AAABAAAALG/cS6F2DgDWAQAA1gEAAAAhaofP
lgATzp94xggARQAByAAAQABAEQ6frBlpK6wZaSgTxBPEAbTVTk9QVElPTlMg
c2lwOjEwMEAxNzIuMjUuMTA1LjQwIFNJUC8yLjANClZpYTogU0lQLzIuMC9V
RFAgMTI3LjAuMS4xOjUwNjA7YnJhbmNoPXo5aEc0YkstMTQ1MzgwOTY5OTty
cG9ydA0KQ29udGVudC1MZW5ndGg6IDANCkZyb206ICJzaXB2aWNpb3VzIjxz
aXA6MTAwQDEuMS4xLjE+OyB0YWc9NjE2MzMxMzkzNjM5MzIzODMxMzM2MzM0
MDEzMTMyMzAzMTM1MzUzMDM0MzMzNQ0KQWNjZXB0OiBhcHBsaWNhdGlvbi9z
ZHANClVzZXItQWdlbnQ6IFVOZnJpZW5kbHktc2Nhbm5lciAtIGZvciBkZW1v
IHB1cnBvc2VzDQpUbzogInNpcHZpY2lvdXMiPHNpcDoxMDBAMS4xLjEuMT4N
CkNvbnRhY3Q6IHNpcDoxMDBAMTI3LjAuMS4xOjUwNjANCkNTZXE6IDEgT1BU
SU9OUw0KQ2FsbC1JRDogNjExMjcwNzg3OTM0Njk5NTcxOTQxMzENYQAAAAAA
AAAAAABpbmVkR2V0PTBQ3wRcHndvcmtlcnMRAGz7uAAAaTR0

--8t9RHnE3ZwKMSgU+
Content-Type: application/octet-stream
Content-Disposition: attachment; filename=minimized-from-e39ecbf0989dd3c763eda09a1e639901b219a62d
Content-Transfer-Encoding: base64

1MOyoQIABAAA//8AAAARADUAAAABAAAAdYwxT5ZoDQBKAAAASgAAAAAaoIPZ
ZAAk6NfjCQgARQAAPNUxQABABuGgJefSUBQAAAAAAAAAAAAAB7Fr1CBeAAAA
AE8MlE6BUPr7pyXnUBQAAQAAAAAAAAAA

--8t9RHnE3ZwKMSgU+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="combined-fixes.diff"

diff --git a/SIPcrack.c b/SIPcrack.c
index eb27b99..57f87ea 100644
--- a/SIPcrack.c
+++ b/SIPcrack.c
@@ -432,6 +432,7 @@ static int parse_sniffed_line(login_t *login, char *buffer)
   }
 
   /* Return */
+  free(lines);
 
   if(num_lines != 12)
     return -1;
diff --git a/SIPdump.c b/SIPdump.c
index 08a8712..c6fc14e 100644
--- a/SIPdump.c
+++ b/SIPdump.c
@@ -485,7 +485,9 @@ static void sniff_logins(unsigned char *args,
   const struct udp_header *udp;
   unsigned char *payload;
   conn_t connection;
-  size_t size_ip=0, size_proto=0, size_payload=0;
+  size_t size_ip=0, size_proto=0;
+  unsigned char *payload_copy;
+  ssize_t size_payload=0;
 
   /* Get ethernet header */
 
@@ -510,6 +512,8 @@ static void sniff_logins(unsigned char *args,
   switch(ip->ip_p) 
   {
   case IPPROTO_TCP:
+    if (SIZE_ETHERNET + size_ip + sizeof(struct tcp_header) > header->caplen)
+      return;
     tcp = (struct tcp_header *)(packet + SIZE_ETHERNET + size_ip);
     size_proto = TH_OFF(tcp)*4;
     if (size_proto < 20) {
@@ -533,12 +537,24 @@ static void sniff_logins(unsigned char *args,
 
   payload = (unsigned char *)(packet + SIZE_ETHERNET + size_ip + size_proto);
   size_payload = ntohs(ip->ip_len) - (size_ip + size_proto);
-  payload[size_payload] = 0x00;
+
+  /* Bounds checking */
+  if (size_payload < 0 || SIZE_ETHERNET + size_ip + size_proto + size_payload> header->caplen) {
+    return;
+  }
 
   /* If we have a payload send to payload and connection information to parser */
 
   if(size_payload > 0) {
-    parse_payload(&connection, payload, size_payload);
+    payload_copy = malloc(size_payload + 1);
+    if (!payload_copy) {
+      printf("malformed packet?, malloc call failed!\n");
+      return;
+    }
+    memcpy(payload_copy, payload, size_payload);
+    payload_copy[size_payload] = 0x00;
+    parse_payload(&connection, payload_copy, size_payload);
+    free(payload_copy);
   }
   
   return;
@@ -594,6 +610,7 @@ static int parse_sip_proto(char *out,
 
   if(error || (!found && lines[num_lines-1][0] == 0x00)) {
     free(lines[num_lines - 1]);
+    free(lines);
     return -1;
   }
 
@@ -601,6 +618,7 @@ static int parse_sip_proto(char *out,
 
   if(found) {
     free(lines[num_lines - 1]);
+    free(lines);
     return 1;  
   }
 
@@ -609,6 +627,7 @@ static int parse_sip_proto(char *out,
   if(out_len - 1 < strlen(lines[num_lines - 1])) {
     debug(("Buffer too small for line, ignoring..."));
     free(lines[num_lines - 1]); 
+    free(lines);
     return -1;
   }
 
@@ -617,6 +636,8 @@ static int parse_sip_proto(char *out,
   /* Free last line */
   free(lines[num_lines - 1]);
 
+  free(lines);
+
   return 0;
 }
 

--8t9RHnE3ZwKMSgU+--
