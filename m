X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["703" "Thursday" "25" "February" "2021" "16:41:43" "+0530" "P J P" "ppandit@redhat.com" nil "23" "[oss-security] CVE-2021-20255 QEMU: net: eepro100: stack overflow via infiniterecursion" nil nil nil "2" nil nil (number mark "U       ppandit@redh Feb 25   23/703   " thread-indent "\"[oss-security] CVE-2021-20255 QEMU: net: eepro100: stack overflow via infiniterecursion\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-20255 QEMU: net: eepro100: stack overflow via infiniterecursion" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21527 invoked by uid 550); 25 Feb 2021 11:12:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20478 invoked from network); 25 Feb 2021 11:12:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614251513;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=mkia2jMjzkM+5aCUmBi5hzHRahMm3y5dTaEmdD5+AGk=;
	b=gckP/JON8vw7MffZAx8wRjsF6KfVAGDlriAtz1ejv/DHOLcoWII4QxdvqMKGYAm6NPzQ0+
	WNnavFB8M0fnHCt9j4tdFo7euu0CeYFINM22s0guJ1X+4OQjG60UgBYexxDkQaq67x9kvH
	7XaoMqGq1zHPH8XNrcSLyv6aXzwNAVM=
X-MC-Unique: l-QeteXRN22Up6Wj3RPgAA-1
Date: Thu, 25 Feb 2021 16:41:43 +0530 (IST)
From: P J P <ppandit@redhat.com>
To: oss security list <oss-security@lists.openwall.com>
cc: bugs-syssec@rub.de
Message-ID: <2rp5411p-484n-19p8-s592-2851o39opo8@erqung.pbz>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ppandit@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] CVE-2021-20255 QEMU: net: eepro100: stack overflow via
 infiniterecursion

   Hello,

A stack overflow via infinite recursion issue was found in the eepro100 i8255x 
device emulator of QEMU. It could occur while processing controller commands 
due to DMA re-entrancy issue. A guest user/process may use this flaw to 
consume cpu cycles or crash the QEMU process on the host resulting in DoS 
scenario.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2021-02/msg06098.html

'CVE-2021-20255' assigned by Red Hat Inc.

This issue was reported by Sergej Schumilo, Cornelius Aschermann and Simon 
Werner of Ruhr-University Bochum.


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

