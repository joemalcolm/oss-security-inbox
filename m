X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["407" "Wednesday" "16" "December" "2015" "10:50:39" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1512161049320.11043@wniryva>" "10" "Re: [oss-security] Re: CVE request Qemu: net: vmxnet3: host memory leakage" nil nil nil "12" "2015121605:20:39" "[oss-security] Re: CVE request Qemu: net: vmxnet3: host memory leakage" (number mark "U       ppandit@redh Dec 16   10/407   " thread-indent "\"Re: [oss-security] Re: CVE request Qemu: net: vmxnet3: host memory leakage\"\n") "<20151215181339.56C3442E8EB@smtpvbsrv1.mitre.org>" ("<20151215181339.56C3442E8EB@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23966 invoked by uid 550); 16 Dec 2015 05:20:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23947 invoked from network); 16 Dec 2015 05:20:57 -0000
Date: Wed, 16 Dec 2015 10:50:39 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: cve-assign@mitre.org, luodalongde@gmail.com
In-Reply-To: <20151215181339.56C3442E8EB@smtpvbsrv1.mitre.org>
Message-ID: <alpine.LFD.2.20.1512161049320.11043@wniryva>
References: <20151215181339.56C3442E8EB@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Subject: Re: [oss-security] Re: CVE request Qemu: net: vmxnet3: host memory
 leakage

+-- On Tue, 15 Dec 2015, cve-assign@mitre.org wrote --+
| >> I've added a check in vmxnet3_deactivate_device() to avoid double free.
| 
| We think this may mean that the double free existed only in an early
| version of the patch, and did not exist in any shipped QEMU code.

Yes, that's right. Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
