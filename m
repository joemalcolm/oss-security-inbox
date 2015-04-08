X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["492" "Tuesday" "7" "April" "2015" "22:44:01" "-0400" "Marc Deslauriers" "marc.deslauriers@canonical.com" "<552495F1.6000709@canonical.com>" "20" "[oss-security] CVE Request: libX11: buffer overflow in  MakeBigReq macro" nil nil nil "4" "2015040802:44:01" "[oss-security] CVE Request: libX11: buffer overflow in MakeBigReq macro" (number mark "        marc.deslaur Apr  7   20/492   " thread-indent "\"[oss-security] CVE Request: libX11: buffer overflow in  MakeBigReq macro\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28152 invoked by uid 550); 8 Apr 2015 02:44:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28134 invoked from network); 8 Apr 2015 02:44:14 -0000
Message-ID: <552495F1.6000709@canonical.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
CC: cve-assign@mitre.org
Date: Tue, 07 Apr 2015 22:44:01 -0400
From: Marc Deslauriers <marc.deslauriers@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: libX11: buffer overflow in  MakeBigReq macro
To: oss-security@lists.openwall.com

Hello,

The MakeBigReq macro in libX11 contained a 4-byte buffer overflow:

https://bugs.freedesktop.org/show_bug.cgi?id=56508

Fixed by the following commit in libX11 1.5.99.901:

http://cgit.freedesktop.org/xorg/lib/libX11/commit/?id=39547d600a13713e15429f49768e54c3173c828d

Could a CVE please be assigned to this issue? (needs a CVE-2013)

Thanks,

Marc.

-- 
Marc Deslauriers
Ubuntu Security Engineer     | http://www.ubuntu.com/
Canonical Ltd.               | http://www.canonical.com/
