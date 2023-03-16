Received: (qmail 22111 invoked by uid 550); 16 Mar 2023 16:25:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28252 invoked from network); 16 Mar 2023 15:57:44 -0000
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.census 493A93783D77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=census-labs.com;
	s=D8BFA4EC-CF6E-11EB-AFC5-2C27CB7A6FA6; t=1678982252;
	bh=oZ4FAtkpKnMtlaL430deA+jzbW7goQjWoa/+ti8VCjU=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=GncN4oC24aXPH95wmy3WCVS6YSjkuOTKRk3zNG5kKJo0YsoKX52vf/9DctK6tgDCf
	 h6tVrU6nwqlVH3d5fcPrYPO2iz0RPY1JqoqT1TGKHtVXe/PA9OdSVeyD8/di5H89Hl
	 IL09OkZIh6eaZ2ottuKM65HklQ72GLNMVqjclK/otZneghSGgbuzBlBQcUrd98y44g
	 LItdQ0qFCcy8BWl/oWlUzPGMEbdCzgzMRuXHIDmOvPzo3DRtCUmoQBMu6UoCX9UVSa
	 OCj0eEU1lby75gENKNHGfXZHbMJxNTw3rKxzv24ZHlmRScIVaA2Oj499z4XdEMbBuo
	 NYZFK/YzAAStw==
Date: Thu, 16 Mar 2023 17:57:32 +0200 (EET)
From: Giannis Christodoulakos <gchristodoulakos@census-labs.com>
To: oss-security <oss-security@lists.openwall.com>
Message-ID: <1457266614.331217.1678982252139.JavaMail.zimbra@census-labs.com>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="=_33661a20-3bbf-4e24-ae2a-ee9fea93fc80"
X-Originating-IP: [10.9.0.4]
X-Mailer: Zimbra 8.8.15_GA_4508 (ZimbraWebClient - FF110 (Mac)/8.8.15_GA_4508)
Thread-Index: mgMYAV0mS7a8jTgXCuFSikZB43ZDWg==
Thread-Topic: CVE-2023-24278 - Reflected XSS vulnerabilities in Squidex "/squid.svg" endpoint
Subject: [oss-security] CVE-2023-24278 - Reflected XSS vulnerabilities in Squidex
 "/squid.svg" endpoint

--=_33661a20-3bbf-4e24-ae2a-ee9fea93fc80
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
[ [ https://census-labs.com/news/2023/03/16/reflected-xss-vulnerabilities-in-squidex-squidsvg-endpoint/ | https://census-labs.com/news/2023/03/16/reflected-xss-vulnerabilities-in-squidex-squidsvg-endpoint/ ] | [ https://census-labs.com/news/2023/03/16/reflected-xss-vulnerabilities-in-squidex-squidsvg-endpoint/ | https://census-labs.com/news/2023/03/16/reflected-xss-vulnerabilities-in-squidex-squidsvg-endpoint/ ] ] 

Best regards, 

Ioannis Christodoulakos 

--=_33661a20-3bbf-4e24-ae2a-ee9fea93fc80--
