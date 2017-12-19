X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["523" "Tuesday" "19" "December" "2017" "14:15:43" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1712191414120.29121@wniryva>" "18" "[oss-security] CVE-2017-17741 kernel: kvm: stack-based out-of-bounds read via vmcall instruction" nil nil nil "12" "2017121908:45:43" "[oss-security] CVE-2017-17741 kernel: kvm: stack-based out-of-bounds read via vmcall instruction" (number mark "U       ppandit@redh Dec 19   18/523   " thread-indent "\"[oss-security] CVE-2017-17741 kernel: kvm: stack-based out-of-bounds read via vmcall instruction\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30261 invoked by uid 550); 19 Dec 2017 08:46:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30243 invoked from network); 19 Dec 2017 08:45:59 -0000
Date: Tue, 19 Dec 2017 14:15:43 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <nycvar.YSQ.7.76.1712191414120.29121@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Tue, 19 Dec 2017 08:45:48 +0000 (UTC)
Subject: [oss-security] CVE-2017-17741 kernel: kvm: stack-based out-of-bounds read via vmcall
 instruction

   Hello,

Linux kernel built with the KVM virtualization(CONFIG_KVM) support is 
vulnerable to an out-of-bounds read access issue. It could occur when 
emulating vmcall instruction invoked by a guest.

A guest user/process could use this flaw to disclose kernel memory bytes.

Upstream patch:
---------------
   -> https://www.spinics.net/lists/kvm/msg160796.html

CVE assigned via https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
