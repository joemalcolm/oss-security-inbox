Received: (qmail 21627 invoked by uid 550); 2 Sep 2022 09:25:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9350 invoked from network); 2 Sep 2022 06:25:24 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <37ce13b5-ed96-d06f-611a-a30de0a1280b@apache.org>
Date: Fri, 2 Sep 2022 08:25:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Content-Language: fr
From: Jacques Le Roux <jleroux@apache.org>
To: oss-security@lists.openwall.com
Organization: Apache Software Fundation
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Apache OFBiz - Java Deserialization via RMI Connection
 (CVE-2022-29063)

Severity:
Low (only on shared servers)

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz versions prior to 18.12.06

Description:
The OFBiz Solr plugin is configured by default to automatically make a
RMI request on localhost, port 1099. By hosting a malicious RMI server
on localhost, an attacker may exploit this behavior

Mitigation:
Upgrade to at least 18.12.06
or apply patches at https://issues.apache.org/jira/browse/OFBIZ-12646

Credit:
Matei "Mal" Badanoiu

References:
http://ofbiz.apache.org/download.html#vulnerabilities

