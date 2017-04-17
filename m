X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1027" "Monday" "17" "April" "2017" "10:17:28" "-0500" "Matt Sicker" "mattsicker@apache.org" "<CACmp6kpcEne1tqKHK2Xbceeu9CFwqKE1ARhT_jMYRq=TNZYNcA@mail.gmail.com>" "30" "[oss-security] CVE-2017-5645: Apache Log4j socket receiver deserialization vulnerability" nil nil nil "4" "2017041715:17:28" "[oss-security] CVE-2017-5645: Apache Log4j socket receiver deserialization vulnerability" (number mark "U       mattsicker@a Apr 17   30/1027  " thread-indent "\"[oss-security] CVE-2017-5645: Apache Log4j socket receiver deserialization vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24439 invoked by uid 550); 17 Apr 2017 15:43:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9270 invoked from network); 17 Apr 2017 15:17:44 -0000
X-Gm-Message-State: AN3rC/4Jrdnauq0b+/cOd1ZkvvYeC4IKEGTQmck4vfq24xlY9wpGdP/T
	NQUjnD/B0zmCZcHOxf0Apuwln46SNA==
X-Received: by 10.25.16.29 with SMTP id f29mr3656790lfi.134.1492442249894;
 Mon, 17 Apr 2017 08:17:29 -0700 (PDT)
MIME-Version: 1.0
From: Matt Sicker <mattsicker@apache.org>
Date: Mon, 17 Apr 2017 10:17:28 -0500
X-Gmail-Original-Message-ID: <CACmp6kpcEne1tqKHK2Xbceeu9CFwqKE1ARhT_jMYRq=TNZYNcA@mail.gmail.com>
Message-ID: <CACmp6kpcEne1tqKHK2Xbceeu9CFwqKE1ARhT_jMYRq=TNZYNcA@mail.gmail.com>
To: dev@logging.apache.org, security <security@apache.org>, 
	"Almeida De Macedo, Marcio" <Marcio.AlmeidaDeMacedo@team.telstra.com>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: multipart/alternative; boundary=001a11401da427266a054d5e4aa0
Subject: [oss-security] CVE-2017-5645: Apache Log4j socket receiver deserialization vulnerability

--001a11401da427266a054d5e4aa0
Content-Type: text/plain; charset=UTF-8

CVE-2017-5645: Apache Log4j socket receiver deserialization vulnerability

Severity: High

CVSS Base Score: 7.5 (AV:N/AC:L/Au:N/C:P/I:P/A:P)

Vendor: The Apache Software Foundation

Versions Affected: all versions from 2.0-alpha1 to 2.8.1

Description: When using the TCP socket server or UDP socket server to
receive serialized log events from another application, a specially crafted
binary payload can be sent that, when deserialized, can execute arbitrary
code.

Mitigation: Java 7+ users should migrate to version 2.8.2 or avoid using
the socket server classes. Java 6 users should avoid using the TCP or UDP
socket server classes, or they can manually backport the security fix from
2.8.2: <https://git-wip-us.apache.org/repos/asf?p=logging-log4j2.
git;h=5dcc192>

Credit: This issue was discovered by Marcio Almeida de Macedo of Red Team
at Telstra

References: <https://issues.apache.org/jira/browse/LOG4J2-1863>

--001a11401da427266a054d5e4aa0--
