X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1438" "Thursday" "14" "June" "2018" "23:46:38" "+0200" "Marcus Brinkmann" "marcus.brinkmann@ruhr-uni-bochum.de" "<c0e1a287-f18b-252e-3509-131db823264c@ruhr-uni-bochum.de>" "32" "[oss-security] CVE-2018-12356 Breaking signature verification in pass (Simple Password Store)" nil nil nil "6" "2018061421:46:38" "[oss-security] CVE-2018-12356 Breaking signature verification in pass (Simple Password Store)" (number mark "U       marcus.brink Jun 14   32/1438  " thread-indent "\"[oss-security] CVE-2018-12356 Breaking signature verification in pass (Simple Password Store)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20120 invoked by uid 550); 14 Jun 2018 21:52:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14139 invoked from network); 14 Jun 2018 21:46:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ruhr-uni-bochum.de;
	s=mail-2017; t=1529012799;
	bh=T6uQbMT8eYvTi2GcZrPeFBiA+shnZObMJUUJPsI5QdQ=;
	h=To:From:Subject:Date:From;
	b=ikrF/A1cOBrpzs75Kel0742LSlTb8MDttTUD6jH9h/szxkYMFdS99Zjutbhy/5WoD
	 KR78UJnZ7EcV58zhXLRkazNKraVw6fPOe8kfcLdAusLaRsTnfzKnSiXTvLJIQIXzTS
	 yGvth1I13oEXQfNP+JzyXtjONXslG3yPaf/bwjGc=
X-Envelope-Sender: <marcus.brinkmann@ruhr-uni-bochum.de>
X-RUB-Notes: Internal origin=134.147.42.227
To: oss-security@lists.openwall.com
From: Marcus Brinkmann <marcus.brinkmann@ruhr-uni-bochum.de>
Openpgp: preference=signencrypt
Message-ID: <c0e1a287-f18b-252e-3509-131db823264c@ruhr-uni-bochum.de>
Date: Thu, 14 Jun 2018 23:46:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.99.4 at mail1.mail.ruhr-uni-bochum.de
X-Virus-Status: Clean
Subject: [oss-security] CVE-2018-12356 Breaking signature verification in pass (Simple
 Password Store)

This is the third (and for now last) in my series of GnuPG signature
spoof exploits.

First, a cautious note:

In the course of my 2 week investigation, I went through a lot of
applications using gpg. There were a couple of "near misses" in critical
infrastructure projects which were not vulnerable, but where I am not
sure if that was due to conscious design choices or just by pure chance.

It would be prudent for everybody who knows a script or package using
gpg to have a look for issues with status-fd, regular expressions and/or
"gpg -d | some-other-program" patterns.

Now, the details about CVE-2018-12356:

I found a critical vulnerability in pass, the Simple Password Store:

CVE-2018-12356: An issue was discovered in password-store.sh in pass in
Simple Password Store 1.7 through 1.7.1. The signature verification
routine parses the output of GnuPG with an incomplete regular
expression, which allows remote attackers to spoof file signatures on
configuration files and extensions scripts. Modifying the configuration
file allows the attacker to inject additional encryption keys under
their control, thereby disclosing passwords to the attacker. Modifying
the extension scripts allows the attacker arbitrary code execution.

I am also calling out the missing integrity protection in pass for
password files, making pass users potentially vulnerable to a broad
range of attacks.

https://neopg.io/blog/pass-signature-spoof/
