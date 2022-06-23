Received: (qmail 15679 invoked by uid 550); 23 Jun 2022 10:33:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11280 invoked from network); 23 Jun 2022 10:23:53 -0000
Message-ID: <15158782-a2b5-d6a4-2d27-7bb1774af5db@apache.org>
Date: Thu, 23 Jun 2022 11:23:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2022-34305: Apache Tomcat: XSS in examples web application

Severity: low

Description:

In Apache Tomcat 10.1.0-M1 to 10.1.0-M16, 10.0.0-M1 to 10.0.22, 9.0.30 
to 9.0.64 and 8.5.50 to 8.5.81 the Form authentication example in the 
examples web application displayed user provided data without filtering, 
exposing a XSS vulnerability.

References:

https://lists.apache.org/thread/k04zk0nq6w57m72w5gb0r6z9ryhmvr4k
