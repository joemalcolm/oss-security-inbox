X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2728" "Saturday" "9" "May" "2015" "05:43:26" "+0000" "Nitin Venkatesh" "venkatesh.nitin@gmail.com" "<CAARZ5vpRu9sgev=p9M+zbxagBjbGRWBHrA-yUO9a2V7vpyVfRA@mail.gmail.com>" "79" "[oss-security] Wordpress Roomcloud plugin v1.1(rev @1115307) XSS vulnerability" nil nil nil "5" "2015050905:43:26" "[oss-security] Wordpress Roomcloud plugin v1.1(rev @1115307) XSS vulnerability" (number mark "        venkatesh.ni May  9   79/2728  " thread-indent "\"[oss-security] Wordpress Roomcloud plugin v1.1(rev @1115307) XSS vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9733 invoked by uid 550); 9 May 2015 11:18:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24528 invoked from network); 9 May 2015 05:43:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=0ECPcqDiAwZ3bgeWmDsBH/AXjWgGgBKMaAhwWTMfw08=;
        b=wk5t3y4jwymkATPVolT0K0MvAzn9Q9FDgKp4aFrUVzLuo3HrBWkgEodngI1p3SY4oJ
         xnu7EnTS60rN16oH4SFBea/K+4QwM7FvySZS4jqkzdHvzLos2ZMnnaprkWa0Su1luwzG
         aYAqlCz9L2YkWeYHujnK0xWcQujNRw/57uMjv8b6NPlHuX8dFsLBweC8VryQw+pf9yC8
         BGRMQJpMkZyTso0/tBQbOKEbA+8ES1DxH0j+m20mwnluXavRgn/sEZfEmUzAUKZxHGdD
         pUh4kPBj2POleM71ksLVQsU+VzzjrwbXyvqSfNVTI+SGh2MW2ui0t4uTUeQrTG7Cu8ox
         xRFw==
X-Received: by 10.50.45.103 with SMTP id l7mr1780183igm.41.1431150207544; Fri,
 08 May 2015 22:43:27 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAARZ5vpRu9sgev=p9M+zbxagBjbGRWBHrA-yUO9a2V7vpyVfRA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e0111b1b6bdb3fa05159f9fb8
Date: Sat, 09 May 2015 05:43:26 +0000
From: Nitin Venkatesh <venkatesh.nitin@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Wordpress Roomcloud plugin v1.1(rev @1115307) XSS vulnerability
To: oss-security@lists.openwall.com

--089e0111b1b6bdb3fa05159f9fb8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

## Details

# Title: Unsanitized parameters in Wordpress Roomcloud plugin v1.1(rev
@1115307) allows Cross-site Scripting
# Submitter: Nitin Venkatesh <venkatesh [dot] nitin [at] gmail [dot] com>
# Product: Wordpress Roomcloud plugin
# Product URL: https://wordpress.org/plugins/roomcloud
# Vulnerability Type: Cross-site Scripting [CWE-79]
# Affected Versions: Tested on v1.1 (revision @1115307)
# Fixed Version: v1.1 (revision @1117499)
# Link to source code diff:
https://plugins.trac.wordpress.org/changeset/1117499
# CVE Status: None/Unassigned/Fresh

## Product Information

A Plugin to add roomcloud booking form to hotel website using [roomcloud]
shortcode

Use Roomcloud plugin to embed our Booking Engine form into your wordpress
site.
This allows your customers to make online reservations on the web site of
your hotel.
More info at http://www.roomcloud.net

## Vulnerability Description

Unsantized POST parameters are susceptible to XSS in the roomcloud.php file
viz., (1)pin, (2)start_day, (3)start_month, (4)start_year, (5)end_day,
(6)end_month, (7)end_year, (8)lang, (9)adults, (10)children

## Vulnerable Source Code

39 echo('<iframe width=3D"800" height=3D"600" src=3D"');
40
41   echo('
http://www.roomcloud.net/be/se1/hotel.jsp?hotel=3D'.$_POST['hotel'].'&pin=
=3D'.$_POST['pin'].'&start_day=3D'.$_POST['start_day'].'&start_month=3D'.$_=
POST['start_month'].'&start_year=3D'.$_POST['start_year'].'&end_day=3D'.$_P=
OST['end_day'].'&end_month=3D'.$_POST['end_month'].'&end_year=3D'.$_POST['e=
nd_year'].'&r=3D1&a=3D1&lang=3D'.$_POST['lang'].'&t=3D0&n=3D0&adults=3D'.$_=
POST['adults'].'&children=3D'.$_POST['children'].$chlda
);
42
43   echo('"></iframe>');

## Proof of Concept

Sample exploit POST request body:

hotel=3D144&lang=3Den&start_day=3D"><script>alert(1);</script>&start_month=
=3D03&start_year=3D2015&end_day=3D20&end_month=3D03&end_year=3D2015&adults=
=3D2&pin=3D&children=3D

## Solution:

Upgrade to latest version of the plugin.

## Disclosure Timeline:

2015-03-19 - Informed developer in support forums for the plugin & mailed
Wordpress plugins team
2015-03-21 - Plugin disabled for download by Wordpress team
2015-03-21 - Contacted developer via email
2015-03-21 - Vulnerability fixed by developer
2015-03-22 - Agreed to public disclosure on/after May 5, 2015
2015-03-23 - Wordpress Plugins team re-enables download page
2015-05-09 - Publishing disclosure on FD mailing list.

## Disclaimer:

This disclosure is purely meant for educational purposes. I will in no way
be responsible as to how the information in this disclosure is used.

--089e0111b1b6bdb3fa05159f9fb8--
