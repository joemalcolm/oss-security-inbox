X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["586" "Tuesday" "24" "March" "2015" "10:52:34" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.11.1503241045380.5202@wniryva>" "18" "[oss-security] CVE request Qemu: malicious PRDT flow from guest to host" nil nil nil "3" "2015032405:22:34" "[oss-security] CVE request Qemu: malicious PRDT flow from guest to host" (number mark "        ppandit@redh Mar 24   18/586   " thread-indent "\"[oss-security] CVE request Qemu: malicious PRDT flow from guest to host\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32014 invoked by uid 550); 24 Mar 2015 05:22:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31996 invoked from network); 24 Mar 2015 05:22:51 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.11.1503241045380.5202@wniryva>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Tue, 24 Mar 2015 10:52:34 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request Qemu: malicious PRDT flow from guest to host
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Due to inconsistent error checking, Qemu emulator allows malicious PRDT data 
to flow from a guest to the host's IDE or AHCI controllers. This could result 
in infinite loop or memory leakage on the host leading to unbounded resource 
consumption.

A privileged user inside guest could use this flaw to crash the system,
resulting in DoS.

Upstream fix:
-------------
   -> http://git.qemu.org/?p=qemu.git;a=commitdiff;h=3251bdcf1c67427d964517053c3d185b46e618e8

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
