Received: (qmail 22228 invoked by uid 550); 2 Sep 2022 09:25:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9580 invoked from network); 2 Sep 2022 06:26:05 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <0692e33f-4855-c688-6718-26b94610fdeb@apache.org>
Date: Fri, 2 Sep 2022 08:26:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Content-Language: fr
From: Jacques Le Roux <jleroux@apache.org>
To: oss-security@lists.openwall.com
Organization: Apache Software Fundation
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Apache OFBiz - Unauth Path Traversal with file corruption
 (CVE-2022-25371)

Severity:
High

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz versions prior to 18.12.06

Description:
The Birt viewer version 4.5.0 has a security issue that allows this exploit.
We waited long for https://github.com/eclipse/birt/issues/625
to resolve but eventually decided to release OFBiz 18.12.06 without
the Birt component

Mitigation:
Upgrade to at least 18.12.06
or apply patches at https://issues.apache.org/jira/browse/OFBIZ-...

Credit:
npodotykin@ptsecurity.com

References:
http://ofbiz.apache.org/download.html#vulnerabilities

