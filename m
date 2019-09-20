X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["704" "Friday" "20" "September" "2019" "15:34:01" "+0200" "=?UTF-8?B?SnVhbiBQYWJsbyBTYW50b3MgUm9kcsOtZ3Vleg==?=" "juanpablo@apache.org" nil "27" nil nil nil nil "9" nil nil (number mark "U       juanpablo@ap Sep 20   27/704   " thread-indent "\"[oss-security] [CVE-2019-12407] Apache JSPWiki Cross-site scripting vulnerability related to the remember parameter\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-12407] Apache JSPWiki Cross-site scripting vulnerability related to the remember parameter" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21573 invoked by uid 550); 20 Sep 2019 14:18:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31769 invoked from network); 20 Sep 2019 13:34:22 -0000
X-Gm-Message-State: APjAAAV4DDA9zWWxr9fG3RC3tm8fk1s7z+V1DXknL8JtNz1iagZj9OsF
	6xy9QmqYSYmRC7ywcOINwYYhHueijo6iEbx78AQ=
X-Google-Smtp-Source: APXvYqx1QHSNli0HoPCoHZjSOWD96K+M1A9RYnhnAA9jpiwlSHWo8t0FltD9CVniEXYtni/ub3g5wRbZfkcZeFL5C4I=
X-Received: by 2002:a6b:8b50:: with SMTP id n77mr2032448iod.195.1568986450705;
 Fri, 20 Sep 2019 06:34:10 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Juan_Pablo_Santos_Rodr=C3=ADguez?= <juanpablo@apache.org>
Date: Fri, 20 Sep 2019 15:34:01 +0200
X-Gmail-Original-Message-ID: <CAMufup6OGHYUE=ZuHys-9S0Lg+De7peWXm7dvAodCkE3EYc-wg@mail.gmail.com>
Message-ID: <CAMufup6OGHYUE=ZuHys-9S0Lg+De7peWXm7dvAodCkE3EYc-wg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000000d42bb0592fc20fd"
Subject: [oss-security] [CVE-2019-12407] Apache JSPWiki Cross-site scripting vulnerability
 related to the remember parameter

--0000000000000d42bb0592fc20fd
Content-Type: text/plain; charset="UTF-8"

 Severity
Medium

Vendor
The Apache Software Foundation

Versions Affected
Apache JSPWiki up to 2.11.0.M4

Description
A carefully crafted plugin link invocation could trigger an XSS
vulnerability on Apache JSPWiki, related to the remember parameter on some
of the JSPs, which could allow the attacker to execute javascript in the
victim's browser and get some sensitive information about the victim.

Mitigation
Apache JSPWiki users should upgrade to 2.11.0.M5 or later.

Credit
This issue was discovered by ADLab of VenusTech.

ref: https://jspwiki-wiki.apache.org/Wiki.jsp?page=CVE-2019-12407

--0000000000000d42bb0592fc20fd--
