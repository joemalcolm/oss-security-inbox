X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["722" "Wednesday" "24" "July" "2019" "09:26:18" "+0200" "=?UTF-8?B?U3RpZyBSb2hkZSBEw7hzc2luZw==?=" "srdo@apache.org" "<CAG09ER2cYOo+cN+BVotmxugxaMq_ogswvuQ+Z+8W2LahK-DyPg@mail.gmail.com>" "19" "[oss-security] [CVE-2019-0202] Apache Storm Logviewer file system access vulnerability" nil nil nil "7" "2019072407:26:18" "[oss-security] [CVE-2019-0202] Apache Storm Logviewer file system access vulnerability" (number mark "U       srdo@apache. Jul 24   19/722   " thread-indent "\"[oss-security] [CVE-2019-0202] Apache Storm Logviewer file system access vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-0202] Apache Storm Logviewer file system access vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14136 invoked by uid 550); 24 Jul 2019 08:06:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28290 invoked from network); 24 Jul 2019 07:26:50 -0000
X-Gm-Message-State: APjAAAUFdhJa7YCQ6RC6VR5EyCyQ/cSXTXsfkSqci4HfK8U5/8MICEcg
	ur0bKFiJ5QxcM+uVe86OeEWbOougyN/QhJaF1ZU=
X-Google-Smtp-Source: APXvYqzPsBeQmOIhaKJeWrIqqlRohzfGyf97mZ9qYj//MkhSdFSK/+V7z2LFWiQQHU1dyjTbLU3vA84r7Gyr2vc1MxU=
X-Received: by 2002:a9d:7a82:: with SMTP id l2mr60141475otn.120.1563953189274;
 Wed, 24 Jul 2019 00:26:29 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Stig_Rohde_D=C3=B8ssing?= <srdo@apache.org>
Date: Wed, 24 Jul 2019 09:26:18 +0200
X-Gmail-Original-Message-ID: <CAG09ER2cYOo+cN+BVotmxugxaMq_ogswvuQ+Z+8W2LahK-DyPg@mail.gmail.com>
Message-ID: <CAG09ER2cYOo+cN+BVotmxugxaMq_ogswvuQ+Z+8W2LahK-DyPg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000004ac6ff058e683ab6"
Subject: [oss-security] [CVE-2019-0202] Apache Storm Logviewer file system access vulnerability

--0000000000004ac6ff058e683ab6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

[CVEID]:CVE-2019-0202[PRODUCT]:Apache Storm[VERSION]:Apache Storm
0.9.1-incubating to 1.2.2[PROBLEMTYPE]:CWE-200: Information
Exposure[DESCRIPTION]:The Apache Storm Logviewer daemon exposes
HTTP-accessible endpoints to read/search log files on hosts running
Storm.
              In Apache Storm versions 0.9.1-incubating to 1.2.2, it
is possible to read files off the
              host's file system that were not intended to be
accessible via these endpoints.

Mitigation: Upgrade to Apache Storm 1.2.3 or later.

Credit: Stig Rohde D=C3=B8ssing for discovery and fix

--0000000000004ac6ff058e683ab6--
