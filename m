X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["616" "Sunday" "21" "March" "2021" "14:01:37" "+0100" "Jacques Le Roux" "jacques.le.roux@les7arts.com" nil "25" "[oss-security] [CVE-2021-26295] RCE vulnerability in latest Apache OFBiz due to Java serialisation using RMI" nil nil nil "3" nil nil (number mark "U       jacques.le.r Mar 21   25/616   " thread-indent "\"[oss-security] [CVE-2021-26295] RCE vulnerability in latest Apache OFBiz due to Java serialisation using RMI\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2021-26295] RCE vulnerability in latest Apache OFBiz due to Java serialisation using RMI" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1185 invoked by uid 550); 21 Mar 2021 13:11:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30498 invoked from network); 21 Mar 2021 13:02:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=les7arts.com;
	s=nfrance; t=1616331690;
	bh=KyxCl1lTMBdz0yPuE6H7lxI030wC802RlGMVnxLwLMU=;
	h=From:To:Subject:Date;
	z=From:=20Jacques=20Le=20Roux=20<jacques.le.roux@les7arts.com>|To:=
	 20oss-security@lists.openwall.com|Subject:=20[CVE-2021-26295]=20RC
	 E=20vulnerability=20in=20latest=20Apache=20OFBiz=20due=20to=20Java
	 =0D=0A=20serialisation=20using=20RMI|Date:=20Sun,=2021=20Mar=20202
	 1=2014:01:37=20+0100;
	b=Fd17fpnfoOjsqYm7zbTGzHyLaEHcveFNYUO5KQ/qkLbY7aA48k+6oxqs3bwSSnxTG
	 +w/TmHtKlJ4+fJzoMCXYcwqdtxLTOCZtIK/gC1N9oswBRU48bj+lUHCswPl+PJKE8/
	 0RlaBLd+BcWTEGiFjRwD89Or6iL+KYLSUZyi9YUE=
From: Jacques Le Roux <jacques.le.roux@les7arts.com>
To: oss-security@lists.openwall.com
Organization: Les Arts Informatiques
Message-ID: <ab4895c3-fe33-99c7-6182-0d4aa05fff32@les7arts.com>
Date: Sun, 21 Mar 2021 14:01:37 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
Subject: [oss-security] [CVE-2021-26295] RCE vulnerability in latest Apache OFBiz due to Java
 serialisation using RMI

Severity:
High

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz versions prior to 17.12.06

Description:
Apache OFBiz has unsafe deserialization prior to 17.12.06.
An unauthenticated attacker can use this vulnerability to successfully take over Apache OFBiz.

Mitigation:
Upgrade to at least 17.12.06
or apply the patch at https://github.com/apache/ofbiz-framework/commit/af9ed4e/

Credit:
r00t4dm at Cloud-Penetrating Arrow Lab <r00t4dm@gmail.com>
MagicZero from SGLAB of Legendsec at Qi'anxin Group.
Longofo at Knownsec 404 Team

References:
http://ofbiz.apache.org/download.html#vulnerabilities

