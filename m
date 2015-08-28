X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1107" "Friday" "28" "August" "2015" "05:32:36" "+0200" "pcheng pcheng" "pcheng@gmx.com" "<trinity-ddfb0472-ffff-435b-9f9b-606ca08a9c4a-1440732755137@3capp-mailcom-lxa06>" "25" "[oss-security] CVE-2015-0852 [FreeImage] Integer overflow in PluginPCX.cpp" nil nil nil "8" "2015082803:32:36" "[oss-security] CVE-2015-0852 [FreeImage] Integer overflow in PluginPCX.cpp" (number mark "U       pcheng@gmx.c Aug 28   25/1107  " thread-indent "\"[oss-security] CVE-2015-0852 [FreeImage] Integer overflow in PluginPCX.cpp\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12069 invoked by uid 550); 28 Aug 2015 03:33:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11987 invoked from network); 28 Aug 2015 03:33:00 -0000
MIME-Version: 1.0
Message-ID: <trinity-ddfb0472-ffff-435b-9f9b-606ca08a9c4a-1440732755137@3capp-mailcom-lxa06>
From: "pcheng pcheng" <pcheng@gmx.com>
To: oss-security@lists.openwall.com
Cc: carnil@debian.org, ghedo@debian.org
Content-Type: text/plain; charset=UTF-8
Date: Fri, 28 Aug 2015 05:32:36 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K0:zc2ESDB+I8oZaOOLISEbKI4iP7Z1q2Jyw0c+92YMdA0
 KPH+J0XLOzHfjHL3yDAHtr4nkRdBylGc+j5ddFyA+d33eeUimU
 w5Jur89KOAuPLpVEklUhTbqV344eJrQ2E7dc3mFgeWwWMs6fBd
 LsUBfXPnN6s2q76psAPB/KwckOEb5btdFlFMu3JdacB+3nBe+d
 +Vw1Bnked/u9f/I0qcOoPgZIbffqC8Al2vVisvtLxBaST0kK/G
 exkgtZXbFWZ1NGwhFBvSkYCXNYi9c+Dq1P/Yw9sEWdMQWkfWGV
 BmtxDWXoWsuQA4Lzm8X9tRoVVaY
X-UI-Out-Filterresults: notjunk:1;V01:K0:kRdYH7s3u5I=:7jP1rEPacVNCYs/71+2l22
 ++46c+TCSLYLMzgI5Y3tLDCj9QcM0zT7AvjXYlBWmAwoVDkJ6UvmG0zsWs3DcEDw04JET1c0l
 q7wY7bpoql5UBa4oy7wS4azGI2bBpzLQjwj55xrZ/SIFF/09V/b5JwrZJyltTESXOrAlV8TDc
 bK4UPzyT0So2END1/1KD7wKG8tl6RKxVCYiTpJqHZXL/h/A2/qQ19U7/qnqJCtXwl1tjtyTG+
 M3Q9kLP2xELKXNlatyjELqr4OLxYf89HCQMcEDUUFahuaccm4+sizdsZcekhLnPnc84YPIVe/
 XBiV2/wF62kHymSYfEYJN593awSdhzBY8AaoN5X+ytSNFrIPh08nrIICLo5a+bd1RbCnEhOGe
 d+kUie1MVSYbG925nVnxAIlETtDEra3V6ASJLJFvuYlpwJVVcLHEJT+6J2al5t7h+WWmJizty
 XvTUSd/jig==
Subject: [oss-security] CVE-2015-0852 [FreeImage] Integer overflow in PluginPCX.cpp

The following bug was reported to upstream and Debian security team. CVE-2015-0852 was assigned by Debian security team.

Name : FreeImage
Affected Version: <= 3.17.0
URL : http://freeimage.sourceforge.net/

Description :
An integer overflow issue in the FreeImage project was reported and fixed recently.
Upstream fix: Revision 1.18 http://freeimage.cvs.sourceforge.net/viewvc/freeimage/FreeImage/Source/FreeImage/PluginPCX.cpp?view=log&pathrev=MAIN

Details:

The PluginPCX.cpp file(version 3.17.0) has:

371 unsigned width = header.window[2] - header.window[0] + 1;
372 unsigned height = header.window[3] - header.window[1] + 1;
373 unsigned bitcount = header.bpp * header.planes;

However, it's possible that header.window[2] < header.window[0], and also header.window[3] < header.window[1]. In this two cases, width and height can be overflowed. And this can lead further issue in the rest of the code. Take the following lines for example:

568 for (x = 0; x < width; x++) {
569 bits[x * 3 + FI_RGBA_RED] = pline[x];
570 }

The write operation on buffer bits can help an attacker to corrupt the heap.
