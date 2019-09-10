X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["662" "Tuesday" "10" "September" "2019" "15:29:24" "-0700" "Jacopo Cappellato" "jacopoc@apache.org" "<CAEvdU_2eGL_EiXRRUCHgaE=HMGtfn1uDH1-ckaWAuJ=CTvNfdg@mail.gmail.com>" "30" "[oss-security] [CVE-2019-10073] Apache OFBiz XSS vulnerability in the \"ecommerce\" component" nil nil nil "9" "2019091022:29:24" "[oss-security] [CVE-2019-10073] Apache OFBiz XSS vulnerability in the \"ecommerce\" component" (number mark "U       jacopoc@apac Sep 10   30/662   " thread-indent "\"[oss-security] [CVE-2019-10073] Apache OFBiz XSS vulnerability in the \"ecommerce\" component\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-10073] Apache OFBiz XSS vulnerability in the \"ecommerce\" component" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22008 invoked by uid 550); 11 Sep 2019 05:19:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15938 invoked from network); 10 Sep 2019 22:29:48 -0000
X-Gm-Message-State: APjAAAU7bhELUsaYd/FOFOQ1cw2aWSiU0/7BG8KYyhKSgfTpEm7BNrms
	GYYjPx4dg5Qfm5K3a+ciSbgTBBvUq1R/xTpInY8=
X-Google-Smtp-Source: APXvYqza0rU0L2Ll0RIN3oeQZrrE1kJLbfhGTJSka+HsGMIFamlGbZU9a9LRowTLoBFvNGNbS1NS5K9sjg2ImwrVsIY=
X-Received: by 2002:a5d:49c2:: with SMTP id t2mr27913699wrs.351.1568154575619;
 Tue, 10 Sep 2019 15:29:35 -0700 (PDT)
MIME-Version: 1.0
From: Jacopo Cappellato <jacopoc@apache.org>
Date: Tue, 10 Sep 2019 15:29:24 -0700
X-Gmail-Original-Message-ID: <CAEvdU_2eGL_EiXRRUCHgaE=HMGtfn1uDH1-ckaWAuJ=CTvNfdg@mail.gmail.com>
Message-ID: <CAEvdU_2eGL_EiXRRUCHgaE=HMGtfn1uDH1-ckaWAuJ=CTvNfdg@mail.gmail.com>
To: "user@ofbiz.apache.org ML" <user@ofbiz.apache.org>, Dev list <dev@ofbiz.apache.org>, announce@apache.org, 
	security@ofbiz.apache.org, oss-security@lists.openwall.com, 
	Vikash Patnaik <vikash.patnaik@outlook.com>, kiitkp03@gmail.com
Content-Type: multipart/alternative; boundary="0000000000006ed23905923a7079"
Subject: [oss-security] [CVE-2019-10073] Apache OFBiz XSS vulnerability in the "ecommerce" component

--0000000000006ed23905923a7079
Content-Type: text/plain; charset="UTF-8"

Severity:
Important

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz 16.11.01 to 16.11.05

Description:
The "Blog", "Forum", "Contact Us" screens of the template "ecommerce"
application bundled in Apache OFBiz are weak to Stored XSS attacks.

Mitigation:
Upgrade to 16.11.06
or manually apply the following commits on branch 16.11:
1858438, 1858543, 1860595 and 1860616
----

Credit:
Vikash Patnaik <vikash.patnaik@outlook.com>
Dinesh Kumar Mohanty <kiitkp03@gmail.com>

References:
http://ofbiz.apache.org/download.html#vulnerabilities

--0000000000006ed23905923a7079--
