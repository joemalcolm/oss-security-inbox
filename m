X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["727" "Friday" "9" "February" "2018" "10:58:08" "-0500" "Alex O'Ree" "alexoree@apache.org" "<CALLT8khw=hXWCd2piwfH4NaXSnPao7Uv_CmQVb3SzKo6dVGswQ@mail.gmail.com>" "25" "[oss-security] [Security] CVE-2018-1307 XML Entity Expansion in juddi-client v3.2 through 3.3.4" nil nil nil "2" "2018020915:58:08" "[oss-security] [Security] CVE-2018-1307 XML Entity Expansion in juddi-client v3.2 through 3.3.4" (number mark "U       alexoree@apa Feb  9   25/727   " thread-indent "\"[oss-security] [Security] CVE-2018-1307 XML Entity Expansion in juddi-client v3.2 through 3.3.4\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9630 invoked by uid 550); 9 Feb 2018 16:39:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30577 invoked from network); 9 Feb 2018 15:58:25 -0000
X-Gm-Message-State: APf1xPCKH9t4LFJ6dU/JMAU/KJZ1aCVx0sd4KSnPEgfHlRqtxN887UCW
	C7I1DZ09wN2jCX5bK16XVsOwvuUuNXk8X6PE3fo=
X-Google-Smtp-Source: AH8x224X2mWT71jPTO7m3AwMqYw29Qu+jDQ+l8Pf/8fvhDmoyaCIki1Yea5W0RWogjDWOtv0/g5nzvsaRhUiUccx0C0=
X-Received: by 10.157.112.135 with SMTP id l7mr2431133otj.122.1518191888790;
 Fri, 09 Feb 2018 07:58:08 -0800 (PST)
MIME-Version: 1.0
From: "Alex O'Ree" <alexoree@apache.org>
Date: Fri, 9 Feb 2018 10:58:08 -0500
X-Gmail-Original-Message-ID: <CALLT8khw=hXWCd2piwfH4NaXSnPao7Uv_CmQVb3SzKo6dVGswQ@mail.gmail.com>
Message-ID: <CALLT8khw=hXWCd2piwfH4NaXSnPao7Uv_CmQVb3SzKo6dVGswQ@mail.gmail.com>
To: user@juddi.apache.org, dev@juddi.apache.org, security@apache.org, 
	oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="f4f5e8095df03b9e120564c99830"
Subject: [oss-security] [Security] CVE-2018-1307 XML Entity Expansion in juddi-client v3.2
 through 3.3.4

--f4f5e8095df03b9e120564c99830
Content-Type: text/plain; charset="UTF-8"

CVEID  CVE-2018-1307

VERSION:  3.2 through 3.3.4

PROBLEMTYPE: XML Entity Expansion

REFERENCES: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2009-4267

DISCRIPTION: If using the WADL2Java or WSDL2Java classes, which parse a
local or remote XML document and then mediates the data structures into
UDDI data structures, there are little protections present against entity
expansion and DTD type of attacks. This was fixed with
https://issues.apache.org/jira/browse/JUDDI-987

Severity: Moderate

Mitigation:

Update your juddi-client dependencies to 3.3.5 or newer and/or discontinue
use of the effected classes.

--f4f5e8095df03b9e120564c99830--
