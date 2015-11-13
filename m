X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2767" "Friday" "13" "November" "2015" "12:45:13" "+0530" "Dis close" "disclose@cybersecurityworks.com" "<CAMWaY3P-bJSw2B2mEs2iDBgoZbuWNNg-AaUJxsPyGu1mOC+Ewg@mail.gmail.com>" "97" "[oss-security] CVE request: Reflected XSS in OcPortal CMS 9.0.20" nil nil nil "11" "2015111307:15:13" "[oss-security] CVE request: Reflected XSS in OcPortal CMS 9.0.20" (number mark "U       disclose@cyb Nov 13   97/2767  " thread-indent "\"[oss-security] CVE request: Reflected XSS in OcPortal CMS 9.0.20\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22303 invoked by uid 550); 13 Nov 2015 13:02:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5679 invoked from network); 13 Nov 2015 07:15:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cybersecurityworks_com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:date:message-id:subject:from:to:cc:content-type;
        bh=+paa82DFz4+Lmgf2nS7r1fhuvO7z4lUMcuBuiXvKo+E=;
        b=V85+L8GSIbJn0gWTAoOHbp/wIz/rROJ5JqdBR4Uwiy6C+SkjZWolmLA4d7q8DZB+nK
         es7BQwkgUNpzbe86+eKS/Cwsh/h6Q3vUFFmAZbKTRVINOqOGvCUBG6oYRaLvSxKAS2to
         iFqd0fQJkMm9o5Y0BABjaB2rP2pQZHOaXtu493BxpSfZZeZyLtXPDvNnWL21THv8LvcU
         mwe42ne6AK0e2BpMowx+nZp7rWOo5s9m/dKBvuO8Cgg9XAkB1K/WyXykNtGw0yNTnQCl
         N6X4kcLpg+OaNMR+5HqlG9dsSORAhBPnC4A7/XNv9jnpjjA0zkmb7ytRGLqb4t/Bni+D
         p7LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
         :content-type;
        bh=+paa82DFz4+Lmgf2nS7r1fhuvO7z4lUMcuBuiXvKo+E=;
        b=QVDWc0w6k9SxV0lH/5lxxjJ8ZR3zNrhAC7ctkQFcH8aqUyapr7WRFb8iQUm7vHG7v0
         lI1U+mHW/7hMVuTVvSFjQPCeqnXznhq9ekfFv23qBkc2exztslIB61ZL08NGcHc0n9R1
         YjpXpzUUI6bb82/so3jK3v1rJzuz0unsyON2isMRUrrL94XJe4UC4aSLVBgWd/Dodaek
         VHtL4Zl2wODCTj8eOG/hiSGEzFqvDsEvUtxqBKlo4TJ+RETXczDA7czHFc8UyP01ct2y
         acN33s8DqqtlryHFEn+zmKyGv6KGzy49cA9fz8yvLTk8s/mhjotvftfpE/PLLTP2ob4T
         zGLA==
X-Gm-Message-State: ALoCoQk8Pt84n0ytsTdMWECPRFhMpfTGOCFWJvhMiuzxCvTSx36SkuA3F5JSjTujJlKd4i97BI9G
MIME-Version: 1.0
X-Received: by 10.50.13.42 with SMTP id e10mr1731546igc.72.1447398913082; Thu,
 12 Nov 2015 23:15:13 -0800 (PST)
Date: Fri, 13 Nov 2015 12:45:13 +0530
Message-ID: <CAMWaY3P-bJSw2B2mEs2iDBgoZbuWNNg-AaUJxsPyGu1mOC+Ewg@mail.gmail.com>
From: Dis close <disclose@cybersecurityworks.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=089e013c66d4102156052466d256
Subject: [oss-security] CVE request: Reflected XSS in OcPortal CMS 9.0.20

--089e013c66d4102156052466d256
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello List:

Can a CVE be assigned to the following ?

Details
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
Title                              :Reflected cross-site scripting
vulnerability in *OcPortal CMS*
Version                         : 9.0.20
Vendor Homepage         :http://ocportal.com/start.htm
Vulnerability Type          :Reflected cross-site scripting vulnerability
(XSS)
Risk                             :High
Status                          :Fixed

Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
OcPortal CMS 9.0.20 is prone to a cross-site scripting vulnerability
because it fails to properly sanitize user-supplied input.A value in a
template that is not meant to contain HTML is marked as an escaped value
({VALUE*}). This meant that =E2=80=98html entities=E2=80=99 are put in repl=
acement of HTML
control characters.



Vulnerable Parameter
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
[*FIELD_NAME*]


Remote Exploitable
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
*Yes*

Technical Details
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

https://github.com/cybersecurityworks/Disclosed/issues/11




Solution
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
Upgrade to latest version 9.0.21
https://ocportal.com/site/sites.htm

OR

Vendor has released patch for this issue, please refer below link
http://ocportal.com/site/news/view/security_issues/security-patch-for-xss.h=
tm?filter=3D1%2C2%2C3%2C29%2C30



Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
2015-11-06 - First Contact
2015-11-06 - Vendor Response
2015-11-07 - Vendor Fixed
2015-11-13 - Public Disclosure

Credits & Author
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
Arjun Basnet from Cyber Security Works Pvt. Ltd (
http://www.cybersecurityworks.com/)

About Cybersecurityworks
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
Cybersecurity Works is basically an auditing company passionate working on
findings & reporting security flaws & vulnerabilities on web application
and network. As professionals, we handle each client differently based on
their unique requirements. Visit our website
http://www.cybersecurityworks.com/ for more information.


--=20
----------
Cheers !!!

Team CSW

--089e013c66d4102156052466d256--
