X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["510" "Friday" "6" "March" "2020" "10:08:05" "+0100" "Jacopo Cappellato" "jacopoc@apache.org" "<CAEvdU_3tU3NncO5CQ80BAo1LuyVBibaYMUmmhJY+gCrvDStxhQ@mail.gmail.com>" "27" "[oss-security] [CVE-2020-1943] Apache OFBiz XSS Vulnerability" nil nil nil "3" "2020030609:08:05" "[oss-security] [CVE-2020-1943] Apache OFBiz XSS Vulnerability" (number mark "U       jacopoc@apac Mar  6   27/510   " thread-indent "\"[oss-security] [CVE-2020-1943] Apache OFBiz XSS Vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-1943] Apache OFBiz XSS Vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17468 invoked by uid 550); 6 Mar 2020 09:16:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13796 invoked from network); 6 Mar 2020 09:08:29 -0000
X-Gm-Message-State: ANhLgQ0TSTEZoB5LlCwYBmR9sXfdomkw3LuAAA97q3ve7kdK5+nQVC7O
	yhUyMe377MMEP+kcw9ZxoCU4+DbWmROovKO9JXI=
X-Google-Smtp-Source: ADFU+vtns5jr2yL16b7I7/4PsfYyAFkrme8yVnHpGTlAoZla29Opgx27NtFMPM2SZFnMWpdnmuVKthgSt8nMi2wGvH4=
X-Received: by 2002:a05:600c:249:: with SMTP id 9mr2877272wmj.186.1583485696507;
 Fri, 06 Mar 2020 01:08:16 -0800 (PST)
MIME-Version: 1.0
From: Jacopo Cappellato <jacopoc@apache.org>
Date: Fri, 6 Mar 2020 10:08:05 +0100
X-Gmail-Original-Message-ID: <CAEvdU_3tU3NncO5CQ80BAo1LuyVBibaYMUmmhJY+gCrvDStxhQ@mail.gmail.com>
Message-ID: <CAEvdU_3tU3NncO5CQ80BAo1LuyVBibaYMUmmhJY+gCrvDStxhQ@mail.gmail.com>
To: announce@apache.org, "user@ofbiz.apache.org ML" <user@ofbiz.apache.org>, 
	Dev list <dev@ofbiz.apache.org>, oss-security@lists.openwall.com
Cc: security@ofbiz.apache.org, timon.funck@syss.de, disclosure@syss.de
Content-Type: multipart/alternative; boundary="0000000000007284f205a02bfeab"
Subject: [oss-security] [CVE-2020-1943] Apache OFBiz XSS Vulnerability

--0000000000007284f205a02bfeab
Content-Type: text/plain; charset="UTF-8"

Severity:
Important

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz 16.11.01 to 16.11.07

Description:
Data sent with "contentId" to "/control/stream" is not sanitized, allowing
XSS attacks.

Mitigation:
Upgrade to 17.12.01 or manually apply the commits at OFBIZ-10753
----

Credit:
Timon Funck <timon.funck@syss.de>

References:
http://ofbiz.apache.org/download.html#vulnerabilities

--0000000000007284f205a02bfeab--
