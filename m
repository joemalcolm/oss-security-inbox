X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["656" "Tuesday" "19" "November" "2019" "13:41:36" "-0500" "Nathan Gough" "thenatog@apache.org" "<CAEhjM2Dr85nH_JNFJQ=f+uS7ptcht+zhKSL0w1gTXa6QvD+mWA@mail.gmail.com>" "20" "[oss-security] [CVE-2019-10080] Apache NiFi XXE information disclosure" nil nil nil "11" "2019111918:41:36" "[oss-security] [CVE-2019-10080] Apache NiFi XXE information disclosure" (number mark "U       thenatog@apa Nov 19   20/656   " thread-indent "\"[oss-security] [CVE-2019-10080] Apache NiFi XXE information disclosure\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-10080] Apache NiFi XXE information disclosure" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14193 invoked by uid 550); 19 Nov 2019 19:22:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31769 invoked from network); 19 Nov 2019 18:41:59 -0000
X-Gm-Message-State: APjAAAVAVQWqxL+WAcy4+QakIGESPe3RVHRk24ZPRUmCbODAcYxGjCII
	UQzmc5lEfoKlEN7d3SyV0eY8ILvkHn2x0Mc7Kz4=
X-Google-Smtp-Source: APXvYqwosG3F8nldNCaHyXa3jCafFgrNbZNs8sW02zIXw2eRbY5qb8qVR2Mcl3mQaURCU3vq+VhQpei+2l3svEl5Zd0=
X-Received: by 2002:a6b:cc01:: with SMTP id c1mr17050528iog.7.1574188906733;
 Tue, 19 Nov 2019 10:41:46 -0800 (PST)
MIME-Version: 1.0
From: Nathan Gough <thenatog@apache.org>
Date: Tue, 19 Nov 2019 13:41:36 -0500
X-Gmail-Original-Message-ID: <CAEhjM2Dr85nH_JNFJQ=f+uS7ptcht+zhKSL0w1gTXa6QvD+mWA@mail.gmail.com>
Message-ID: <CAEhjM2Dr85nH_JNFJQ=f+uS7ptcht+zhKSL0w1gTXa6QvD+mWA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000009899020597b76abc"
Subject: [oss-security] [CVE-2019-10080] Apache NiFi XXE information disclosure

--0000000000009899020597b76abc
Content-Type: text/plain; charset="UTF-8"

[CVEID]:CVE-2019-10080

[PRODUCT]:Apache NiFi

[VERSION]:Apache NiFi 1.3.0 to 1.9.2

[PROBLEMTYPE]:Information Disclosure

[REFERENCES]:https://nifi.apache.org/security.html#CVE-2019-10080

[DESCRIPTION]:As reported by RunningSnail, the XMLFileLookupService in NiFi
versions 1.3.0 to 1.9.2 allowed trusted users to inadvertently configure a
potentially malicious XML file. The XML file has the ability to make
external calls to services (via XXE) and reveal information such as the
versions of Java, Jersey, and Apache that the NiFI instance uses.

--0000000000009899020597b76abc--
