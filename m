X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["649" "Wednesday" "18" "July" "2018" "09:01:20" "+0100" "Mark Cox" "mjc@apache.org" "<CANnUo4K3qXCFEeP_3K8z3VLVva==9e9LBzFad-DGSWupm8XScg@mail.gmail.com>" "27" "[oss-security] CVE-2018-1333: Apache HTTP Server HTTP/2 DoS" nil nil nil "7" "2018071808:01:20" "[oss-security] CVE-2018-1333: Apache HTTP Server HTTP/2 DoS" (number mark "U       mjc@apache.o Jul 18   27/649   " thread-indent "\"[oss-security] CVE-2018-1333: Apache HTTP Server HTTP/2 DoS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15742 invoked by uid 550); 18 Jul 2018 08:01:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15718 invoked from network); 18 Jul 2018 08:01:35 -0000
X-Gm-Message-State: AOUpUlGTAgAQhi6ZgIKg77RCyjCTsVby5KqwMCJdgddbXSnKxyetDR/j
	btIfXEIdFmg4uwlrjV+cMpR44eHW8FxT5P+t6L4=
X-Google-Smtp-Source: AAOMgpdfJinuQxZb0j7fwLEEI+gaFCAc9R3ot05P47IX5g1b0E65UuZCh3XkejiIn+tn5qdOu+LfzTp3sNv/TZAwHX0=
X-Received: by 2002:a63:cd02:: with SMTP id i2-v6mr4689964pgg.93.1531900881071;
 Wed, 18 Jul 2018 01:01:21 -0700 (PDT)
MIME-Version: 1.0
From: Mark Cox <mjc@apache.org>
Date: Wed, 18 Jul 2018 09:01:20 +0100
X-Gmail-Original-Message-ID: <CANnUo4K3qXCFEeP_3K8z3VLVva==9e9LBzFad-DGSWupm8XScg@mail.gmail.com>
Message-ID: <CANnUo4K3qXCFEeP_3K8z3VLVva==9e9LBzFad-DGSWupm8XScg@mail.gmail.com>
To: announce@httpd.apache.org, oss-security@lists.openwall.com
Cc: Apache Software Foundation HTTP Server Project <security@httpd.apache.org>
Content-Type: multipart/alternative; boundary="000000000000d8f23905714177a4"
Subject: [oss-security] CVE-2018-1333: Apache HTTP Server HTTP/2 DoS

--000000000000d8f23905714177a4
Content-Type: text/plain; charset="UTF-8"

CVE-2018-1333: DoS for HTTP/2 connections by crafted requests

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.18-2.4.33

Description:
By specially crafting HTTP/2 requests, workers would be
allocated 60 seconds longer than necessary, leading to
worker exhaustion and a denial of service.

Mitigation:
All httpd users should upgrade to 2.4.34 or later.

Credit:
The issue was discovered by Craig Young of Tripwire VERT.

References:
https://httpd.apache.org/security/vulnerabilities_24.html#CVE-2018-1333

--000000000000d8f23905714177a4--
