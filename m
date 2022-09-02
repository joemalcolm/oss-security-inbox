Received: (qmail 20322 invoked by uid 550); 2 Sep 2022 09:25:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5417 invoked from network); 2 Sep 2022 06:19:57 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <6971d523-a4b3-26d9-096e-a7e8a2c5b92a@apache.org>
Date: Fri, 2 Sep 2022 08:20:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Content-Language: fr
From: Jacques Le Roux <jleroux@apache.org>
To: oss-security@lists.openwall.com
Organization: Apache Software Fundation
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Apache OFBiz - Regular Expression Denial of Service (ReDoS)
 (CVE-2022-29158)

Severity:
High

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz versions prior to 18.12.06

Description:
Apache OFBiz up to version 18.12.05 is vulnerable to Regular
Expression Denial of Service (ReDoS) in the way it handles URLs
provided by external, unauthenticated users.

Mitigation:
Upgrade to at least 18.12.06
or apply patches at https://issues.apache.org/jira/browse/OFBIZ-12599

Credit:
Tony Torralba and Joseph Farebrother from the GitHub CodeQL team

References:
http://ofbiz.apache.org/download.html#vulnerabilities

