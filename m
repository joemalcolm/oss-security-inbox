X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["949" "Thursday" "30" "April" "2020" "15:56:06" "+0200" "Jacques Le Roux" "jacques.le.roux@les7arts.com" "<ea291a31-a9cc-88ed-67ad-8466b1024175@les7arts.com>" "38" "[oss-security] [CVE-2019-0235 ] Apache OFBiz multiple CSRF vulnerabilities" nil nil nil "4" "2020043013:56:06" "[oss-security] [CVE-2019-0235 ] Apache OFBiz multiple CSRF vulnerabilities" (number mark "U       jacques.le.r Apr 30   38/949   " thread-indent "\"[oss-security] [CVE-2019-0235 ] Apache OFBiz multiple CSRF vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-0235 ] Apache OFBiz multiple CSRF vulnerabilities" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29722 invoked by uid 550); 30 Apr 2020 14:28:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31837 invoked from network); 30 Apr 2020 13:58:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=les7arts.com;
	s=nfrance; t=1588254962;
	bh=DiDeji6DS5Ve5pHAsTuUqhnTpVAhDqVmvTlHdW/eoCc=;
	h=To:From:Subject:Date;
	z=To:=20oss-security@lists.openwall.com|From:=20Jacques=20Le=20Roux
	 =20<jacques.le.roux@les7arts.com>|Subject:=20[CVE-2019-0235=20]=20
	 Apache=20OFBiz=20multiple=20CSRF=20vulnerabilities|Date:=20Thu,=20
	 30=20Apr=202020=2015:56:06=20+0200;
	b=RmTcM/0j/oXhLpaBvx6Z3Al+jzj2FnJFLoZNGgloDgqs7VzIjyFKPwwWVIvlCLuH5
	 Spde+iIdWg/kLQwZstoutlQHU79Zbr19qS4QhqO5e+L9wKar8nocEnUJy+9xjWdZmC
	 6YuGjwum1GkqOAJ6Tfiyo0K7iJqQxjYehx3Pxp2o=
To: oss-security@lists.openwall.com
From: Jacques Le Roux <jacques.le.roux@les7arts.com>
Organization: Les Arts Informatiques
Message-ID: <ea291a31-a9cc-88ed-67ad-8466b1024175@les7arts.com>
Date: Thu, 30 Apr 2020 15:56:06 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------------F545C392E678C162885F3487"
Content-Language: en-GB
Subject: [oss-security] [CVE-2019-0235 ] Apache OFBiz multiple CSRF vulnerabilities

--------------F545C392E678C162885F3487
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Severity:
Important

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz 17.12.01

Description:
Apache OFBiz is vulnerable to CSRF attacks

Mitigation:
Upgrade to 17.12.03 or manually apply the commits at OFBIZ-11470
----

Credit:
Initially known by the OFBiz security team (OFBIZ-10427),
also reported later by
Man Yue Mo via RT <security-reports@semmle.com>
Shuibo Ye <shuiboye@gmail.com>
Vikash Patnaik <vikash.patnaik@outlook.com>
Sonali Agrahari <sonaliagrahari8@gmail.com>
Girish Vasmatkar <girish.vasmatkar@hotwaxsystems.com>
Dinesh Kumar Mohanty <kiitkp03@gmail.com>
Jason Nordenstam <j.nordenstam@offensive-security.com>
Pradeep Jairamani <pradeepjairamani22@gmail.com>
Faiz Zaidi <faizzaidi17@gmail.com>

References:
https://ofbiz.apache.org/security.html


--------------F545C392E678C162885F3487--
