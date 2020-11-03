X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["638" "Tuesday" "3" "November" "2020" "17:27:46" "+0530" "P J P" "ppandit@redhat.com" "<4so0n6n6-14p0-3r18-2p12-ors0683rono7@erqung.pbz>" "20" "[oss-security] CVE-2020-27616 QEMU: ati-vga: potential crash via invalid x y parameter values" nil nil nil "11" "2020110311:57:46" "[oss-security] CVE-2020-27616 QEMU: ati-vga: potential crash via invalid x y parameter values" (number mark "U       ppandit@redh Nov  3   20/638   " thread-indent "\"[oss-security] CVE-2020-27616 QEMU: ati-vga: potential crash via invalid x y parameter values\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-27616 QEMU: ati-vga: potential crash via invalid x y parameter values" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7490 invoked by uid 550); 3 Nov 2020 11:58:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7472 invoked from network); 3 Nov 2020 11:58:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604404674;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=vnzKsSY7cLxV8a/02LHVbFDWubAx1Z7S2gDWxE3sPRI=;
	b=eVPpkk7AvkIxMVrcGPgdXj/3saVFRBzWxEm69O8pUqKvp6JDtx97Atsx0URDEWmHawteVs
	NeDU2wAOGo861kSfDqUvKyXmgi+MP4e3PE1bsToosAcg7Nh/sunU0X5yYX+TlpgGJViC9Z
	KtPcp7Rygzai/uR2iwbb4VwdO9w7dNM=
X-MC-Unique: SWjPYfvCOH6IYW-AEAxDAw-1
Date: Tue, 3 Nov 2020 17:27:46 +0530 (IST)
From: P J P <ppandit@redhat.com>
To: oss security list <oss-security@lists.openwall.com>
cc: Gaoning Pan <pgn@zju.edu.cn>
Message-ID: <4so0n6n6-14p0-3r18-2p12-ors0683rono7@erqung.pbz>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ppandit@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] CVE-2020-27616 QEMU: ati-vga: potential crash via invalid x y
 parameter values

   Hello,

An out-of-bounds access issue was found in the ati-vga emulator of the QEMU. 
It could occur when the source and destination x,y display parameters in 
ati_2d_blt() have invalid values. A guest user/process may use this flaw to 
crash the QEMU process resulting in DoS scenario.

Upstream patch:
---------------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2020-10/msg06080.html

This issue is reported by Gaoning Pan of Zhejiang University.

'CVE-2020-27616' assigned via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

