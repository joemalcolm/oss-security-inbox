X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["498" "Thursday" "16" "December" "2021" "19:01:33" "-0500" "Nathan Gough" "thenatog@apache.org" nil "21" "[oss-security] CVE-2021-44145: Apache NiFi information disclosure by XXE" nil nil nil "12" nil nil (number mark "U       thenatog@apa Dec 16   21/498   " thread-indent "\"[oss-security] CVE-2021-44145: Apache NiFi information disclosure by XXE\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-44145: Apache NiFi information disclosure by XXE" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22495 invoked by uid 550); 17 Dec 2021 06:27:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9998 invoked from network); 17 Dec 2021 00:02:24 -0000
X-Gm-Message-State: AOAM531NAOsn56f5k9Z8od2eMr73jxWGslbJ4s8C0KUV87zTgmTGP8f7
	6S8ADhAXqNegE4NQNLWEnmzGZPUrPXqOUMgRYXs=
X-Google-Smtp-Source: ABdhPJyoBsdplsQaoZfehIxzdR23HlTPps9uBX8MNjjsVyacrsMMyuYm102rvsCKrtrK+tzhbJYewhjKru5zAiehCFU=
X-Received: by 2002:ac8:5c49:: with SMTP id j9mr356723qtj.253.1639699304063;
 Thu, 16 Dec 2021 16:01:44 -0800 (PST)
MIME-Version: 1.0
From: Nathan Gough <thenatog@apache.org>
Date: Thu, 16 Dec 2021 19:01:33 -0500
X-Gmail-Original-Message-ID: <CAEhjM2Am_ixc+KirjdR_i+=6pw+bjixDBN34dBXhEDpRjO9ArQ@mail.gmail.com>
Message-ID: <CAEhjM2Am_ixc+KirjdR_i+=6pw+bjixDBN34dBXhEDpRjO9ArQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000008ea4d205d34c3ecd"
Subject: [oss-security] CVE-2021-44145: Apache NiFi information disclosure by XXE

--0000000000008ea4d205d34c3ecd
Content-Type: text/plain; charset="UTF-8"

Severity: Low

Description:

In the TransformXML processor an authenticated user could configure an
XSLT file which, if it included malicious external entity calls, may
reveal sensitive information.

This issue is being tracked as NIFI-9399

Credit:

This issue was discovered by DangKhai at Viettel Cyber Security.

References:
https://nifi.apache.org/security.html#1.15.1-vulnerabilities

--0000000000008ea4d205d34c3ecd--
