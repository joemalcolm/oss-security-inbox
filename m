X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["410" "Saturday" "29" "August" "2015" "05:44:07" "+0200" "pcheng pcheng" "pcheng@gmx.com" "<trinity-116f3199-3a24-4fd2-926b-9e59b39c2a36-1440819846798@3capp-mailcom-lxa14>" "14" "[oss-security] CVE request: vorbis-tools: buffer overflow in aiff_open()" nil nil nil "8" "2015082903:44:07" "[oss-security] CVE request: vorbis-tools: buffer overflow in aiff_open()" (number mark "        pcheng@gmx.c Aug 29   14/410   " thread-indent "\"[oss-security] CVE request: vorbis-tools: buffer overflow in aiff_open()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23763 invoked by uid 550); 29 Aug 2015 03:44:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23736 invoked from network); 29 Aug 2015 03:44:21 -0000
MIME-Version: 1.0
Message-ID: <trinity-116f3199-3a24-4fd2-926b-9e59b39c2a36-1440819846798@3capp-mailcom-lxa14>
Content-Type: text/plain; charset=UTF-8
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K0:6jJMAVjmSjwpteCMAC3NAoSaBNkOFpr8DkGi9qsYU0D
 DPILYOB1eH7hok9PikbDv9FZCn2W+oF6c1zjNanABxCseYmAro
 trFtAtsvgeeOkaPGddi3b6DjMqlCy93Qgbfpw/KOztogtJqLfs
 sijs58txgWhz1Coe8aO7eQS95txgBmpRHlbiClvXr1SHHDPvIn
 /869Xbl/GxqyvI3Ey22UrUbHZvFPirmjVqbuDpy2PG5RDVFffp
 Fz/0NeXBtT2crD1ygUt168kgiy3K9dv5ErFLmuxxflYCz0AJxf
 p2afsVr3P9i/dWiFWbCzStcAyq3
X-UI-Out-Filterresults: notjunk:1;V01:K0:mILFn1F1Pks=:N0b04lw444MzY0wpMm7fIA
 y0+imP59xeG1Te/UwuhweqHgFO3JVhoUh45bptUy7JgsFnXyVn1rMfdfmGz9+gtaLkVPjIIOT
 0vDK8ysLn+5LGQ8cC/jgpRt3GJLdPrmDgd7vqrSCsXWb+BC5lUWufj0RLNSIiTK7JAJ0fiDNt
 0TlzwS1MVYxl4i1qlG53G3adhgm6r/QJqKsAM5jgNbJ4FtZfX48gAKzdr3Frq4ui6QVYwe6F0
 j1tUMudP9YNuhd/RXrjd1odSXp7E3CHlcOwdAxC4724ArtxsAo2ky5LA3oyEvDgD0gHE0Cjhj
 hamX9pYOn8N4EptSq9A4Y7nqe6Q0QdgIO5j30GWSxtvdOM7Sd3qQw2087FS3TGJnCuzWRRbU5
 RpxKFF19jD18an4jL3vkLSQuJ8XRTzz8dh0vbVU7Gm29PRUIFxtbjcum1vxGq/pUY8mEOpobQ
 Fl6DcaWCaA==
Date: Sat, 29 Aug 2015 05:44:07 +0200
From: "pcheng pcheng" <pcheng@gmx.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: vorbis-tools: buffer overflow in aiff_open()
To: oss-security@lists.openwall.com

Name : vorbis-tool
Affected Version: <= Revision 19495
URL : https://wiki.xiph.org/Vorbis-tools

Description :
An issue was found in oggenc/audio.c when it tries to open invalid AIFF file.

274    if(fread(buffer,1,len,in) < len)
The input buffer and length can be controlled by user indirectly via:

260    if(!find_aiff_chunk(in, "COMM", &len))

More info can be found at :
https://trac.xiph.org/ticket/2212
