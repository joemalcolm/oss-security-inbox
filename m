X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["985" "Friday" "3" "June" "2016" "11:26:53" "-0400" "Brian Demers" "bdemers@apache.org" "<CAH9eYVqvceWHY8M0BhqUaE0=UMKxGvNWMvimypCYqpGMsqMTQg@mail.gmail.com>" "31" "[oss-security] [Announce] CVE-2016-4437: Apache Shiro information disclosure vulnerability" nil nil nil "6" "2016060315:26:53" "[oss-security] [Announce] CVE-2016-4437: Apache Shiro information disclosure vulnerability" (number mark "U       bdemers@apac Jun  3   31/985   " thread-indent "\"[oss-security] [Announce] CVE-2016-4437: Apache Shiro information disclosure vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22103 invoked by uid 550); 3 Jun 2016 15:28:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20280 invoked from network); 3 Jun 2016 15:27:07 -0000
X-Gm-Message-State: ALyK8tLVkRIGnEKFD80ikelRBix12vU2oCMGI7RCPOCfvIJD1Wzq+w+ZEeP2cgyMWRy8kSjWm7YJGfuYZtH5lw==
X-Received: by 10.31.184.196 with SMTP id i187mr1962961vkf.34.1464967613496;
 Fri, 03 Jun 2016 08:26:53 -0700 (PDT)
MIME-Version: 1.0
From: Brian Demers <bdemers@apache.org>
Date: Fri, 3 Jun 2016 11:26:53 -0400
X-Gmail-Original-Message-ID: <CAH9eYVqvceWHY8M0BhqUaE0=UMKxGvNWMvimypCYqpGMsqMTQg@mail.gmail.com>
Message-ID: <CAH9eYVqvceWHY8M0BhqUaE0=UMKxGvNWMvimypCYqpGMsqMTQg@mail.gmail.com>
To: dev@shiro.apache.org, "user@shiro.apache.org" <user@shiro.apache.org>, security@shiro.apache.org, 
	announce@shiro.apache.org, "security@apache.org" <security@apache.org>, 
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
Content-Type: multipart/alternative; boundary=001a1143abce35c6aa0534615a2f
Subject: [oss-security] [Announce] CVE-2016-4437: Apache Shiro information disclosure vulnerability

--001a1143abce35c6aa0534615a2f
Content-Type: text/plain; charset=UTF-8

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
1.0.0-incubating - 1.2.4

Description:
A default cipher key is used for the "remember me" feature when not
explicitly configured.  A request that included a specially crafted request
parameter could be used to execute arbitrary code or access content that
would otherwise be protected by a security constraint.

Mitigation:
Users should upgrade to 1.2.5 [1],  ensure a secret cipher key is
configured [2], or disable the "remember me" feature. [3]

All binaries (.jars) are available in Maven Central already.

References:
[1] http://shiro.apache.org/download.html
[2] http://shiro.apache.org/configuration.html#Configuration-ByteArrayValues
[3] If using a shiro.ini, "remember me" can be disabled adding the
following config line in the '[main]' section:
  securityManager.rememberMeManager = null

--001a1143abce35c6aa0534615a2f--
