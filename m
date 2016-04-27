X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["823" "Wednesday" "27" "April" "2016" "11:53:10" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1604271151190.13938@wniryva>" "22" "Re: [oss-security] CVE Request: Out-of-bands write issue found in qemu" nil nil nil "4" "2016042706:23:10" "[oss-security] CVE Request: Out-of-bands write issue found in qemu" (number mark "U       ppandit@redh Apr 27   22/823   " thread-indent "\"Re: [oss-security] CVE Request: Out-of-bands write issue found in qemu\"\n") "<143C0AFC63FC204CB0C55BB88F3A8ABBE376A3@EX01.corp.qihoo.net>" ("<143C0AFC63FC204CB0C55BB88F3A8ABBE376A3@EX01.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13758 invoked by uid 550); 27 Apr 2016 06:23:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13737 invoked from network); 27 Apr 2016 06:23:26 -0000
Date: Wed, 27 Apr 2016 11:53:10 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
cc: "cve-assign@mitre.org" <cve-assign@mitre.org>
In-Reply-To: <143C0AFC63FC204CB0C55BB88F3A8ABBE376A3@EX01.corp.qihoo.net>
Message-ID: <alpine.LFD.2.20.1604271151190.13938@wniryva>
References: <143C0AFC63FC204CB0C55BB88F3A8ABBE376A3@EX01.corp.qihoo.net>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="0-821756737-1461738194=:13938"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Subject: Re: [oss-security] CVE Request: Out-of-bands write issue found in
 qemu

--0-821756737-1461738194=:13938
Content-Type: text/plain; charset=gb2312
Content-Transfer-Encoding: 8BIT

+-- On Wed, 27 Apr 2016, ¿Ó«ø wrote --+
| The qemu has an out-of-bands bug in uart_write() function.
| 
| In uart_write() function from hw/char/cadence_uart.c, the °Æoffset°Ø isn°Øt 
| checked and after it is divided by 4 and used to index the °Ær°Ø array, it 
| will cause an out-of-bands memory write. The value can be controlled by 
| guest and can cause the qemu crash or code execution on host.
| 
| The patch is here:
| https://lists.nongnu.org/archive/html/qemu-devel/2016-04/msg02711.html

  Not sure if this should need a CVE, awaiting upstream confirmation on the 
same.

--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
--0-821756737-1461738194=:13938--
