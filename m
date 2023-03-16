Received: (qmail 7896 invoked by uid 550); 16 Mar 2023 12:35:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24011 invoked from network); 16 Mar 2023 09:22:04 -0000
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.census C3D4B3260990
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=census-labs.com;
	s=D8BFA4EC-CF6E-11EB-AFC5-2C27CB7A6FA6; t=1678958511;
	bh=WAHpAXh/YVtIHBjdaTZlkL9SORynIX79PqKVgd76wic=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=eXSzgSwmRdkLPubTyNP8bn2TYjXrZ+qr8bosUb9phCn7dIiGz1/oBli7mtqq88jOd
	 a1M67GaP+j2io9acKIWyKc6jS5oefih6aCLLjroW5P8Yzh2AoxLj9keaMP/jXMPJaN
	 zrzDaIm0E3ema4jcb58RjrZFxFWgC5QA8Q15Ho6ghCT1zRNcHzsbmfMYagA+E5WJXW
	 CmQpV7Oz7/lgsPa+OhqD8Z5p5lOuESmo4sETejMn694h3C6hwgveulLxGaOwCKlmtl
	 uS16foGQwQwTXSWtsWG/kEAumP7x+k/B0aYIdyXhyVBzAf3K09vCZjmTHH5oAlYgXv
	 ZHHBxJbKekPCQ==
Date: Thu, 16 Mar 2023 11:21:51 +0200 (EET)
From: Giannis Christodoulakos <gchristodoulakos@census-labs.com>
To: oss-security@lists.openwall.com
Message-ID: <687042794.320019.1678958511445.JavaMail.zimbra@census-labs.com>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="=_60c2aacf-d2c9-47bf-8e24-9b8c1c335bc2"
X-Originating-IP: [10.9.0.4]
X-Mailer: Zimbra 8.8.15_GA_4508 (ZimbraWebClient - FF110 (Mac)/8.8.15_GA_4508)
Thread-Index: p+lK53MVqU84ujJdFKR1HRlVrFt/2w==
Thread-Topic: CVE-2023-24278 - Reflected XSS vulnerabilities in Squidex "/squid.svg" endpoint
Subject: [oss-security] CVE-2023-24278 - Reflected XSS vulnerabilities in Squidex
 "/squid.svg" endpoint

--=_60c2aacf-d2c9-47bf-8e24-9b8c1c335bc2
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello all, 

Squidex, a "headless" open source CMS framework was found to have two reflected XSS vulnerabilities in the "/squid.svg" endpoint 
affecting versions prior to 7.4.0. The vulnerabilities have been addressed in version 7.4.0 of the framework. 

CVE-2023-24278 was assigned to these vulnerabilities by MITRE. 

The vulnerabilities affect both authenticated and unauthenticated users and allow for 
malicious JavaScript to be executed within victim user browsers. Moreover, the vulnerabilities 
enable an attacker to collect the CMS authentication token from browser local storage 
and it is therefore possible for the attacker to gain unauthorized access to a victim user's session. 

More information about these issues is available here: 
[ https://census-labs.com/news/2023/03/16/reflected-xss-vulnerabilities-in-squidex-squidsvg-endpoint/ | https://census-labs.com/news/2023/03/16/reflected-xss-vulnerabilities-in-squidex-squidsvg-endpoint/ ] 

Best regards, 

Ioannis Christodoulakos 

--=_60c2aacf-d2c9-47bf-8e24-9b8c1c335bc2--
