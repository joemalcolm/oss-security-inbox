X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["696" "Friday" "27" "November" "2020" "18:38:05" "+0530" "P J P" "ppandit@redhat.com" "<60o7969p-qnp-s3s1-spn2-1s4p509qp1@erqung.pbz>" "22" "[oss-security] CVE-2020-29129 CVE-2020-29130 QEMU: slirp: out-of-bounds access while processing ARP/NCSI packets" nil nil nil "11" "2020112713:08:05" "[oss-security] CVE-2020-29129 CVE-2020-29130 QEMU: slirp: out-of-bounds access while processing ARP/NCSI packets" (number mark "U       ppandit@redh Nov 27   22/696   " thread-indent "\"[oss-security] CVE-2020-29129 CVE-2020-29130 QEMU: slirp: out-of-bounds access while processing ARP/NCSI packets\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-29129 CVE-2020-29130 QEMU: slirp: out-of-bounds access while processing ARP/NCSI packets" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26190 invoked by uid 550); 27 Nov 2020 13:08:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26172 invoked from network); 27 Nov 2020 13:08:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1606482496;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=EDmBVrMHY0aG1q++7zmPYb5tklm4WmsCu2xUOhs0/HA=;
	b=SoGkW6dUVBjH87nMgPSydpYiyazpSvAOOLZhOls9n5gb7QXMyGvPaKZRU97TXx8lXHtXkq
	pUp512kPHClYVq4J+ti1e2V12z2nKwaWfwstZnvTn1BLWYyDxoaNoCo8/+H4r4aswYckXo
	vFOCN48QWFfFDeiE1g8mL44AGuibYCc=
X-MC-Unique: p3k6X58CPYGqFETlUrhqyA-1
Date: Fri, 27 Nov 2020 18:38:05 +0530 (IST)
From: P J P <ppandit@redhat.com>
To: oss security list <oss-security@lists.openwall.com>
cc: Qiuhao.Li@outlook.com
Message-ID: <60o7969p-qnp-s3s1-spn2-1s4p509qp1@erqung.pbz>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ppandit@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] CVE-2020-29129 CVE-2020-29130 QEMU: slirp: out-of-bounds access
 while processing ARP/NCSI packets

   Hello,

An out-of-bounds access issue was found in the SLiRP user networking 
implementation of QEMU. It could occur while processing ARP/NCSI packets, if 
the packet length was shorter than required to accommodate respective protocol 
headers and payload. A privileged guest user may use this flaw to potentially 
leak host information bytes.

Upstream patch:
---------------
   -> https://lists.freedesktop.org/archives/slirp/2020-November/000115.html

* This issue was reported by Qiuhao Li (cc'd).

* CVE-2020-29129 CVE-2020-29130 assigned via -> https://cveform.mitre.org/


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

