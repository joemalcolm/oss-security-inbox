X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["969" "Thursday" "26" "May" "2016" "15:55:35" "+0000" "Tim Allison" "tallison@apache.org" "<1705136517.1175366.1464278135251.JavaMail.yahoo@mail.yahoo.com>" "24" "[oss-security] [CVE-2016-4434] Apache Tika XML External Entity vulnerability" nil nil nil "5" "2016052615:55:35" "[oss-security] [CVE-2016-4434] Apache Tika XML External Entity vulnerability" (number mark "U       tallison@apa May 26   24/969   " thread-indent "\"[oss-security] [CVE-2016-4434] Apache Tika XML External Entity vulnerability\"\n") "<1705136517.1175366.1464278135251.JavaMail.yahoo.ref@mail.yahoo.com>" ("<1705136517.1175366.1464278135251.JavaMail.yahoo.ref@mail.yahoo.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9730 invoked by uid 550); 26 May 2016 17:53:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5223 invoked from network); 26 May 2016 16:00:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1464278405; bh=rbNphpIzC+9b3Z+XLqP4UnGEhHIE/07bm83QlKGSvx0=; h=Date:From:Reply-To:To:Subject:References:From:Subject; b=uYOnpNkDsxHEKkyqgcK0ANuvBs7+ja6YFX+KHFs+Myd/mturg3jVAom56ZOWymO/QOk8zn1lwZJttrccnFpECFg2BwErajK3MSHtxLfOQyxqyFdvGqXAtAkN6YUShnuSVsd6xqX/AwpjHnUDo+H867i0ZlVl/jU8S/OLGf+/8uRZx9wV6O4jzoiXUVp9zaUkZLJ3gnNI3YMIPV0LmC0Zu0PW37NA50D/NHtom8XRPmKsDWHonBbBUxQfazTdBjFYPixQxN8aevPy39tGspnezNjAp3L4cZ4Jb46MSUoO89bsIEtzsiCMfLrw+VjXGeQ4yVfACIMPjzemUhwPcfuchg==
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 885457.47331.bm@omp1036.mail.bf1.yahoo.com
X-YMail-OSG: YOydFOYVM1ltw7HIIw3owWvZlMvM99YvXUGXHb3B1i6vg09fFYr89I7hhpfYMX0
 Mk00dBUNg0xJbaOjb6is3rhY4w87D1q_rjfjYU7wDcCl5y5zZVVzZJYs2fe2cyB7sFiBzvI7YjIQ
 TCa.2OOSf_9V8Z4D8ovKxCksczHLN2PZEgmO5O6rJQEmampGiZHvgk7I0dCPZZpM536Mgff8QHD3
 AwhDLPVGittOpf1cJEoy5dU2kVcdaFc.l4NYh7ZUnXOFHFyRboaOVSzuzVqLDhXL9Oc7n4PH9PwE
 cnMKpTKb0rino.vOSHFecv7vp14KUz1_4Evqjh_cMsa5ekXgPgsubnPJeXZqbq2LezT4OAfiiUoc
 dcYrVyQWYfxsrLdtvfi6HdQavXTEfcTywMEdFag2JM7i8SFDXnzzYu78bmmSWD6rABjwSrxUG4j4
 n_rwqF9NhFrAdpPpRXD84jEc6UHQhN5wLw.8xvDObp3Eru4NEH04puskAih9gxssav9QcBdoiUmf
 Em0C7ToXTOABJfPMv
Date: Thu, 26 May 2016 15:55:35 +0000 (UTC)
From: Tim Allison <tallison@apache.org>
To: "security@apache.org" <security@apache.org>, 
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, 
	"bugtraq@securityfocus.com" <bugtraq@securityfocus.com>, 
	"dev@tika.apache.org" <dev@tika.apache.org>, 
	"user@tika.apache.org" <user@tika.apache.org>
Message-ID: <1705136517.1175366.1464278135251.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
References: <1705136517.1175366.1464278135251.JavaMail.yahoo.ref@mail.yahoo.com>
Subject: [oss-security] [CVE-2016-4434] Apache Tika XML External Entity vulnerability

CVE-2016-4434: Apache Tika XML External Entity vulnerability

Severity: Important


Vendor: 
The Apache Software Foundation

Versions Affected: 
Apache Tika 0.10 to 1.12

Description: 
Apache Tika parses XML within numerous file formats.  In some instances[1], the initialization ofthe XML parser or the choice of handlers did not protect against XML External Entity (XXE)
vulnerabilities.  According to www.owasp.org [2]: "This attack may lead to the disclosure of confidential data, denial of service, server side request forgery, port scanning from the perspective of the machine where the parser is located, and other system impacts." 


Mitigation: 
Upgrade to Apache Tika 1.13.

Credit: 
This issue was discovered by Arthur Khashaev (https://khashaev.ru), Seulgi Kim, Mesut Timur,and Microsoft Vulnerability Research.

[1] Spreadsheets in OOXML files and XMP in PDF and other file formats.
[2] https://www.owasp.org/index.php/XML_External_Entity_(XXE)_Processing
