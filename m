Received: (qmail 3280 invoked by uid 550); 10 Oct 2023 19:37:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15644 invoked from network); 10 Oct 2023 17:18:18 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <4149ce12-43db-4195-8691-5f8b1c1cbf19@apache.org>
Date: Tue, 10 Oct 2023 14:17:59 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2023-42794: Apache Tomcat: FileUpload: DoS due to accumulation of
 temporary files on Windows

Severity: low

Affected versions:

- Apache Tomcat 9.0.70 through 9.0.80
- Apache Tomcat 8.5.85 through 8.5.93

Description:

Incomplete Cleanup vulnerability in Apache Tomcat.

The internal fork of Commons FileUpload packaged with Apache Tomcat 
9.0.70 through 9.0.80 and 8.5.85 through 8.5.93 included an unreleased,
in progress refactoring that exposed a potential denial of service on
Windows if a web application opened a stream for an uploaded file but
failed to close the stream. The file would never be deleted from disk
creating the possibility of an eventual denial of service due to the
disk being full.

Users are recommended to upgrade to version 9.0.81 onwards or 8.5.94 
onwards, which fixes the issue.

Credit:

Mohammad Khedmatgozar (cellbox) (finder)

References:

https://lists.apache.org/thread/vvbr2ms7lockj1hlhz5q3wmxb2mwcw82
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-42794
