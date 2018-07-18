X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["664" "Wednesday" "18" "July" "2018" "09:02:27" "+0100" "Mark Cox" "mjc@apache.org" "<CANnUo4+QaK2c6e9QEWCUAfvWW5x=NpnsoJqWgt5c-Aihvgf4Rg@mail.gmail.com>" "27" "[oss-security] CVE-2018-8011: Apache HTTP Server mod_md DoS" nil nil nil "7" "2018071808:02:27" "[oss-security] CVE-2018-8011: Apache HTTP Server mod_md DoS" (number mark "U       mjc@apache.o Jul 18   27/664   " thread-indent "\"[oss-security] CVE-2018-8011: Apache HTTP Server mod_md DoS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23814 invoked by uid 550); 18 Jul 2018 08:02:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23702 invoked from network); 18 Jul 2018 08:02:41 -0000
X-Gm-Message-State: AOUpUlE9WYSlgJNg+uI1BAZ1YY8tAjIS5sgAczuuCFq+d+pC2RuRflNF
	Ri/DC1Dp9DreXTo3y1ObWJc+ozszii4Y4IcDFGw=
X-Google-Smtp-Source: AAOMgpdiPVfke6HeX2ucu1P1powPQpEKPfX7GPS9qn/cJUskgy3dM75L7/KhXN7JlUpya0IBDkJkLQhGMBJ9gy6q3uo=
X-Received: by 2002:a17:902:262:: with SMTP id 89-v6mr4895741plc.221.1531900947804;
 Wed, 18 Jul 2018 01:02:27 -0700 (PDT)
MIME-Version: 1.0
From: Mark Cox <mjc@apache.org>
Date: Wed, 18 Jul 2018 09:02:27 +0100
X-Gmail-Original-Message-ID: <CANnUo4+QaK2c6e9QEWCUAfvWW5x=NpnsoJqWgt5c-Aihvgf4Rg@mail.gmail.com>
Message-ID: <CANnUo4+QaK2c6e9QEWCUAfvWW5x=NpnsoJqWgt5c-Aihvgf4Rg@mail.gmail.com>
To: announce@httpd.apache.org, oss-security@lists.openwall.com
Cc: Apache Software Foundation HTTP Server Project <security@httpd.apache.org>
Content-Type: multipart/alternative; boundary="000000000000d337e40571417b1b"
Subject: [oss-security] CVE-2018-8011: Apache HTTP Server mod_md DoS

--000000000000d337e40571417b1b
Content-Type: text/plain; charset="UTF-8"

CVE-2018-8011: mod_md DoS via Coredumps on specially crafted requests

Severity: Moderate

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.33

Description:
By specially crafting HTTP requests, the mod_md challenge
handler would dereference a NULL pointer and cause the child
process to segfault. This could be used to DoS the server

Mitigation:
All httpd users should upgrade to 2.4.34 or later.

Credit:
The issue was discovered by Daniel Caminada

References:
https://httpd.apache.org/security/vulnerabilities_24.html#CVE-2018-8011

--000000000000d337e40571417b1b--
