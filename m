X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1581" "Friday" "27" "May" "2016" "16:13:30" "+0100" "Lorenz Quack" "quack.lorenz@gmail.com" "<5748641A.2050701@gmail.com>" "34" "[oss-security] [CVE-2016-3094] Apache Qpid Java Broker denial of service vulnerability" "^Date:" nil nil "5" "2016052715:13:30" "[oss-security] [CVE-2016-3094] Apache Qpid Java Broker denial of service vulnerability" (number mark "        quack.lorenz May 27   34/1581  " thread-indent "\"[oss-security] [CVE-2016-3094] Apache Qpid Java Broker denial of service vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32559 invoked by uid 550); 27 May 2016 15:15:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31761 invoked from network); 27 May 2016 15:13:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=8IgQ57Iv8ROEEDi2jvx7ISw+mJ/NdQTACOOhWqXnkr4=;
        b=UKwBXV7uGMEFRhWvbGyyPL2jk+dQ0gmSXD3T97VKlURzJJAv+ns9OzL+bvzXYda+J0
         tyfvm38KREBr8O/xFQP1/aKCniUwny5Usxh7x9SjoWItMfXqkeqKIJWhwSbkRxj/w+ky
         QN92rO1aHAhb5O6mobuvQcdZE1TxWVm0mg5BMFKQ/64m7TFFQv28q/PMk6rbvxEKwGq2
         sfR49pe4x+yZKlQ4gRrOM9z4u9trxNJl+MnVCMxaJDyed04AIpPo8rkFUiDV1YC5lDyN
         9en8j2IkGOtNzYMWMVes1UiSW7ByMdh8S40+xk2j/+dvNhYKhQiRf4yNI/iqN0JhvGdA
         Or1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=8IgQ57Iv8ROEEDi2jvx7ISw+mJ/NdQTACOOhWqXnkr4=;
        b=ayWsX593WyVm5fVjAh9YJc8uiJcWA2YXhwh3+bD3q0yUy4BkIDQH2OYEH4dnOaDg0z
         EfH7T+psTmz9rugUufRSLkblBxqBWF54Qf3UTOLhIDfgT1bf00X2RvYpLmUs9fuQbv+S
         3Qghy+TziFPI94h7HuQi83erDvFslsJ62gCGOQluosw/e8LIo7KsG93qT2QqHos2fU6P
         2K6KGe2w/7N0aa9hPSEhWzIGstaqe1YQfFsVdVUSGQEWma5hRedjx9IO+Oub1FATawl0
         RKi/W59M2NX3rXmZkUBwV2gtc9yZQxte/MDYrYjWGhWzAXxZEcmnghfSiFjGND5P2ssW
         2y2w==
X-Gm-Message-State: ALyK8tLgIP+96bkpx+qbzMaeZiQisPKf+P/jgMuVoEbjJLWILL1mwLi7QYsJ/2LoE/ZY4w==
X-Received: by 10.195.9.67 with SMTP id dq3mr11010540wjd.140.1464362013138;
        Fri, 27 May 2016 08:13:33 -0700 (PDT)
Message-ID: <5748641A.2050701@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:38.0) Gecko/20100101
 Thunderbird/38.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Date: Fri, 27 May 2016 16:13:30 +0100
From: Lorenz Quack <quack.lorenz@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2016-3094] Apache Qpid Java Broker denial of service
 vulnerability
To: users@qpid.apache.org, dev@qpid.apache.org,
 "security@apache.org" <security@apache.org>,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com

CVE-2016-3094: Apache Qpid Java Broker denial of service vulnerability

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: Qpid Java Broker versions 6.0.0, 6.0.1, and 6.0.2

Description: A malformed authentication attempt may cause the broker to
terminate.  The Qpid Java Broker supports a number of configurable
authentication providers each supporting various SASL mechanisms. Some
mechanisms need (or can be configured to accept) plain-text passwords
being sent to the Broker (using the SASL "PLAIN" mechanism).  Where the
broker has been configured to allow plain-text passwords for authentication
it is possible for a client to send a malformed authentication attempt 
which
will lead the broker to terminate due to an uncaught Exception.
Brokers configured to use authentication from the "PlainPasswordFile",
"SimpleLDAP", or "Base64MD5PasswordFile" providers are vulnerable if the
"PLAIN" mechanism is enabled (by default "PLAIN" will be disabled on
non-TLS ports, but enabled on TLS connections).

Mitigation: Users should upgrade their Qpid Java Broker to version 6.0.3 or
later.  If this is not possible, users can disable the PLAIN mechanism for
their authentication manager on versions 0.32 and later by adding 
"PLAIN" to
the list of disabledMechanisms on their authentication provider object.
Note that the SimpleLDAP authentication provider requires PLAIN and so this
work around does not apply there.

Credit: This issue was discovered by ﻿Alex Szczuczko of Red Hat, Inc.

References: https://issues.apache.org/jira/browse/QPID-7271

