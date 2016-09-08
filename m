X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1943" "Thursday" "8" "September" "2016" "09:02:24" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty1b8mrUZQQuxwiVykKg1C-_qxbfuczbQxEL=8cBYfG9Nw@mail.gmail.com>" "51" "[oss-security] CVEs for public Kibana / logstash issues" nil nil nil "9" "2016090815:02:24" "[oss-security] CVEs for public Kibana / logstash issues" (number mark "U       kseifried@re Sep  8   51/1943  " thread-indent "\"[oss-security] CVEs for public Kibana / logstash issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17558 invoked by uid 550); 8 Sep 2016 15:02:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17534 invoked from network); 8 Sep 2016 15:02:36 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=r2otZQ4MaHrsJRbf1BvtAxQYd4D9qq26+N7fDpQrTWg=;
        b=XQmsjp1WfTc7TInNYWFePp+2Lvy0HkFmQBt9PK7TLKfVKplMqzVRxvogvnfE6t27yh
         R5GuPto580DEZbdtY+o9zmSsRpiaA326Bipped43snsbYK0ZIuZqB1Wkqwn2Rkdvu4P+
         iQ4DeZ0PomTxKFnWBFRF7MQ/15vKWNjn4erGeAQePQIybZt/nHFo4HrNp8LGrIpANljo
         6Km2T2amzQKoGX5PcscPPDF4AtmWYz/eAHJlD+Z/G0uSXWSgCrmn7puuXzXcPNV4Redo
         tFza06iuxFQWgDDUrNdqV1pZLy/aJDemyVV2sq5azkGheWmACJFjw0RLMqcFe73BSl9l
         tEXA==
X-Gm-Message-State: AE9vXwNRFzA1GAzbrRtQNud3jCnzqlHgUuvQTM5Q++V4lwAxe6eVQnAPUEPWV5lSZj4bejo4h+bPkeNhUQ1N2m4o
X-Received: by 10.202.85.14 with SMTP id j14mr94154oib.37.1473346944737; Thu,
 08 Sep 2016 08:02:24 -0700 (PDT)
MIME-Version: 1.0
From: Kurt Seifried <kseifried@redhat.com>
Date: Thu, 8 Sep 2016 09:02:24 -0600
Message-ID: <CANO=Ty1b8mrUZQQuxwiVykKg1C-_qxbfuczbQxEL=8cBYfG9Nw@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>, security@elastis.co
Content-Type: multipart/alternative; boundary=001a113d35aa45c425053c0051c6
Subject: [oss-security] CVEs for public Kibana / logstash issues

--001a113d35aa45c425053c0051c6
Content-Type: text/plain; charset=UTF-8

I just checked https://www.elastic.co/community/security and the Kibana
issues do not have CVEs, can you please assign CVEs for:

Kibana:

ESA-2016-05 2016-09-06
Version 2.4.0 of the Reporting plugin is vulnerable to a CSRF vulnerability
that could allow an attacker to generate superfluous reports whenever an
authenticated Kibana user navigates to a specially-crafted page. Users of
the Reporting plugin should upgrade Kibana to 4.6.1 and Reporting to 2.4.1.

ESA-2016-04 2016-08-03
When a custom output is configured for logging in versions of Kibana before
4.5.4 and 4.1.11, cookies and authorization headers could be written to the
log files. This information could be used to hijack sessions of other users
when using Kibana behind some form of authentication such as Shield. Users
should upgrade to 4.5.4 or 4.1.11.

ESA-2016-03 2016-08-03
Versions of Kibana before 4.5.4 and 4.1.11 are vulnerable to an XSS attack
that would allow an attacker to execute arbitrary JavaScript in users'
browsers. Users should upgrade to 4.5.4 or 4.1.11.

Logstash:

ESA-2016-02 2016-07-07
Prior to version 2.3.4, Elasticsearch Output plugin would log to file HTTP
authorization headers which could contain sensitive information. Users who
secure communication from Logstash to Elasticsearch via Basic Authorization
using Elastic Shield or other systems are advised to upgrade to this
version.

ESA-2016-01 2016-02-02
Prior to version 2.1.2, the CSV output can be attacked via engineered input
that will create malicious formulas in the CSV data. Users that currently
use Logstash CSV output plugin or may want to use it in the future should
upgrade to 2.2.0 or 2.1.2.

Thanks

-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113d35aa45c425053c0051c6--
