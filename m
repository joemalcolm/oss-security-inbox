X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["677" "Monday" "20" "April" "2015" "15:34:06" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.11.1504201531450.24320@wniryva>" "21" "Re: [oss-security] CVE request Qemu: malicious PRDT flow from guest to host" nil nil nil "4" "2015042010:04:06" "[oss-security] CVE request Qemu: malicious PRDT flow from guest to host" (number mark "        ppandit@redh Apr 20   21/677   " thread-indent "\"Re: [oss-security] CVE request Qemu: malicious PRDT flow from guest to host\"\n") "<alpine.LFD.2.11.1503241045380.5202@wniryva>" ("<alpine.LFD.2.11.1503241045380.5202@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14287 invoked by uid 550); 20 Apr 2015 10:04:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14266 invoked from network); 20 Apr 2015 10:04:26 -0000
X-X-Sender: pjp@javelin
In-Reply-To: <alpine.LFD.2.11.1503241045380.5202@wniryva>
Message-ID: <alpine.LFD.2.11.1504201531450.24320@wniryva>
References: <alpine.LFD.2.11.1503241045380.5202@wniryva>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
cc: oss security list <oss-security@lists.openwall.com>
Date: Mon, 20 Apr 2015 15:34:06 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request Qemu: malicious PRDT flow from guest
 to host
To: cve-assign@mitre.org

  Hi,

+-- On Tue, 24 Mar 2015, P J P wrote --+
| Due to inconsistent error checking, Qemu emulator allows malicious PRDT data
| to flow from a guest to the host's IDE or AHCI controllers. This could result
| in infinite loop or memory leakage on the host leading to unbounded resource
| consumption.
| 
| A privileged user inside guest could use this flaw to crash the system,
| resulting in DoS.
| 
| Upstream fix:
| -------------
|   -> http://git.qemu.org/?p=qemu.git;a=commitdiff;h=3251bdcf1c67427d964517053c3d185b46e618e8

  Could this one get a CVE please?

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
