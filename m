X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["650" "Tuesday" "18" "July" "2017" "12:22:03" "+0200" "Bertrand Delacretaz" "bdelacretaz@apache.org" "<CAEWfVJkLfoDJ-VjddTo_Vb70q4M+tN2GvpabRDR_iPdCAFtY1Q@mail.gmail.com>" "20" "[oss-security] CVE-2016-6798 : Apache Sling XXE vulnerability" nil nil nil "7" "2017071810:22:03" "[oss-security] CVE-2016-6798 : Apache Sling XXE vulnerability" (number mark "U       bdelacretaz@ Jul 18   20/650   " thread-indent "\"[oss-security] CVE-2016-6798 : Apache Sling XXE vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15756 invoked by uid 550); 18 Jul 2017 10:27:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13483 invoked from network); 18 Jul 2017 10:22:19 -0000
X-Gm-Message-State: AIVw1112zrkBFc3VtFfTlHrxDau0d2pXUO5apWt5UHy8MLgnc716K/Cu
	2eUxISuaG75/OGZiyahNO+dWrxE2lQ==
X-Received: by 10.200.34.131 with SMTP id f3mr839128qta.223.1500373323929;
 Tue, 18 Jul 2017 03:22:03 -0700 (PDT)
MIME-Version: 1.0
From: Bertrand Delacretaz <bdelacretaz@apache.org>
Date: Tue, 18 Jul 2017 12:22:03 +0200
X-Gmail-Original-Message-ID: <CAEWfVJkLfoDJ-VjddTo_Vb70q4M+tN2GvpabRDR_iPdCAFtY1Q@mail.gmail.com>
Message-ID: <CAEWfVJkLfoDJ-VjddTo_Vb70q4M+tN2GvpabRDR_iPdCAFtY1Q@mail.gmail.com>
To: dev <dev@sling.apache.org>, users <users@sling.apache.org>, 
	"security@sling.apache.org" <security@sling.apache.org>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2016-6798 : Apache Sling XXE vulnerability

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Sling XSS Protection API 1.0.0

Description:
The method XSS.getValidXML() uses an insecure SAX parser to validate
the input string, which allows for XXE [0] attacks in all scripts
which use this method to validate user input, potentially allowing an
attacker to read sensitive data on the filesystem, perform
same-site-request-forgery (SSRF), port-scanning behind the firewall or
DoS the application.

[0] https://www.owasp.org/index.php/XML_External_Entity_(XXE)_Processing

Mitigation:
Users should upgrade to version 1.0.12 or later of the XSS Protection
API module.
