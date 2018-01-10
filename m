X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["677" "Wednesday" "10" "January" "2018" "07:18:57" "+0000" "Radu Cotescu" "radu@apache.org" "<CAFkwx-e3akvTZGb+ZX2AtzPKMvyDu413rPmdBgoteuj-hafnRA@mail.gmail.com>" "25" "[oss-security] CVE-2017-15717: Insufficient XSS protection for HREF attributes in Apache Sling XSS Protection API" nil nil nil "1" "2018011007:18:57" "[oss-security] CVE-2017-15717: Insufficient XSS protection for HREF attributes in Apache Sling XSS Protection API" (number mark "U       radu@apache. Jan 10   25/677   " thread-indent "\"[oss-security] CVE-2017-15717: Insufficient XSS protection for HREF attributes in Apache Sling XSS Protection API\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28494 invoked by uid 550); 10 Jan 2018 12:30:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4033 invoked from network); 10 Jan 2018 07:19:27 -0000
X-Gm-Message-State: AKwxytctWYViPFhsMDp7WCvtnEEs7/58qF7/GKm6abS7V+/Rf1LTfda4
	sfFRLM4cI6ralgJkxLPojCBY/VOSvACfBT8gf95n3Q==
X-Google-Smtp-Source: ACJfBosh2m+BguXLNuqRM/LLSc571t9IeKWUKSdKRHisPzkpPZAeVGFTzFx/sMR1QuVRlJXSKqtaRtYVNNNhPtTUwhg=
X-Received: by 10.25.86.17 with SMTP id k17mr9418527lfb.67.1515568748183; Tue,
 09 Jan 2018 23:19:08 -0800 (PST)
MIME-Version: 1.0
From: Radu Cotescu <radu@apache.org>
Date: Wed, 10 Jan 2018 07:18:57 +0000
X-Gmail-Original-Message-ID: <CAFkwx-e3akvTZGb+ZX2AtzPKMvyDu413rPmdBgoteuj-hafnRA@mail.gmail.com>
Message-ID: <CAFkwx-e3akvTZGb+ZX2AtzPKMvyDu413rPmdBgoteuj-hafnRA@mail.gmail.com>
To: Sling Dev <dev@sling.apache.org>, security@sling.apache.org, users@sling.apache.org, 
	oss-security@lists.openwall.com, lkrapf@adobe.com
Content-Type: multipart/alternative; boundary="94eb2c1cd5a2de5d52056266d8b4"
Subject: [oss-security] CVE-2017-15717: Insufficient XSS protection for HREF attributes in
 Apache Sling XSS Protection API

--94eb2c1cd5a2de5d52056266d8b4
Content-Type: text/plain; charset="UTF-8"

Severity: High

Vendor: The Apache Software Foundation

Versions Affected:
Apache Sling XSS Protection API 1.0.4 to 1.0.18,
Apache Sling XSS Protection API Compat 1.1.0,
Apache Sling XSS Protection API 2.0.0

Description:
A flaw in the way URLs are escaped and encoded in the
org.apache.sling.xss.impl.XSSAPIImpl#getValidHref and
org.apache.sling.xss.impl.XSSFilterImpl#isValidHref allows special crafted
URLs to pass as valid,
although they carry XSS payloads.

Mitigation:
Users should upgrade to version 2.0.4 or later of the Apache Sling XSS
Protection
API module.

--94eb2c1cd5a2de5d52056266d8b4--
