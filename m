X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["758" "Thursday" "4" "June" "2020" "00:51:24" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.77.849.2006040049200.62159@xnncv>" "23" "[oss-security] CVE-2020-13765 QEMU: loader: OOB access while loading registered ROM may lead to code execution" nil nil nil "6" "2020060319:21:24" "[oss-security] CVE-2020-13765 QEMU: loader: OOB access while loading registered ROM may lead to code execution" (number mark "U       ppandit@redh Jun  4   23/758   " thread-indent "\"[oss-security] CVE-2020-13765 QEMU: loader: OOB access while loading registered ROM may lead to code execution\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-13765 QEMU: loader: OOB access while loading registered ROM may lead to code execution" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1809 invoked by uid 550); 3 Jun 2020 19:23:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1786 invoked from network); 3 Jun 2020 19:23:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1591212195;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=yRmJBC0tkvpVzYAjF64GTfTbNwaa9z1Ff0+MIBMckfE=;
	b=J+/v+tiaICjP3qfjlQW9SCEjwno+QaRem6dbCfC/mCC8deeze19yKwMp1vnHjNRTjPz+V1
	g1nRu4g+bz6NwOQZyqIG2BP1BV1TnVwzU3LU7BATdG50kmhd8LqupHeDiHMA5mIlV549t4
	J1nzUXWO2lQE4rX5ZaPKnJ5+V2uhGic=
X-MC-Unique: W2-SNaMfMKmqGFR9FKBZmw-1
Date: Thu, 4 Jun 2020 00:51:24 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <nycvar.YSQ.7.77.849.2006040049200.62159@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] CVE-2020-13765 QEMU: loader: OOB access while loading registered
 ROM may lead to code execution

   Hello,

An out-of-bound write access flaw was found in the way QEMU loads ROM contents 
at boot time. This flaw occurs in the rom_copy() routine while loading the 
contents of a 32-bit -kernel image into memory. Running an untrusted -kernel 
image may load contents at arbitrary memory locations, potentially leading to 
code execution with the privileges of the QEMU process.

Upstream patch:
---------------
   -> https://git.qemu.org/?p=qemu.git;a=commitdiff;h=e423455c4f23a1a828901c78fe6d03b7dde79319

Reference:
----------
   -> https://bugs.launchpad.net/qemu/+bug/1844635

'CVE-2020-13765' requested via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

