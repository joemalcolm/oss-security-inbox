X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["569" "Wednesday" "19" "December" "2018" "19:46:03" "+0100" "=?UTF-8?B?R8OpemFwZXRpIENzZWg=?=" "gezapeti@apache.org" "<CAHydKRCdXAepr6pjqqXUSWhSnnRrrYKnNSQVjsX6V2JTvM1xNA@mail.gmail.com>" "23" "[oss-security] [CVE-2018-11799] Apache Oozie security vulnerability" nil nil nil "12" "2018121918:46:03" "[oss-security] [CVE-2018-11799] Apache Oozie security vulnerability" (number mark "U       gezapeti@apa Dec 19   23/569   " thread-indent "\"[oss-security] [CVE-2018-11799] Apache Oozie security vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23909 invoked by uid 550); 19 Dec 2018 18:47:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23598 invoked from network); 19 Dec 2018 18:46:44 -0000
X-Gm-Message-State: AA+aEWbAwdd1fyrmi2OBugJ1KoG8V9pNBrQPNxsPx39MSlC1hzvLN6jG
	rm2SlgOtzJvgiKAQCbxPdKnVYPHcypPoeColNDI=
X-Google-Smtp-Source: AFSGD/VgUCwpAIEc25REzpO5xPCT3gPyYVNwl5wpJYokD44PDoEIcbs3famM4xYNzWYUe/a7YT2tuy8OztQerHjcnxc=
X-Received: by 2002:ad4:41d0:: with SMTP id a16mr22685088qvq.55.1545245190484;
 Wed, 19 Dec 2018 10:46:30 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?G=C3=A9zapeti_Cseh?= <gezapeti@apache.org>
Date: Wed, 19 Dec 2018 19:46:03 +0100
X-Gmail-Original-Message-ID: <CAHydKRCdXAepr6pjqqXUSWhSnnRrrYKnNSQVjsX6V2JTvM1xNA@mail.gmail.com>
Message-ID: <CAHydKRCdXAepr6pjqqXUSWhSnnRrrYKnNSQVjsX6V2JTvM1xNA@mail.gmail.com>
To: user@oozie.apache.org
Cc: dev@oozie.apache.org, private@oozie.apache.org, 
	oss-security@lists.openwall.com, satishsaley@apache.org
Content-Type: multipart/alternative; boundary="000000000000ab77c3057d646ee8"
Subject: [oss-security] [CVE-2018-11799] Apache Oozie security vulnerability

--000000000000ab77c3057d646ee8
Content-Type: text/plain; charset="UTF-8"

CVE-2018-11799: Apache Oozie security vulnerability

Severity:  8.7 (High) (CVSS:3.0/AV:N/AC:L/PR:L/UI:R/S:C/C:H/I:H/A:N)

Vendor: The Apache Software Foundation

Versions Affected: Oozie versions earlier than 5.1.0

Description: A malicious user can construct an XML that results workflows
running in other user's name.

Mitigation: Upgrade to Apache Oozie 5.1.0

Credit: This issue was discovered by

*Satish Subhashrao Saley at Oath / Yahoo!*

Gezapeti Cseh

--000000000000ab77c3057d646ee8--
