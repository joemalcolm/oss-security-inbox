X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["428" "Wednesday" "16" "June" "2021" "10:49:44" "+0100" "Colm O hEigeartaigh" "coheigea@apache.org" nil "10" "[oss-security] CVE-2021-30468: Apache CXF Denial of service vulnerability in parsing JSON via JsonMapObjectReaderWriter" nil nil nil "6" nil nil (number mark "U       coheigea@apa Jun 16   10/428   " thread-indent "\"[oss-security] CVE-2021-30468: Apache CXF Denial of service vulnerability in parsing JSON via JsonMapObjectReaderWriter\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-30468: Apache CXF Denial of service vulnerability in parsing JSON via JsonMapObjectReaderWriter" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8133 invoked by uid 550); 16 Jun 2021 11:29:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11653 invoked from network); 16 Jun 2021 09:50:12 -0000
X-Gm-Message-State: AOAM533VngNofKd5Xr/U39X6H0TvD499zZsy87OcLJcbc2MAUcxEqsMJ
	o/0+QoeRe86bRvgRKp7+ycdbdKl8w+JBFwql9mE=
X-Google-Smtp-Source: ABdhPJyXhAabA8laPBGMPywyiJqnyEO+lCTo4yDnzFy9cpdctqKMS15njgTUldbtMwXUUMGlgLxIUGa9jUsyZBNpkG8=
X-Received: by 2002:adf:ed91:: with SMTP id c17mr2681802wro.146.1623836995256;
 Wed, 16 Jun 2021 02:49:55 -0700 (PDT)
MIME-Version: 1.0
From: Colm O hEigeartaigh <coheigea@apache.org>
Date: Wed, 16 Jun 2021 10:49:44 +0100
X-Gmail-Original-Message-ID: <CAB8XdGAOHxx1sk1-RpZyJtvXiZ7sSKKN3aRCnUTLwXBuraAWGw@mail.gmail.com>
Message-ID: <CAB8XdGAOHxx1sk1-RpZyJtvXiZ7sSKKN3aRCnUTLwXBuraAWGw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2021-30468: Apache CXF Denial of service vulnerability in parsing
 JSON via JsonMapObjectReaderWriter

A vulnerability in the JsonMapObjectReaderWriter of Apache CXF allows
an attacker to submit malformed JSON to a web service, which results
in the thread getting stuck in an infinite loop, consuming CPU
indefinitely.

This issue affects Apache CXF versions prior to 3.4.4; Apache CXF
versions prior to 3.3.11.

For more information please refer to the CXF security advisories page:
http://cxf.apache.org/security-advisories.html
