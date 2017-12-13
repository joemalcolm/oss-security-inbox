X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1256" "Wednesday" "13" "December" "2017" "15:04:22" "+0530" "Nazeer Shaik" "nazeer1100126@apache.org" "<CAOSe2yu-zjb+4Rt0t9tTTwpYAee9qCMenVOsauWJn7=yNQVL=g@mail.gmail.com>" "44" "[oss-security] [SECURITY] CVE-2017-5663: Apache Fineract SQL Injection Vulnerability" nil nil nil "12" "2017121309:34:22" "[oss-security] [SECURITY] CVE-2017-5663: Apache Fineract SQL Injection Vulnerability" (number mark "U       nazeer110012 Dec 13   44/1256  " thread-indent "\"[oss-security] [SECURITY] CVE-2017-5663: Apache Fineract SQL Injection Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11292 invoked by uid 550); 13 Dec 2017 10:14:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22318 invoked from network); 13 Dec 2017 09:34:40 -0000
X-Gm-Message-State: AKGB3mLjlAvM+2Mnji4sgxQIei/KjOAFmX04spMCZ9KN92qRS4VcjRe0
	pmZC8YaOp4Xq4POdi4XbRVk/EhIKOsB2SNKSEoMH/g==
X-Google-Smtp-Source: ACJfBosjKO97ZRq+o3VhxYfho7n32d3LNSPrtY4PpFniE9dpTCuGQ6B4xb3b0VisqrHvaG8aolRcnzNGJO+vxugu2kY=
X-Received: by 10.200.27.76 with SMTP id p12mr10467458qtk.310.1513157663275;
 Wed, 13 Dec 2017 01:34:23 -0800 (PST)
MIME-Version: 1.0
X-Originating-IP: [49.205.223.127]
From: Nazeer Shaik <nazeer1100126@apache.org>
Date: Wed, 13 Dec 2017 15:04:22 +0530
X-Gmail-Original-Message-ID: <CAOSe2yu-zjb+4Rt0t9tTTwpYAee9qCMenVOsauWJn7=yNQVL=g@mail.gmail.com>
Message-ID: <CAOSe2yu-zjb+4Rt0t9tTTwpYAee9qCMenVOsauWJn7=yNQVL=g@mail.gmail.com>
To: user@fineract.apache.org, Dev <dev@fineract.apache.org>, 
	oss-security@lists.openwall.com, security <security@apache.org>, 
	aleksandar.ivanov-2@student.manchester.ac.uk
Content-Type: multipart/alternative; boundary="94eb2c122b7002538a056035799d"
Subject: [oss-security] [SECURITY] CVE-2017-5663: Apache Fineract SQL Injection Vulnerability

--94eb2c122b7002538a056035799d
Content-Type: text/plain; charset="UTF-8"

CVE-2017-5663: Apache Fineract SQL Injection Vulnerability

Severity: Critical

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Fineract 0.6.0-incubating
Apache Fineract 0.5.0-incubating
Apache Fineract 0.4.0-incubating

Description:
Apache Fineract exposes different REST end points to query domain specific
entities with a Query Parameter 'sqlSearch' which
is appended directly with SQL statements. A hacker/user can inject/draft
the 'sqlSearch' query parameter in such a way to
to read/update the data for which he doesn't have authorization.

Mitigation:
All users should migrate to Apache Fineract 1.0.0 version
https://github.com/apache/fineract/tree/1.0.0


Example:
A request to retrieve the Clients with displayName=Thomas GET
https://DomainName/api/v1/clients?sqlSearch=displayName='Thomas'
An attacker/user can use GET https://DomainName/api/v1/clients?sqlSearch=
or (1==1) to retrieve all clients in the system

Credit:
This issue was discovered by Alex Ivanov

References:
http://fineract.apache.org/
https://cwiki.apache.org/confluence/display/FINERACT/Apache+Fineract+Security+Report

Regards,
Apache Fineract Team

--94eb2c122b7002538a056035799d--
