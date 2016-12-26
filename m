X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9528" "Monday" "26" "December" "2016" "16:08:45" "+0700" "Steevee a.k.a Stefanus" "steevee.aka@gmail.com" "<CADr4Fi-gyCkOT_gv_ZoivJ7JWhMRLm=+2g8BSpP9LKNEJ5f=AQ@mail.gmail.com>" "173" "[oss-security] Joomla com_blog_calendar SQL Injection Vulnerability" nil nil nil "12" "2016122609:08:45" "[oss-security] Joomla com_blog_calendar SQL Injection Vulnerability" (number mark "U       steevee.aka@ Dec 26  173/9528  " thread-indent "\"[oss-security] Joomla com_blog_calendar SQL Injection Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11792 invoked by uid 550); 26 Dec 2016 09:43:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5566 invoked from network); 26 Dec 2016 09:09:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=izVmA7pJlqouhYQQFU1b9A/CtP3zevRV5S9n00DNWGI=;
        b=bynrFCqmhq9vtKj22TjxmvmTqZyfZ5YU7k54wTonzFzrBJPEVGOmRuWGVDdmYKzeDX
         09/6FBuSmi6QqM5JH9ZcxMHrawjMTOEuiYJwf+XZ2k7DEdmMBngGo5nUvm/sB1yArbjl
         MovnDtk4b04OSApQHdAke+Ddl98Au1RotcoOVZl8fOWCc/4QuezDsNcYAhiTKuc6XpXp
         uXvrULeVJ+SYXmVDx7GPiGJyQtUk660K0gCORIO9psf0HY9RqknksjgldlYW/srkGiai
         dIgm0TQhVYyiIZsqPXxWp8OFxGeMJ6WIhDOyQeVBX8kpnJPZEBv4wva6iyivlDsfZ3cy
         iOog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=izVmA7pJlqouhYQQFU1b9A/CtP3zevRV5S9n00DNWGI=;
        b=QSohCL2lfHp76vp1pgNiabRWlI991sNKnW7thPLkBLq1gGvddivqq79p6d1jLjxi3Q
         LRiHuMA1Kc6RahpcLsCXz0UeHWC14DuKL+hymMmovNTqKcYPZ4s1gcHVYN8yipuNsXpz
         v0hCDKXW06tE84B8BuI2uuYiKA/TQDI6Qj2vXCIpOnopW9BOSEFHK0HH/7O92BkZy3rk
         PPslSBOdx9j1BHfjcTi5OmwU3eCZcCzgGwUOsa7Y9qBWrWmM7aCty4PMMT7iu/52qQLg
         e+hpijGwcvGh1B0dKoB/SnRZ1xNpEbddi7rg6W6a28SUlv+Jln7BNNNGwKTQpgM/v5bI
         f69A==
X-Gm-Message-State: AIkVDXIsSTbkHL0XRJ3hjxLzOZWld/XoobFg+MTZZURtdGc2HFNAAa/scRd0Cg/o2Lz2DWA4UGQ3kN32cenMUA==
X-Received: by 10.200.55.206 with SMTP id e14mr15925933qtc.215.1482743346360;
 Mon, 26 Dec 2016 01:09:06 -0800 (PST)
MIME-Version: 1.0
From: "Steevee a.k.a Stefanus" <steevee.aka@gmail.com>
Date: Mon, 26 Dec 2016 16:08:45 +0700
Message-ID: <CADr4Fi-gyCkOT_gv_ZoivJ7JWhMRLm=+2g8BSpP9LKNEJ5f=AQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary=001a113b9a3a74101d05448c169e
Subject: [oss-security] Joomla com_blog_calendar SQL Injection Vulnerability

--001a113b9a3a74101d05448c169e
Content-Type: multipart/alternative; boundary=001a113b9a3a74101705448c169c

--001a113b9a3a74101705448c169c
Content-Type: text/plain; charset=UTF-8

==========================================================================================
Joomla com_blog_calendar SQL Injection Vulnerability
==========================================================================================

:-------------------------------------------------------------------------------------------------------------------------:
: # Exploit Title : Joomla com_blog_calendar SQL Injection Vulnerability
: # Date : 26th December 2016
: # Author : X-Cisadane
: # CMS Name : Joomla
: # CMS Developer : http://joomlacode.org/gf/project/blog_calendar/
: # Category : Web Application
: # Vulnerability : SQL Injection
: # Tested On : SQLMap 1.0.12.9#dev
: # Greetz to : X-Code YogyaFree, ExploreCrew, CodeNesia, Bogor Hackers
Community, Borneo Crew, Depok Cyber, Mantan
:-------------------------------------------------------------------------------------------------------------------------:

A SQL Injection Vulnerability has been discovered in the Joomla Module
called com_blog_calendar.
The Vulnerability is located in the
index.php?option=com_blog_calendar&modid=xxx Parameter.
Attackers are able to execute own SQL commands by usage of a GET Method
Request with manipulated modid Value.
Attackers are able to read Database information by execution of own SQL
commands.

DORKS (How to find the target) :
================================
inurl:/index.php?option=com_blog_calendar
Or use your own Google Dorks :)

Proof of Concept
================

SQL Injection
PoC :
http://[Site]/[Path]/index.php?option=com_blog_calendar&modid=['SQLi]

Screenshot (PoC) : http://i64.tinypic.com/2rqhhk4.png

Example of Vuln Sites :
https://www.zen-road.org/index.php?option=com_blog_calendar&modid=['SQLi]
http://www3.unitus.it/index.php?option=com_blog_calendar&modid=['SQLi]
http://chausyleshoz.by/en/index.php?option=com_blog_calendar&modid=['SQLi]
http://www.foms.kg/index.php?option=com_blog_calendar&modid=['SQLi]
http://www.iab.com.bd/index.php?option=com_blog_calendar&modid=['SQLi]
... etc ...

-= Regards =-
 Steevee A.K.A

--001a113b9a3a74101705448c169c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=C2=A0=
</div><div>Joomla com_blog_calendar SQL Injection Vulnerability=C2=A0</div>=
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=C2=A0</div><div><br></d=
iv><div>:------------------------------------------------------------------=
-------------------------------------------------------:=C2=A0</div><div>: =
# Exploit Title : Joomla com_blog_calendar SQL Injection Vulnerability =C2=
=A0</div><div>: # Date : 26th December 2016 =C2=A0</div><div>: # Author : X=
-Cisadane=C2=A0</div><div>: # CMS Name : Joomla=C2=A0</div><div>: # CMS Dev=
eloper : <a href=3D"http://joomlacode.org/gf/project/blog_calendar/">http:/=
/joomlacode.org/gf/project/blog_calendar/</a>=C2=A0</div><div>: # Category =
: Web Application=C2=A0</div><div>: # Vulnerability : SQL Injection=C2=A0</=
div><div>: # Tested On : SQLMap 1.0.12.9#dev</div><div>: # Greetz to : X-Co=
de YogyaFree, ExploreCrew, CodeNesia, Bogor Hackers Community, Borneo Crew,=
 Depok Cyber, Mantan=C2=A0</div><div>:-------------------------------------=
---------------------------------------------------------------------------=
---------:=C2=A0</div><div><br></div><div>A SQL Injection Vulnerability has=
 been discovered in the Joomla Module called com_blog_calendar.=C2=A0</div>=
<div>The Vulnerability is located in the index.php?option=3Dcom_blog_calend=
ar&amp;modid=3Dxxx Parameter.=C2=A0</div><div>Attackers are able to execute=
 own SQL commands by usage of a GET Method Request with manipulated modid V=
alue.=C2=A0</div><div>Attackers are able to read Database information by ex=
ecution of own SQL commands.=C2=A0</div><div>=C2=A0=C2=A0</div><div>DORKS (=
How to find the target) :=C2=A0</div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D =C2=A0</div=
><div>inurl:/index.php?option=3Dcom_blog_calendar=C2=A0</div><div>Or use yo=
ur own Google Dorks :)=C2=A0</div><div><br></div><div>Proof of Concept =C2=
=A0</div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D =C2=A0</div>=
<div><br></div><div>SQL Injection=C2=A0</div><div>PoC : =C2=A0</div><div>ht=
tp://[Site]/[Path]/index.php?option=3Dcom_blog_calendar&amp;modid=3D[&#39;S=
QLi] =C2=A0</div><div><br></div><div>Screenshot (PoC) : <a href=3D"http://i=
64.tinypic.com/2rqhhk4.png">http://i64.tinypic.com/2rqhhk4.png</a>=C2=A0</d=
iv><div><br></div><div>Example of Vuln Sites :=C2=A0</div><div><a href=3D"h=
ttps://www.zen-road.org/index.php?option=3Dcom_blog_calendar&amp;modid=3D[&=
#39;SQLi]">https://www.zen-road.org/index.php?option=3Dcom_blog_calendar&am=
p;modid=3D[&#39;SQLi]</a>=C2=A0</div><div><a href=3D"http://www3.unitus.it/=
index.php?option=3Dcom_blog_calendar&amp;modid=3D[&#39;SQLi]">http://www3.u=
nitus.it/index.php?option=3Dcom_blog_calendar&amp;modid=3D[&#39;SQLi]</a>=
=C2=A0</div><div><a href=3D"http://chausyleshoz.by/en/index.php?option=3Dco=
m_blog_calendar&amp;modid=3D[&#39;SQLi]">http://chausyleshoz.by/en/index.ph=
p?option=3Dcom_blog_calendar&amp;modid=3D[&#39;SQLi]</a>=C2=A0</div><div><a=
 href=3D"http://www.foms.kg/index.php?option=3Dcom_blog_calendar&amp;modid=
=3D[&#39;SQLi]">http://www.foms.kg/index.php?option=3Dcom_blog_calendar&amp=
;modid=3D[&#39;SQLi]</a>=C2=A0</div><div><a href=3D"http://www.iab.com.bd/i=
ndex.php?option=3Dcom_blog_calendar&amp;modid=3D[&#39;SQLi]">http://www.iab=
.com.bd/index.php?option=3Dcom_blog_calendar&amp;modid=3D[&#39;SQLi]</a>=C2=
=A0</div><div>... etc ...</div><div><br></div><div><div class=3D"gmail_sign=
ature">-=3D Regards =3D-<br>=C2=A0Steevee A.K.A</div></div>
</div>

--001a113b9a3a74101705448c169c--

--001a113b9a3a74101d05448c169e
Content-Type: text/plain; charset=US-ASCII; name="poc.txt"
Content-Disposition: attachment; filename="poc.txt"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_ix5v30q20

PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
IA0KSm9vbWxhIGNvbV9ibG9nX2NhbGVuZGFyIFNRTCBJbmplY3Rpb24gVnVs
bmVyYWJpbGl0eSANCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PSANCg0KOi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS06IA0KOiAjIEV4cGxvaXQgVGl0bGUgOiBKb29tbGEgY29tX2Jsb2df
Y2FsZW5kYXIgU1FMIEluamVjdGlvbiBWdWxuZXJhYmlsaXR5ICANCjogIyBE
YXRlIDogMjZ0aCBEZWNlbWJlciAyMDE2ICANCjogIyBBdXRob3IgOiBYLUNp
c2FkYW5lIA0KOiAjIENNUyBOYW1lIDogSm9vbWxhIA0KOiAjIENNUyBEZXZl
bG9wZXIgOiBodHRwOi8vam9vbWxhY29kZS5vcmcvZ2YvcHJvamVjdC9ibG9n
X2NhbGVuZGFyLyANCjogIyBDYXRlZ29yeSA6IFdlYiBBcHBsaWNhdGlvbiAN
CjogIyBWdWxuZXJhYmlsaXR5IDogU1FMIEluamVjdGlvbiANCjogIyBUZXN0
ZWQgT24gOiBTUUxNYXAgMS4wLjEyLjkjZGV2DQo6ICMgR3JlZXR6IHRvIDog
WC1Db2RlIFlvZ3lhRnJlZSwgRXhwbG9yZUNyZXcsIENvZGVOZXNpYSwgQm9n
b3IgSGFja2VycyBDb21tdW5pdHksIEJvcm5lbyBDcmV3LCBEZXBvayBDeWJl
ciwgTWFudGFuIA0KOi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS06
IA0KDQpBIFNRTCBJbmplY3Rpb24gVnVsbmVyYWJpbGl0eSBoYXMgYmVlbiBk
aXNjb3ZlcmVkIGluIHRoZSBKb29tbGEgTW9kdWxlIGNhbGxlZCBjb21fYmxv
Z19jYWxlbmRhci4gDQpUaGUgVnVsbmVyYWJpbGl0eSBpcyBsb2NhdGVkIGlu
IHRoZSBpbmRleC5waHA/b3B0aW9uPWNvbV9ibG9nX2NhbGVuZGFyJm1vZGlk
PXh4eCBQYXJhbWV0ZXIuIA0KQXR0YWNrZXJzIGFyZSBhYmxlIHRvIGV4ZWN1
dGUgb3duIFNRTCBjb21tYW5kcyBieSB1c2FnZSBvZiBhIEdFVCBNZXRob2Qg
UmVxdWVzdCB3aXRoIG1hbmlwdWxhdGVkIG1vZGlkIFZhbHVlLiANCkF0dGFj
a2VycyBhcmUgYWJsZSB0byByZWFkIERhdGFiYXNlIGluZm9ybWF0aW9uIGJ5
IGV4ZWN1dGlvbiBvZiBvd24gU1FMIGNvbW1hbmRzLiANCiAgDQpET1JLUyAo
SG93IHRvIGZpbmQgdGhlIHRhcmdldCkgOiANCj09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09ICANCmludXJsOi9pbmRleC5waHA/b3B0aW9uPWNv
bV9ibG9nX2NhbGVuZGFyIA0KT3IgdXNlIHlvdXIgb3duIEdvb2dsZSBEb3Jr
cyA6KSANCg0KUHJvb2Ygb2YgQ29uY2VwdCAgDQo9PT09PT09PT09PT09PT09
ICANCg0KU1FMIEluamVjdGlvbiANClBvQyA6ICANCmh0dHA6Ly9bU2l0ZV0v
W1BhdGhdL2luZGV4LnBocD9vcHRpb249Y29tX2Jsb2dfY2FsZW5kYXImbW9k
aWQ9WydTUUxpXSAgDQoNClNjcmVlbnNob3QgKFBvQykgOiBodHRwOi8vaTY0
LnRpbnlwaWMuY29tLzJycWhoazQucG5nIA0KDQpFeGFtcGxlIG9mIFZ1bG4g
U2l0ZXMgOiANCmh0dHBzOi8vd3d3Lnplbi1yb2FkLm9yZy9pbmRleC5waHA/
b3B0aW9uPWNvbV9ibG9nX2NhbGVuZGFyJm1vZGlkPVsnU1FMaV0gDQpodHRw
Oi8vd3d3My51bml0dXMuaXQvaW5kZXgucGhwP29wdGlvbj1jb21fYmxvZ19j
YWxlbmRhciZtb2RpZD1bJ1NRTGldIA0KaHR0cDovL2NoYXVzeWxlc2hvei5i
eS9lbi9pbmRleC5waHA/b3B0aW9uPWNvbV9ibG9nX2NhbGVuZGFyJm1vZGlk
PVsnU1FMaV0gDQpodHRwOi8vd3d3LmZvbXMua2cvaW5kZXgucGhwP29wdGlv
bj1jb21fYmxvZ19jYWxlbmRhciZtb2RpZD1bJ1NRTGldIA0KaHR0cDovL3d3
dy5pYWIuY29tLmJkL2luZGV4LnBocD9vcHRpb249Y29tX2Jsb2dfY2FsZW5k
YXImbW9kaWQ9WydTUUxpXSANCi4uLiBldGMgLi4u

--001a113b9a3a74101d05448c169e--
