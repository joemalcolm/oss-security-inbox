X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["741" "Friday" "13" "March" "2020" "07:33:45" "+0100" "Oliver Heger" "oheger@apache.org" "<2ea60db6-f798-f9c6-90c6-93b011257ff7@apache.org>" "28" "[oss-security] [CVE-2020-1953] Uncontrolled class instantiation when loading YAML files in Apache Commons Configuration" nil nil nil "3" "2020031306:33:45" "[oss-security] [CVE-2020-1953] Uncontrolled class instantiation when loading YAML files in Apache Commons Configuration" (number mark "U       oheger@apach Mar 13   28/741   " thread-indent "\"[oss-security] [CVE-2020-1953] Uncontrolled class instantiation when loading YAML files in Apache Commons Configuration\"\n") "<73A29EBC-8AF9-4B36-AA32-377E63A28E08@apache.org>" ("<73A29EBC-8AF9-4B36-AA32-377E63A28E08@apache.org>") nil nil nil nil nil nil nil "[oss-security] [CVE-2020-1953] Uncontrolled class instantiation when loading YAML files in Apache Commons Configuration" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13889 invoked by uid 550); 13 Mar 2020 10:36:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31750 invoked from network); 13 Mar 2020 06:34:05 -0000
From: Oliver Heger <oheger@apache.org>
To: oss-security@lists.openwall.com
References: <73A29EBC-8AF9-4B36-AA32-377E63A28E08@apache.org>
Organization: Apache Software Foundation
Message-ID: <2ea60db6-f798-f9c6-90c6-93b011257ff7@apache.org>
Date: Fri, 13 Mar 2020 07:33:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <73A29EBC-8AF9-4B36-AA32-377E63A28E08@apache.org>
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:LPKBlv6Fc0GLJLCQmAmtAgxJtL+46nSnoCKxIgFETN3PPZQMivA
 2RzQDcRzurzKzOorO7dcunoOy6EENyLMkGLiVrLfjXvPIoq2ni4nZ4L1drci1SJ2a3v7Eda
 A6YgTQ1USAdkwFMvIJlCBWn99wyhivoNmh38BuvLxQrURgejVoie7GV3Z0xhmNRaQO8yWFN
 xuNlUjnkSxgdMXE3j3bxQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:UDr68a5BEsA=:IPk/Xqs/xqofT/CUIdZnm2
 uRhCHls+yvzQe0T0r10285JbfzilE86i+NtcLZ/Cv1i71FfRrkIeftR8Yl2fwltahrvfzAa+e
 Dt9452ZtodoOKFHbO8+KDCNIzcMnLISwOUncik7IDG6NPWwArG1B63ql8ZuEQ8RCFZ4GwggLE
 VDbCSNk1/XrylKt3zDVgCtiPpCoaB/FcSIcG3PSazkYGqjX6GO4K+I0eMsWKO8liGcpHf61I5
 2bwnE5zuONQNOXy3xEiOyYaliTYPwfkf4lps2K3ZBOxy+DeRUulRLitFCbVsVoQI6y/pXxcvj
 cUjweuKHmRLBkrbtqZj/upVLAkIKTMwSj+Si/Z+wiBTV+aYtYTfkiOjvQo6AjerYl5nhTq71p
 haaq3bZLCt6LhpivwTamOyT6qYxeM8NjVSGCSPYcsqUDPQi7MnPubwUt9EXt8N+YlZL/cjMUr
 uK0ILns3fjkZuvov/dX9jqDbsjRb+JtB8IuKeE9+04j9JOVIT4Y73kiKlHWKU2QDjPOcsHS9a
 r4OnBK78zPeubyJxXwh05KBaI423bl9abC9MxpunXJHLFwBLJT9bjoQYXS1NwXClJghe7TcNI
 qm4h/YJyxYvHtDjUyaqqkYZS/I8KT0oN1jUdscyDKrMjU1DGQqAJ3W6/ObBrrTmD1yq9/4b/J
 +cgk3whnoMS+1xyxEI42IeN6yqh/Go6KZmA+c223G8vKWAxl7tkOTAbt62rJOwSKDsQuh9h3g
 pwc4oD3GkmaSVAX+JokDV/Zln9fUgEHvL6YhBLAXKrjBSjY3sLzAUc/kkp6o8XNi+FKCAaPXs
 LBz93kzz2goQ5QIwKUMzweEfCthdoLB0fWKUgdxy/FrScqvjBGpsiMR6jVJtnFCBztmRPuV
Subject: [oss-security] [CVE-2020-1953] Uncontrolled class instantiation when loading YAML
 files in Apache Commons Configuration

CVE-2020-1953: Uncontrolled class instantiation when loading YAML files
in Apache Commons Configuration

Severity: Moderate

Vendor:
The Apache Software Foundation

Versions Affected:
2.2 to 2.6

Description:
Apache Commons Configuration uses a third-party library to parse YAML
files which by default allows the instantiation of classes if the YAML
includes special statements. If a YAML file is from an untrusted source,
it can therefore load and execute code out of the control of the host
application.

Mitigation:
Users should upgrade to to 2.7, which prevents class instantiation by
the YAML processor.

Credit:
This issue was discovered by Daniel Kalinowski of ISEC.pl Research Team

Oliver Heger
on behalf of the Apache Commons PMC

