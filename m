Received: (qmail 9454 invoked by uid 550); 20 Dec 2024 15:46:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13551 invoked from network); 20 Dec 2024 15:39:28 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <adefdd2c-2525-4eb7-885c-4d55994fee51@apache.org>
Date: Fri, 20 Dec 2024 15:30:35 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2024-56337: Apache Tomcat: RCE due to TOCTOU issue in JSP
 compilation - CVE-2024-50379 mitigation was incomplete

Severity: important

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.1
- Apache Tomcat 10.1.0-M1 through 10.1.33
- Apache Tomcat 9.0.0.M1 through 9.0.97

Description:

Time-of-check Time-of-use (TOCTOU) Race Condition vulnerability in 
Apache Tomcat.

This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.1, from 
10.1.0-M1 through 10.1.33, from 9.0.0.M1 through 9.0.97.

The mitigation for CVE-2024-50379 was incomplete.

Users running Tomcat on a case insensitive file system with the default 
servlet write enabled (readonly initialisation
parameter set to the non-default value of false) may need additional 
configuration to fully mitigate CVE-2024-50379 depending on which 
version of Java they are using with Tomcat:
- running on Java 8 or Java 11: the system property
   sun.io.useCanonCaches must be explicitly set to false (it defaults
   to true)
- running on Java 17: the system property sun.io.useCanonCaches, if
   set, must be set to false (it defaults to false)
- running on Java 21 onwards: no further configuration is required
   (the system property and the problematic cache have been removed)

Tomcat 11.0.3, 10.1.35 and 9.0.99 onwards will include checks that 
sun.io.useCanonCaches is set appropriately before allowing the default 
servlet to be write enabled on a case insensitive file system. Tomcat 
will also set sun.io.useCanonCaches to false by default where it can.

Credit:

This vulnerability was first reported by Nacl, WHOAMI, Yemoli and 
Ruozhi. (finder)
This vulnerability was independently reported with a very helpful PoC by 
dawu@knownsec 404 team and Sunflower@knownsec 404 team (finder)

References:

https://www.cve.org/CVERecord?id=CVE-2024-50379
https://lists.apache.org/thread/b2b9qrgjrz1kvo4ym8y2wkfdvwoq6qbp
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2024-56337
