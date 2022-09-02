Received: (qmail 19969 invoked by uid 550); 2 Sep 2022 09:24:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3308 invoked from network); 2 Sep 2022 06:17:00 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <6ab86c25-f72e-7f27-ac29-54ce9b9128f8@apache.org>
Date: Fri, 2 Sep 2022 08:17:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Content-Language: fr
From: Jacques Le Roux <jleroux@apache.org>
To: oss-security@lists.openwall.com
Organization: Apache Software Fundation
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Apache OFBiz - Server-Side Template Injection
 (CVE-2022-25813)

Severity:
High (SSTI then possible RCE)

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz versions prior to 18.12.06

Description:
As an ecommerce anonymous client, an external attacker can insert a malicious
content in a message “Subject” field from the "Contact us" page. Then a party
manager needs to list the communications in the party component to activate
the SSTI. A RCE is then possible.

Mitigation:
Upgrade to at least 18.12.06
or apply patches at https://issues.apache.org/jira/browse/OFBIZ-12594

Credit:
Matei "Mal" Badanoiu

References:
http://ofbiz.apache.org/download.html#vulnerabilities

