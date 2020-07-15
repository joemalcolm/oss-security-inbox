X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["426" "Wednesday" "15" "July" "2020" "14:52:11" "+0200" "Jacques Le Roux" "jacques.le.roux@les7arts.com" "<27251059-4261-01a9-e26c-488701ddffe6@les7arts.com>" "22" "[oss-security] [CVE-2020-9496] Apache OFBiz XML-RPC requests vulnerable without authentication" nil nil nil "7" "2020071512:52:11" "[oss-security] [CVE-2020-9496] Apache OFBiz XML-RPC requests vulnerable without authentication" (number mark "U       jacques.le.r Jul 15   22/426   " thread-indent "\"[oss-security] [CVE-2020-9496] Apache OFBiz XML-RPC requests vulnerable without authentication\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-9496] Apache OFBiz XML-RPC requests vulnerable without authentication" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28140 invoked by uid 550); 15 Jul 2020 13:22:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19660 invoked from network); 15 Jul 2020 12:52:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=les7arts.com;
	s=nfrance; t=1594817526;
	bh=EmWseJa071v8KvyWPuxPbsTG8GkrTTS5MW6KsY74TTk=;
	h=To:Reply-To:From:Subject:Date;
	z=To:=20oss-security@lists.openwall.com|Reply-To:=20"dev@ofbiz.apac
	 he.org"=20<dev@ofbiz.apache.org>|From:=20Jacques=20Le=20Roux=20<ja
	 cques.le.roux@les7arts.com>|Subject:=20[CVE-2020-9496]=20Apache=20
	 OFBiz=20XML-RPC=20requests=20vulnerable=20without=0D=0A=20authenti
	 cation|Date:=20Wed,=2015=20Jul=202020=2014:52:11=20+0200;
	b=n5cKR5Ot9U+oKTiaSfRjg2V+ttZqHlNaUzckwSxW7P//EjB4AUAyOFOuqVvCZTqna
	 LZR+a7H1fxJQu18STYJueyo+pYiuGux+b57wJAHSX5+UXEwWruIQ2Ds8Z62cWIBMNP
	 BfLWsc4yDsdJfD62hfaLvWI14udI79wwGXKWOXFg=
To: oss-security@lists.openwall.com
From: Jacques Le Roux <jacques.le.roux@les7arts.com>
Organization: Les Arts Informatiques
Message-ID: <27251059-4261-01a9-e26c-488701ddffe6@les7arts.com>
Date: Wed, 15 Jul 2020 14:52:11 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-GB
Subject: [oss-security] [CVE-2020-9496] Apache OFBiz XML-RPC requests vulnerable without
 authentication

Severity:
Important

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz 17.12.03

Description:
Apache OFBiz XML-RPC request are  vulnerable to unsafe deserialization and Cross-Site Scripting issues.

Mitigation:
Upgrade to 17.12.04 or manually apply the commit at OFBIZ-11716
----

Credit:
Alvaro Munoz from  GitHub Security Lab team <pwntester@github.com>

References:
https://ofbiz.apache.org/security.html

