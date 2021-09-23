X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1401" "Thursday" "23" "September" "2021" "16:02:27" "-0700" "Clint Wylie" "cwylie@apache.org" nil "34" "[oss-security] CVE-2021-36749: Apache Druid: The HTTP inputSource allows authenticated users to read data from other sources than intended (incomplete fix of CVE-2021-26920)" nil nil nil "9" nil nil (number mark "U       cwylie@apach Sep 23   34/1401  " thread-indent "\"[oss-security] CVE-2021-36749: Apache Druid: The HTTP inputSource allows authenticated users to read data from other sources than intended (incomplete fix of CVE-2021-26920)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-36749: Apache Druid: The HTTP inputSource allows authenticated users to read data from other sources than intended (incomplete fix of CVE-2021-26920)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25809 invoked by uid 550); 24 Sep 2021 04:39:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11376 invoked from network); 23 Sep 2021 23:02:53 -0000
X-Gm-Message-State: AOAM532QbDXOwXhhmaBEBdn1ErHpuTC/cWJW3++Ruq01pQsYft/xMByM
	xZI/5SCxAcFl9wMrA7lfyntTuVDZ+kdTOI/1GUA=
X-Google-Smtp-Source: ABdhPJw0KKmfFJejOTDmUnnECX88IfihH/c0YANlRGpphgnYSP+e6t7QmAv8bMsloEYVoGuEDGY0C76LQp72tXvw6kQ=
X-Received: by 2002:a17:90b:4ac1:: with SMTP id mh1mr20881285pjb.238.1632438158609;
 Thu, 23 Sep 2021 16:02:38 -0700 (PDT)
MIME-Version: 1.0
From: Clint Wylie <cwylie@apache.org>
Date: Thu, 23 Sep 2021 16:02:27 -0700
X-Gmail-Original-Message-ID: <CACxuw4V2_8j_Q=o2OcsDKE3NJ5fynk6Nf74UpYCDkM1gvhsPLg@mail.gmail.com>
Message-ID: <CACxuw4V2_8j_Q=o2OcsDKE3NJ5fynk6Nf74UpYCDkM1gvhsPLg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2021-36749: Apache Druid: The HTTP inputSource allows
 authenticated users to read data from other sources than intended (incomplete
 fix of CVE-2021-26920)

Severity: low

Description:

In the Druid ingestion system, the InputSource is used for reading
data from a certain data source. However, the HTTP InputSource allows
authenticated users to read data from other sources than intended,
such as the local file system, with the privileges of the Druid server
process. This is not an elevation of privilege when users access Druid
directly, since Druid also provides the Local InputSource, which
allows the same level of access. But it is problematic when users
interact with Druid indirectly through an application that allows
users to specify the HTTP InputSource, but not the Local InputSource.
In this case, users could bypass the application-level restriction by
passing a file URL to the HTTP InputSource.

This issue was previously mentioned as being fixed in 0.21.0 as per
CVE-2021-26920 but was not fixed in 0.21.0 or 0.21.1.

Mitigation:

Users can avoid the issue by upgrading to 0.22.0 or a higher version.

In an earlier version than 0.22.0, when the user application wants to
restrict the access to the local file system, it should disallow all
InputSources that can read local files, that is the Local, HTTP, and
HDFS InputSources.

Credit:

This issue was originally discovered by chybeta from the Security Team
of Alibaba Cloud.
ABKing and g0udan from the Security Team of Xiaomi discovered that it
was still an issue after CVE-2021-26920.
