X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1163" "Friday" "4" "October" "2019" "10:33:25" "+0900" "Akira Ajisaka" "aajisaka@apache.org" "<CAP+3qq42G5=pb8CmhTbEhuXpThr7S882-_1pPAPNV0cCc9QW_A@mail.gmail.com>" "43" "[oss-security] CVE-2018-11768: Apache Hadoop HDFS FSImage Corruption" nil nil nil "10" "2019100401:33:25" "[oss-security] CVE-2018-11768: Apache Hadoop HDFS FSImage Corruption" (number mark "U       aajisaka@apa Oct  4   43/1163  " thread-indent "\"[oss-security] CVE-2018-11768: Apache Hadoop HDFS FSImage Corruption\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2018-11768: Apache Hadoop HDFS FSImage Corruption" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1697 invoked by uid 550); 4 Oct 2019 07:03:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19933 invoked from network); 4 Oct 2019 01:34:43 -0000
X-Gm-Message-State: APjAAAVYUTSIYmRNE8E+QlI805okOWBAumaN0IE7z3IT9u6cf4dAWPhA
	yvq65pLyQhL0eLk5VN2bWn3gCEqJDpCqZ84HRAc=
X-Google-Smtp-Source: APXvYqx8303leyk0/e6/LVDXjijDwzWxv60q8g6ABVZ9GMLtEFpMbb4DVYoY2QuuQGYmF8FONeWt96UUHyewiQfqfXc=
X-Received: by 2002:a19:ef17:: with SMTP id n23mr7024379lfh.109.1570152869638;
 Thu, 03 Oct 2019 18:34:29 -0700 (PDT)
MIME-Version: 1.0
From: Akira Ajisaka <aajisaka@apache.org>
Date: Fri, 4 Oct 2019 10:33:25 +0900
X-Gmail-Original-Message-ID: <CAP+3qq42G5=pb8CmhTbEhuXpThr7S882-_1pPAPNV0cCc9QW_A@mail.gmail.com>
Message-ID: <CAP+3qq42G5=pb8CmhTbEhuXpThr7S882-_1pPAPNV0cCc9QW_A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000009b73305940bb4f8"
Subject: [oss-security] CVE-2018-11768: Apache Hadoop HDFS FSImage Corruption

--00000000000009b73305940bb4f8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

CVE-2018-11768: HDFS FSImage Corruption


Severity: Critical


Vendor: The Apache Software Foundation


Versions affected:

3.1.0 to 3.1.1, 3.0.0-alpha1 to 3.0.3, 2.9.0 to 2.9.1, 2.0.0-alpha to 2.8.4


Description:

There is a mismatch in the size of the fields used to store user/group
information between memory and disk representation. This causes the
user/group information to be corrupted across storing in fsimage and
reading back from fsimage.


Mitigation:

Users should upgrade to Apache Hadoop 2.8.5, 2.9.2, 3.1.2 or upper. This
vulnerability fix contains a fsimage layout change, so once the image is
saved in the new layout format you cannot go back to a version that doesn=
=E2=80=99t
support the newer layout. This means that once 2.7.x users upgraded to the
fixed version, they cannot downgrade to 2.7.x because there is no fixed
version in 2.7.x. We suggest downgrade to 2.8.5 or upper version that
contains the vulnerability fix.


Credit:

This issue was discovered by Ekanth Sethuramalingam.

--00000000000009b73305940bb4f8--
