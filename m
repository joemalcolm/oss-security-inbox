X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["714" "Friday" "17" "February" "2017" "10:39:38" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1702161854530.12665@wniryva>" "23" "Re: [oss-security] CVE-2017-6000 Qemu: crypto: memory leakage in qcrypto_ivgen_essiv_init" nil nil nil "2" "2017021705:09:38" "[oss-security] CVE-2017-6000 Qemu: crypto: memory leakage in qcrypto_ivgen_essiv_init" (number mark "U       ppandit@redh Feb 17   23/714   " thread-indent "\"Re: [oss-security] CVE-2017-6000 Qemu: crypto: memory leakage in qcrypto_ivgen_essiv_init\"\n") "<alpine.LFD.2.20.1702161016040.1918@wniryva>" ("<alpine.LFD.2.20.1702161016040.1918@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32717 invoked by uid 550); 17 Feb 2017 05:09:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32695 invoked from network); 17 Feb 2017 05:09:56 -0000
Date: Fri, 17 Feb 2017 10:39:38 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
In-Reply-To: <alpine.LFD.2.20.1702161016040.1918@wniryva>
Message-ID: <alpine.LFD.2.20.1702161854530.12665@wniryva>
References: <alpine.LFD.2.20.1702161016040.1918@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.74 on 10.5.11.28
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Fri, 17 Feb 2017 05:09:45 +0000 (UTC)
Subject: Re: [oss-security] CVE-2017-6000 Qemu: crypto: memory leakage in
 qcrypto_ivgen_essiv_init

+-- On Thu, 16 Feb 2017, P J P wrote --+
| A guest user/process could use this flaw to leak host memory resulting in 
| DoS.
| 
| Upstream patch:
| ---------------
|   -> https://lists.gnu.org/archive/html/qemu-devel/2017-01/msg00295.html
|   -> https://bugzilla.redhat.com/show_bug.cgi?id=1422656
| 
| This issue was reported by Li Qiang of 360.cn Inc.

This one turned out to be a non security issue, as guest could not trigger 
this memory leak.

| 'CVE-2017-6000' assigned via -> https://cveform.mitre.org/

CVE has been cancelled
  -> https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-6000

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
