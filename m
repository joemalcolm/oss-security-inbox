X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["710" "Friday" "20" "September" "2019" "15:28:02" "+0200" "=?UTF-8?B?SnVhbiBQYWJsbyBTYW50b3MgUm9kcsOtZ3Vleg==?=" "juanpablo@apache.org" nil "27" nil nil nil nil "9" nil nil (number mark "U       juanpablo@ap Sep 20   27/710   " thread-indent "\"[oss-security] [CVE-2019-10087] Apache JSPWiki Cross-site scripting vulnerability in Page Revision History\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-10087] Apache JSPWiki Cross-site scripting vulnerability in Page Revision History" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5940 invoked by uid 550); 20 Sep 2019 13:30:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5541 invoked from network); 20 Sep 2019 13:28:24 -0000
X-Gm-Message-State: APjAAAXrdR32OFfREgkvRNK/K8/I71/Si/r9HOXOmBC1jnm00nh92Li3
	FQARwIvvdooGfk1i+W+XbNygLzSs85k7AeP+Ojg=
X-Google-Smtp-Source: APXvYqyft2XbNV8dMcZXFDkeWVuQtD0qBDo6E1GNQOXHN9dmE8+qPjgSEeGPzjIMhnGkFaP9BqAicJzR77vx84W7/go=
X-Received: by 2002:a6b:8f4b:: with SMTP id r72mr19535089iod.43.1568986091756;
 Fri, 20 Sep 2019 06:28:11 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Juan_Pablo_Santos_Rodr=C3=ADguez?= <juanpablo@apache.org>
Date: Fri, 20 Sep 2019 15:28:02 +0200
X-Gmail-Original-Message-ID: <CAMufup7Dfr-=DBEKOHc=Fv4L2QhRV6JTH4xrZD21Z54sA=UpYA@mail.gmail.com>
Message-ID: <CAMufup7Dfr-=DBEKOHc=Fv4L2QhRV6JTH4xrZD21Z54sA=UpYA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000a823010592fc0ab9"
Subject: [oss-security] [CVE-2019-10087] Apache JSPWiki Cross-site scripting vulnerability in
 Page Revision History

--000000000000a823010592fc0ab9
Content-Type: text/plain; charset="UTF-8"

 Severity
Medium

Vendor
The Apache Software Foundation

Versions Affected
Apache JSPWiki up to 2.11.0.M4

Description
A carefully crafted plugin link invocation could trigger an XSS
vulnerability on Apache JSPWiki, related to the Page Revision History,
which could allow the attacker to execute javascript in the victim's
browser and get some sensitive information about the victim.

Mitigation
Apache JSPWiki users should upgrade to 2.11.0.M5 or later.

Credit
This issue was discovered by Jegatheesh A, from ZOHO-CRM Security team.

ref: https://jspwiki-wiki.apache.org/Wiki.jsp?page=CVE-2019-10087

--000000000000a823010592fc0ab9--
