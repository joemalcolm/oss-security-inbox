X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["922" "Tuesday" "26" "September" "2017" "16:53:53" "+0200" "Alex R" "alexr@apache.org" "<CAPNiXbGAjOKHZH02R+T5HbtXs0F8OLbPz=SZrG4G+ZqgX--wBA@mail.gmail.com>" "33" "[oss-security] CVE-2017-9790: Libprocess might crash when decoding an HTTP request with absent path." nil nil nil "9" "2017092614:53:53" "[oss-security] CVE-2017-9790: Libprocess might crash when decoding an HTTP request with absent path." (number mark "U       alexr@apache Sep 26   33/922   " thread-indent "\"[oss-security] CVE-2017-9790: Libprocess might crash when decoding an HTTP request with absent path.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32071 invoked by uid 550); 26 Sep 2017 15:09:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32462 invoked from network); 26 Sep 2017 14:54:16 -0000
X-Gm-Message-State: AHPjjUinRvZdwNGVp+Aw0HoFpIwW9QosMN2mbLpGryJ3VHUDUcf8XsIq
	CPGkrCDwaMNrE05SWZ5DNWG+Cr0UrjIEKIshX74=
X-Google-Smtp-Source: AOwi7QARIDncZvYlQEwtS1FZ0QbRn3Z4OhjPVW4C/eSivlzBYaJZtT4HXTsPiqxEtarwm79Ql1jPpAsk8PuVDhdcCGo=
X-Received: by 10.176.85.94 with SMTP id u30mr10385148uaa.117.1506437633896;
 Tue, 26 Sep 2017 07:53:53 -0700 (PDT)
MIME-Version: 1.0
From: Alex R <alexr@apache.org>
Date: Tue, 26 Sep 2017 16:53:53 +0200
X-Gmail-Original-Message-ID: <CAPNiXbGAjOKHZH02R+T5HbtXs0F8OLbPz=SZrG4G+ZqgX--wBA@mail.gmail.com>
Message-ID: <CAPNiXbGAjOKHZH02R+T5HbtXs0F8OLbPz=SZrG4G+ZqgX--wBA@mail.gmail.com>
To: dev <dev@mesos.apache.org>, user <user@mesos.apache.org>, 
	Amon Flair <amon@nandynarwhals.org>, Lyon Yang <lyon.yang.s@gmail.com>, 
	security <security@apache.org>, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="f403045dd9740b776a055a18d813"
Subject: [oss-security] CVE-2017-9790: Libprocess might crash when decoding an HTTP request
 with absent path.

--f403045dd9740b776a055a18d813
Content-Type: text/plain; charset="UTF-8"

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Mesos 1.1.0 to 1.3.0
The unsupported Apache Mesos 1.0.x as well as 0.x versions may be also
affected.

Description:
When handling a libprocess message wrapped in an HTTP request, libprocess
crashes if the request path is empty, because the parser assumes the request
path always starts with '/'. A malicious actor can therefore cause a denial
of service of Mesos masters rendering the Mesos-controlled cluster
inoperable.

Mitigation:
pre-1.1.x users should upgrade to at least 1.1.3
1.1.x users should upgrade to 1.1.3
1.2.x users should upgrade to 1.2.2
1.3.0 users should upgrade to 1.3.1
1.4.0-dev users should obtain Mesos 1.4.0

Credit:
This issue was discovered by Lyon Yang and Jeremy Heng

Alex on behalf of Mesos PMC

--f403045dd9740b776a055a18d813--
