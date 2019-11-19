X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["632" "Tuesday" "19" "November" "2019" "13:41:39" "-0500" "Nathan Gough" "thenatog@apache.org" "<CAEhjM2CozkQMViJxNmK94gw5T9bs6f2NM4vDknCJ7hEGSCjwWA@mail.gmail.com>" "20" "[oss-security] [CVE-2019-10083] Apache NiFi process group information disclosure" nil nil nil "11" "2019111918:41:39" "[oss-security] [CVE-2019-10083] Apache NiFi process group information disclosure" (number mark "U       thenatog@apa Nov 19   20/632   " thread-indent "\"[oss-security] [CVE-2019-10083] Apache NiFi process group information disclosure\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-10083] Apache NiFi process group information disclosure" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14042 invoked by uid 550); 19 Nov 2019 19:22:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31834 invoked from network); 19 Nov 2019 18:42:02 -0000
X-Gm-Message-State: APjAAAX2h48ZHhRrh+hZqoFbn4SuRB/Rf549XGyW0gakAYUZBE/4qvPC
	WHkEa2Ok9eDsuw8VmrfmPe5frchPPgRXgkj3yK0=
X-Google-Smtp-Source: APXvYqwlBgs/boGlRVngA7AEWTnPodOaS7gZGDwdlPyB7/9xtFs/ek5sxgr2ZSYKoFWXa3EQb1KHe7eHxpsj2r4jrJc=
X-Received: by 2002:a5e:9503:: with SMTP id r3mr18860058ioj.183.1574188910424;
 Tue, 19 Nov 2019 10:41:50 -0800 (PST)
MIME-Version: 1.0
From: Nathan Gough <thenatog@apache.org>
Date: Tue, 19 Nov 2019 13:41:39 -0500
X-Gmail-Original-Message-ID: <CAEhjM2CozkQMViJxNmK94gw5T9bs6f2NM4vDknCJ7hEGSCjwWA@mail.gmail.com>
Message-ID: <CAEhjM2CozkQMViJxNmK94gw5T9bs6f2NM4vDknCJ7hEGSCjwWA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000d0bd110597b76ae2"
Subject: [oss-security] [CVE-2019-10083] Apache NiFi process group information disclosure

--000000000000d0bd110597b76ae2
Content-Type: text/plain; charset="UTF-8"

[CVEID]:CVE-2019-10083

[PRODUCT]:Apache NiFi

[VERSION]:Apache NiFi 1.3.0 to 1.9.2

[PROBLEMTYPE]:Information Disclosure

[REFERENCES]:https://nifi.apache.org/security.html#CVE-2019-10083

[DESCRIPTION]:As reported by Mark Payne, when updating a Process Group via
the API in NiFi versions 1.3.0 to 1.9.2, the response to the request
includes all of its contents (at the top most level, not recursively). The
response included details about processors and controller services which
the user may not have had read access to.

--000000000000d0bd110597b76ae2--
