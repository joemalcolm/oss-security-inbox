X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1246" "Friday" "7" "July" "2017" "14:58:27" "-0600" "Jeff Elsloo" "elsloo@apache.org" "<CABjXaGvqoh2z3jimtq5QzT1bO=+nQU99ak13XrV9Vr+4Yd42jQ@mail.gmail.com>" "37" "[oss-security] [ANNOUNCE] Apache Traffic Control Traffic Router Slowloris Denial of Service Vulnerability - CVE-2017-7670" nil nil nil "7" "2017070720:58:27" "[oss-security] [ANNOUNCE] Apache Traffic Control Traffic Router Slowloris Denial of Service Vulnerability - CVE-2017-7670" (number mark "U       elsloo@apach Jul  7   37/1246  " thread-indent "\"[oss-security] [ANNOUNCE] Apache Traffic Control Traffic Router Slowloris Denial of Service Vulnerability - CVE-2017-7670\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17950 invoked by uid 550); 7 Jul 2017 21:45:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18017 invoked from network); 7 Jul 2017 20:58:42 -0000
X-Gm-Message-State: AIVw112vKLMAxFfQqa0FyptogrtJcrzwHTt9Z4p3+lMCvlAd2POSg2Sb
	0oVQFk2Eh49wF8DtPi3rbv7y8/YD0Q==
X-Received: by 10.107.23.4 with SMTP id 4mr23477318iox.110.1499461107536; Fri,
 07 Jul 2017 13:58:27 -0700 (PDT)
MIME-Version: 1.0
From: Jeff Elsloo <elsloo@apache.org>
Date: Fri, 7 Jul 2017 14:58:27 -0600
X-Gmail-Original-Message-ID: <CABjXaGvqoh2z3jimtq5QzT1bO=+nQU99ak13XrV9Vr+4Yd42jQ@mail.gmail.com>
Message-ID: <CABjXaGvqoh2z3jimtq5QzT1bO=+nQU99ak13XrV9Vr+4Yd42jQ@mail.gmail.com>
To: users@trafficcontrol.incubator.apache.org, 
	dev@trafficcontrol.incubator.apache.org, 
	security@trafficcontrol.incubator.apache.org, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [ANNOUNCE] Apache Traffic Control Traffic Router Slowloris Denial of
 Service Vulnerability - CVE-2017-7670

CVE-2017-7670: Apache Traffic Control Traffic Router Slowloris Denial
of Service Vulnerability

Severity: High

Vendor:
The Apache Software Foundation

Versions Affected:
Traffic Control 1.8.0
Traffic Control 2.0.0 RC0
The unsupported Traffic Control 1.5.x, 1.6.x, and 1.7.x versions may
be also affected

Description:
The Traffic Router component of the incubating Apache Traffic Control
project is vulnerable to a Slowloris style Denial of Service attack.
TCP connections made on the configured DNS port will remain in the
ESTABLISHED state until the client explicitly closes the connection or
Traffic Router is restarted. If connections remain in the ESTABLISHED
state indefinitely and accumulate in number to match the size of the
thread pool dedicated to processing DNS requests, the thread pool
becomes exhausted. Once the thread pool is exhausted, Traffic Router
is unable to service any DNS request, regardless of transport
protocol.

Mitigation:
1.8.x users should upgrade to 1.8.1
2.0.x users should upgrade to 2.0.0
Pre 1.8.x users can apply this patch:
https://github.com/apache/incubator-trafficcontrol/commit/738c10fa1b5861e4cc3944dc7c3065d16f4a708c

References:
http://trafficcontrol.apache.org/security/index.html
--
Thanks,
Jeff
