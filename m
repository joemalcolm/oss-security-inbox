Received: (qmail 1106 invoked by uid 550); 19 May 2026 21:40:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19631 invoked from network); 19 May 2026 21:32:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1779226317;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=QH9skFookOd4vZeqNaQRGb8PmstDma4CWsJbOEMtH20=;
	b=ZQYYIcYCkjpMOVayeH05P8Rml7yTHvRkPabmcDz2gnDn+60AZpzeNGO83U92ZME4t5d+ft
	6PV62z/c1fHM+b76sp2oFAYcOuCXIO+W6GrjoLAVbmpYTrPBSsVdhuoDHE/5tlDDa/9kyd
	GSuDQB11kQ+Dn5+qf2COacBHlwZjPu1To9FxIdgvQt+gDhU8LbuIRwvVlC4wCpouNp3TqS
	hhUb5Rcy3F/3RYC2Z3HkWBMUTp8Aakpm6MT9VRKfBqJ1/zKN3BxYU+S1Z048ovxpN/LryZ
	NUc6YiDUydamDNT1BC/HBzq0R5HdsJKPSwZDJxY6Ohz79lyzgwSaTgwzJM3CEQ==
Message-ID: <04f8498a-b9a8-4189-8c6f-9a4f3e386aa1@cpansec.org>
Date: Tue, 19 May 2026 22:31:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB, en-ZA
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-Cause: dmFkZTGCoGqlETkA9/yxtdjj8O4c42Ro3ZcjYrtrnluTiw7Y8+IQOkUfGGLXoZ/9oNPtviwN2KWxzHNpHARWwVLClvV6SYYrn2JlVXJdhuQVHK7gOY+9Zb2zMYnDS8y0mca7cGXfNpItRJ7R5eH+D9mQist7+xdqUqUOYXfgkBcW6QSTt4HREEF1QEgO9t04bjYXrL/kq5fd8p5WTqHp9+qIpHs8/lrbVQqPKthqv6X2iBLjrJs/FAcbuBhw+hInlnDiFEj4mGgqVdkl4DOkj2eMVlc9qf039bxcufS9GzGg4Yd4fCJwOO3z9kJS4TWy4huCvJkCmIsFHuj245vhiE9U1UM5RfLatgeJFFL6vMf30FWQsPQqVABs1155v/3XKuX2qx3xfRROVpaVgrOKcDVlnRwehGDXuo4Pa5QvXoyk5Vks+0EOypMJEee0MeEsaPHfs8OTbQFgOPUhHZo3dgX+WMT5ctQfBGDzLHijnntZWV3vexRDP/gKh4kr1Wga+vg56YV3Ow9osGqvvLVj2w7FFiuuESVKcSw9d7vBi6KgHR7xgKCu1YmYdyU0y8pFafcj6r0AKSKjJNC1fISJqTTfVy7lWLgFsCZ1QFL/0MqlTwkKgOqzmvu4BA52Q27F54+Kgu0rVsXlGH6z21dA86S7jiH5zYfAl2ne4wWK6Sf0K2jibw
X-GND-State: clean
X-GND-Score: 0
Subject: [oss-security] CVE-2026-5090: Template::Plugin::HTML versions through 3.102 for Perl
 allows HTML and JavaScript to be injected

========================================================================
CVE-2026-5090                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-5090
   Distribution:  Template-Toolkit
       Versions:  through 3.102

       MetaCPAN:  https://metacpan.org/dist/Template-Toolkit
       VCS Repo:  https://github.com/abw/Template2


Template::Plugin::HTML versions through 3.102 for Perl allows HTML and
JavaScript to be injected

Description
-----------
Template::Plugin::HTML versions through 3.102 for Perl allows HTML and
JavaScript to be injected.

The html_filter function did not escape single quotes. HTML attributes
inside of single quotes could be have code injected.  For example, the
variable "var" in

     <a id='ref' title='[% var | html %]'>

would not be properly escaped. An attacker could insert some limited
HTML and JavaScript, for example,

     var = " ' onclick='while (true) { alert(1) }'"

Note that arbitrary HTML and JavaScript would be difficult to inject,
because angle brackets, ampersands and double-quotes would still be
escaped.

Problem types
-------------
- CWE-79 Improper Neutralization of Input During Web Page Generation

Workarounds
-----------
Attribute values in templates that contain escaped HTML should use
double quotes instead of single quotes.


References
----------
https://github.com/abw/Template2/issues/327
https://github.com/abw/Template2/pull/337/changes/11c78a7a771d4af505efeb754a0b8775689c2eae

Timeline
--------
- 2024-12-01: Issue reported in GitHub.
- 2026-02-21: Pull request submitted.
- 2026-03-22: Pull request merged.
- 2026-03-22: Issue reported to CPANSec.
- 2026-03-28: CVE assigned.



