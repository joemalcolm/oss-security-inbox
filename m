X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["828" "Thursday" "20" "August" "2015" "00:50:19" "+0200" "Pengsu Cheng" "pcheng@gmx.com" "<trinity-05553c71-f016-46b0-90e9-bc7adeb72553-1440024619340@3capp-mailcom-lxa05>" "21" "[oss-security] CVE request: libgpf: use-after-free vulnerability in Decoder.cpp" nil nil nil "8" "2015081922:50:19" "[oss-security] CVE request: libgpf: use-after-free vulnerability in Decoder.cpp" (number mark "U       pcheng@gmx.c Aug 20   21/828   " thread-indent "\"[oss-security] CVE request: libgpf: use-after-free vulnerability in Decoder.cpp\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22387 invoked by uid 550); 19 Aug 2015 23:04:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11277 invoked from network); 19 Aug 2015 22:50:33 -0000
MIME-Version: 1.0
Message-ID: <trinity-05553c71-f016-46b0-90e9-bc7adeb72553-1440024619340@3capp-mailcom-lxa05>
From: "Pengsu Cheng" <pcheng@gmx.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Date: Thu, 20 Aug 2015 00:50:19 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K0:RTEVSMXE9n9KwqE5IFaQkyR4gt+3nSqY0odFtFciCjn
 9ztpwgLQZKAHxNFqTCAZUAZTawc2TCQCkhqnS4AvUvPkJ5xfmN
 RF0hUU+cupja/IathKZEd7NcY92y/cajyNsez159JuAKf8jQl6
 +LE+bBkuEYAipTSs7U2ewySVi5vTFauaqfmnWuLQp5/n4Sdks9
 H2Zrw27bmE2PXPbTOWP+fl69ScdCFhyp6ZdzfnuHIGW/yS1Cem
 XcjCeD4YVUTF4TTbrooG3/VLXyWpVmsg+xVkdLDl/QKlYkhGVO
 JNWnMfOos4Wq7ZdMWB+sc4/8prD
X-UI-Out-Filterresults: notjunk:1;V01:K0:mM/byoHN5sQ=:5iiSr1B0Y8p1lwqn+EnbbS
 xCDvh/jNJoH0+xqB+3bWU9/sYWIjb5dhD2zAfEx1RE0ANpg5oFHTR2H6+5eHKZdwYRAd77vcw
 s5Hq59t1JLwMcHTdT3mrnmwrHDfaNcxthy3khLqNGApaBez4optV/Efr/t4amqhUgpGkm96dx
 6C4hlTQIfd427msngc2AN75/lDGzju5+vKM4Hx5qExomQcAL0DnfTmZwYhkV4Bsh0m/9fTPPK
 w0HTiF0DlqroJ7nDczXj3odHo4ZoxuFBt9ww1Se1y73BBHabQiurWVaRUECcPo7tDzwqxf2OP
 fawWwE7tttno54dDDH7Lx/WkJ3ZOS+WPk2uO5dyPmu6HjR/9A4AGpDevqjLcZIsG/p2lt4ILD
 dmviIIy2jKnbkRRg4lRluNYXvpKEyB0rOvjkMRQ8ufc0xTrr3FPR14MbuqjBNL6xdyiontLt9
 5VFOdfmi8g==
Subject: [oss-security] CVE request: libgpf: use-after-free vulnerability in Decoder.cpp

Name : libpgf
Affected Version: <= 7.15.25
URL : http://www.libpgf.org
Summary : PGF (Progressive Graphics File) library
Description :
libPGF contains an implementation of the Progressive Graphics File (PGF)
which is a new image file format, that is based on a discrete, fast
wavelet transform with progressive coding features. PGF can be used
for lossless and lossy compression.

An use-after-free issue in Decoder.cpp was reported to upstream. The problem is due to lack of validation of ColorTableSize. 

The bug was fixed by upstream:
https://sourceforge.net/p/libpgf/code/147/
https://sourceforge.net/p/libpgf/code/148/

References:

[1] Bug #1251749 - Use-after-free bug in Decoder.cpp
https://bugzilla.redhat.com/show_bug.cgi?id=1251749
[2] https://admin.fedoraproject.org/updates/FEDORA-2015-13336/libpgf-6.14.12-4.fc23
