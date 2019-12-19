X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1097" "Wednesday" "18" "December" "2019" "21:21:19" "-0600" "Matt Sicker" "mattsicker@apache.org" nil "42" nil nil nil nil "12" nil nil (number mark "U       mattsicker@a Dec 18   42/1097  " thread-indent "\"[oss-security] [CVE-2019-17571] Apache Log4j 1.2 deserialization of untrusted data in SocketServer\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-17571] Apache Log4j 1.2 deserialization of untrusted data in SocketServer" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19998 invoked by uid 550); 19 Dec 2019 11:37:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25918 invoked from network); 19 Dec 2019 03:21:42 -0000
X-Gm-Message-State: APjAAAWlxzg20Jigf0AUGHizK4fH2k3HxEEF0u6aHykQkvnFzhPcomse
	VlBdrEmY1a1ibT3JOFe2NISsNZOFVhyrYyJ5EWU=
X-Google-Smtp-Source: APXvYqxYCc1IwG0v9bdI16U5tMN2dbhLYOMNnl0ugkk6vNdaG41qxJObAu8pv8OC8XQNiVplm8BkMK7Az6tAeZ1YzRc=
X-Received: by 2002:a92:2804:: with SMTP id l4mr5091923ilf.136.1576725689955;
 Wed, 18 Dec 2019 19:21:29 -0800 (PST)
MIME-Version: 1.0
From: Matt Sicker <mattsicker@apache.org>
Date: Wed, 18 Dec 2019 21:21:19 -0600
X-Gmail-Original-Message-ID: <CACmp6kpYXqBsQmqzOVn45q+n2jTtsWFU=ObfgDd4m6y7j5F=0A@mail.gmail.com>
Message-ID: <CACmp6kpYXqBsQmqzOVn45q+n2jTtsWFU=ObfgDd4m6y7j5F=0A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2019-17571] Apache Log4j 1.2 deserialization of untrusted data
 in SocketServer

CVE-2019-17571: Deserialization of untrusted data in SocketServer

Severity: Critical
CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H/RL:W

Product:
Apache Log4j

Versions Affected:
Apache Log4j up to and including 1.2.27. Separately fixed by
CVE-2017-5645 in Log4j 2.8.2.

Problem type:
CWE-502: Deserialization of Untrusted Data

Description:

Included in Log4j 1.2 is a SocketServer class that is vulnerable to
deserialization of untrusted data which can be exploited to remotely
execute arbitrary code when combined with a deserialization gadget
when listening to untrusted network traffic for log data.

Mitigation:

Apache Log4j 1.2 reached end of life in August 2015. Users should
upgrade to Log4j 2.x which both addresses that vulnerability as well
as numerous other issues in the previous versions.

Credit:

This issue was initially discovered in CVE-2017-5645 by Marcio Almeida
de Macedo of Red Team at Telstra.

Links:

https://logging.apache.org/log4j/1.2/
https://issues.apache.org/jira/browse/LOG4J2-1863

-- 
Matt Sicker
Secretary, Apache Software Foundation
VP Logging Services, ASF
