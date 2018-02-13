X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1181" "Tuesday" "13" "February" "2018" "15:09:57" "-0500" "Ganesh Murthy" "gmurthy@apache.org" "<CAO30oQd=Uw5ovTGPX-NNEeMdrURYsxceXoHcULoJF4rToi6BMA@mail.gmail.com>" "29" "[oss-security] [SECURITY] CVE-2017-15699: Apache Qpid Dispatch Router Denial of Service Vulnerability when specially crafted frame is sent to the Router" nil nil nil "2" "2018021320:09:57" "[oss-security] [SECURITY] CVE-2017-15699: Apache Qpid Dispatch Router Denial of Service Vulnerability when specially crafted frame is sent to the Router" (number mark "U       gmurthy@apac Feb 13   29/1181  " thread-indent "\"[oss-security] [SECURITY] CVE-2017-15699: Apache Qpid Dispatch Router Denial of Service Vulnerability when specially crafted frame is sent to the Router\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21879 invoked by uid 550); 13 Feb 2018 20:26:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3523 invoked from network); 13 Feb 2018 20:10:12 -0000
X-Gm-Message-State: APf1xPA+TupCunL9sZVwXKwimXYO1F7mtyaTqigIzuiQrVedTRKI2B6M
	F2yfCLSuO8f0Yn7DXKXOsMuXoAVo0AEgoDuBYwY=
X-Google-Smtp-Source: AH8x224epA+m/syYDm1jOatJYE8r8pY3gxT78fMFmvae10Yy9b6CSQopPvmOVG1T4ZsGR4A4I9uVpUTZP+27qyGmoA0=
X-Received: by 10.25.181.147 with SMTP id g19mr1915281lfk.47.1518552598070;
 Tue, 13 Feb 2018 12:09:58 -0800 (PST)
MIME-Version: 1.0
From: Ganesh Murthy <gmurthy@apache.org>
Date: Tue, 13 Feb 2018 15:09:57 -0500
X-Gmail-Original-Message-ID: <CAO30oQd=Uw5ovTGPX-NNEeMdrURYsxceXoHcULoJF4rToi6BMA@mail.gmail.com>
Message-ID: <CAO30oQd=Uw5ovTGPX-NNEeMdrURYsxceXoHcULoJF4rToi6BMA@mail.gmail.com>
To: announce@apache.org, users@qpid.apache.org, dev@qpid.apache.org, 
	security@apache.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [SECURITY] CVE-2017-15699: Apache Qpid Dispatch Router Denial of
 Service Vulnerability when specially crafted frame is sent to the Router

CVE-2017-15699: Apache Qpid Dispatch Router Denial of Service
Vulnerability when specially crafted frame is sent to the Router

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: Versions 0.7.0 and 0.8.0

Description: A Denial of Service vulnerability was found in Apache
Qpid Dispatch Router 0.7.0 and 0.8.0. To exploit this vulnerability, a
remote user must be able to establish an AMQP connection to the Qpid
Dispatch Router and send a specifically crafted AMQP frame which will
cause it to segfault and shut down.

Resolution:
Users of Qpid Dispatch Router versions 0.7.0 and 0.8.0 must upgrade to
version 0.8.1 or 1.0.0 and later.

Mitigation:
Any user who is able to connect to the Router may exploit the
vulnerability. If anonymous authentication is enabled then any remote
user with network access the Router is a possible attacker. The number
of possible attackers is reduced if the Router is configured to
require authentication. Then an attacker needs to have authentic
credentials which are used to create a connection to the Router before
proceeding to exploit this vulnerability.

[1] - https://issues.apache.org/jira/browse/DISPATCH-924
