X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1391" "Friday" "23" "August" "2019" "16:45:10" "+0100" "Colm O hEigeartaigh" "coheigea@apache.org" "<CAB8XdGCSzjGtGOhbEv0QdfvwcfJpAr=kyAb4SYM+BKjgM7aJYw@mail.gmail.com>" "44" "[oss-security] [CVE-2019-12400] Apache Santuario potentially loads XML parsing code from an untrusted source" "^Date:" nil nil "8" "2019082315:45:10" "[oss-security] [CVE-2019-12400] Apache Santuario potentially loads XML parsing code from an untrusted source" (number mark "U       coheigea@apa Aug 23   44/1391  " thread-indent "\"[oss-security] [CVE-2019-12400] Apache Santuario potentially loads XML parsing code from an untrusted source\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-12400] Apache Santuario potentially loads XML parsing code from an untrusted source" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11927 invoked by uid 550); 23 Aug 2019 16:08:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30218 invoked from network); 23 Aug 2019 15:45:34 -0000
X-Gm-Message-State: APjAAAV8Q3CO9AW+Ogxtpr/VJBlAJPztMJi3Qu3W3KxBwtttfNRUKnUn
	rs7azbB7So/aNZVtmW4OhHdYoulJ/Tx938HpJf0=
X-Google-Smtp-Source: APXvYqyK4leWvDTCarzE1kDPg0mD/vCKpogpIClOjFqQ86W9Lryq3RGXCl84EZfBNqyq/2WNubMGnSBi87qhaR0DKuc=
X-Received: by 2002:a17:902:7581:: with SMTP id j1mr5509844pll.289.1566575121716;
 Fri, 23 Aug 2019 08:45:21 -0700 (PDT)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAB8XdGCSzjGtGOhbEv0QdfvwcfJpAr=kyAb4SYM+BKjgM7aJYw@mail.gmail.com>
Message-ID: <CAB8XdGCSzjGtGOhbEv0QdfvwcfJpAr=kyAb4SYM+BKjgM7aJYw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000a4dd990590cab167"
Date: Fri, 23 Aug 2019 16:45:10 +0100
From: Colm O hEigeartaigh <coheigea@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2019-12400] Apache Santuario potentially loads XML parsing code
 from an untrusted source
To: oss-security@lists.openwall.com

--000000000000a4dd990590cab167
Content-Type: text/plain; charset="UTF-8"

The following security advisory is announced for the Apache Santuario - XML
Security for Java project, which is fixed in the recent 2.1.4 release.

[CVEID]:CVE-2019-12400
[PRODUCT]:Apache Santuario - XML Security for Java
[VERSION]:All 2.0.x releases from 2.0.3, all 2.1.x releases before 2.1.4.
[PROBLEMTYPE]:Process Control
[REFERENCES]:
http://santuario.apache.org/secadv.data/CVE-2019-12400.asc?version=1&modificationDate=1566573083000&api=v2
[DESCRIPTION]:In version 2.0.3 of Apache Santuario XML Security for Java, a
caching mechanism
              was introduced to speed up creating new XML documents using a
static pool of
              DocumentBuilders.

              However, if some untrusted code can register a malicious
implementation with
              the thread context class loader first, then this
implementation might be
              cached and re-used by Apache Santuario - XML Security for
Java, leading to
              potential security flaws when validating signed documents,
etc.

For more information, please see the security advisories page of Apache
Santuario: http://santuario.apache.org/secadv.html

-- 
Colm O hEigeartaigh

Talend Community Coder
http://coders.talend.com


-- 
Colm O hEigeartaigh

Talend Community Coder
http://coders.talend.com

--000000000000a4dd990590cab167--
