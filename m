Received: (qmail 28251 invoked by uid 550); 11 Jul 2023 16:51:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15893 invoked from network); 11 Jul 2023 16:44:24 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Andy Seaborne <andy@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <fefc8687-7f62-7ca4-361a-be7f0a3b0c74@apache.org>
Content-Transfer-Encoding: 7bit
Date: Tue, 11 Jul 2023 16:44:10 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-32200: Apache Jena: Exposure of execution in script
 engine expressions. 

Severity: important

Affected versions:

- Apache Jena 3.7.0 through 4.8.0

Description:

There is insufficient restrictions of called script functions in Apache Jena
 versions 4.8.0 and earlier. It allows a 
remote user to execute javascript via a SPARQL query.
This issue affects Apache Jena: from 3.7.0 through 4.8.0.

Credit:

s3gundo of Alibaba (reporter)

References:

https://www.cve.org/CVERecord?id=CVE-2023-22665
https://jena.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-32200

