X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1124" "Thursday" "16" "January" "2020" "14:10:53" "+0000" "Colm O hEigeartaigh" "coheigea@apache.org" "<CAB8XdGAqVbPj=oaCN=0_aXNmLLr4NqeAR=r74ogJegEwJqpfWw@mail.gmail.com>" "37" "[oss-security] [CVE-2019-17573] Apache CXF Reflected XSS in the services listing page" nil nil nil "1" "2020011614:10:53" "[oss-security] [CVE-2019-17573] Apache CXF Reflected XSS in the services listing page" (number mark "U       coheigea@apa Jan 16   37/1124  " thread-indent "\"[oss-security] [CVE-2019-17573] Apache CXF Reflected XSS in the services listing page\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-17573] Apache CXF Reflected XSS in the services listing page" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11921 invoked by uid 550); 16 Jan 2020 14:17:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9549 invoked from network); 16 Jan 2020 14:11:16 -0000
X-Gm-Message-State: APjAAAXp0bdHrRm1LzPbjKrJ+abzkDk528OmVX7Tz85JxB0gztNxjnVW
	C688/0ElGNjETkG6GPNwY3SdB5x2aGPi1NDDqS8=
X-Google-Smtp-Source: APXvYqzaS7RWBS6ncdEBcpuG1fA1JHA/zCql9epcBXV3o4T4nQRx2eLfDNyvQ2Yf1Qsw4kLwSAA7QeQT2FGZBbvRPNk=
X-Received: by 2002:a92:ca8b:: with SMTP id t11mr3870574ilo.227.1579183864167;
 Thu, 16 Jan 2020 06:11:04 -0800 (PST)
MIME-Version: 1.0
From: Colm O hEigeartaigh <coheigea@apache.org>
Date: Thu, 16 Jan 2020 14:10:53 +0000
X-Gmail-Original-Message-ID: <CAB8XdGAqVbPj=oaCN=0_aXNmLLr4NqeAR=r74ogJegEwJqpfWw@mail.gmail.com>
Message-ID: <CAB8XdGAqVbPj=oaCN=0_aXNmLLr4NqeAR=r74ogJegEwJqpfWw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000004241cf059c4265ea"
Subject: [oss-security] [CVE-2019-17573] Apache CXF Reflected XSS in the services listing page

--0000000000004241cf059c4265ea
Content-Type: text/plain; charset="UTF-8"

CVE-2019-17573: Apache CXF Reflected XSS in the services listing page

Severity: Moderate

Vendor: The Apache Software Foundation

Versions Affected:

This vulnerability affects all versions of Apache CXF prior to 3.3.5 and
3.2.12.

Description:

By default, Apache CXF creates a /services page containing a listing of the
available endpoint names and addresses. This webpage is vulnerable to a
reflected Cross-Site Scripting (XSS) attack, which allows a malicious actor
to
inject javascript into the web page.

Please note that the attack exploits a feature which is not typically not
present in modern browsers, who remove dot segments before sending the
request. However, Mobile applications may be vulnerable.

Mitigation:

Users of Apache CXF should update to either 3.3.5 or 3.2.12. Alternatively,
it is possible to disable the service listing altogether by setting the
"hide-service-list-page" servlet parameter to "true".

Credit:

We would like to thank the GE cyber security team for reporting this issue.

--0000000000004241cf059c4265ea--
