X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1378" "Sunday" "6" "September" "2015" "16:43:04" "-0400" "Larry Cashdollar" "larry0@me.com" "<8265A8BE-B180-400F-A93D-293AB469BD43@me.com>" "38" "Re: [oss-security] CVE Request Blind SQL Injection in wordpress plugin dukapress v2.5.9" nil nil nil "9" "2015090620:43:04" "[oss-security] CVE Request Blind SQL Injection in wordpress plugin dukapress v2.5.9" (number mark "U       larry0@me.co Sep  6   38/1378  " thread-indent "\"Re: [oss-security] CVE Request Blind SQL Injection in wordpress plugin dukapress v2.5.9\"\n") "<55D85373.7010101@me.com>" ("<55D85373.7010101@me.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30147 invoked by uid 550); 6 Sep 2015 20:43:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30115 invoked from network); 6 Sep 2015 20:43:27 -0000
References: <55D85373.7010101@me.com>
From: Larry Cashdollar <larry0@me.com>
Content-type: text/plain; charset=us-ascii
X-Mailer: iPhone Mail (12H321)
In-reply-to: <55D85373.7010101@me.com>
Message-id: <8265A8BE-B180-400F-A93D-293AB469BD43@me.com>
Date: Sun, 06 Sep 2015 16:43:04 -0400
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Content-transfer-encoding: quoted-printable
MIME-version: 1.0 (1.0)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2015-09-06_03:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 kscore.is_bulkscore=0 compositescore=0.544189039273092 phishscore=0
 kscore.is_spamscore=0 rbsscore=0.544189039273092
 recipient_to_sender_totalscore=0 spamscore=0 urlsuspectscore=0.544189039273092
 adultscore=0 kscore.compositescore=8.29442070582331e-11 circleOfTrustscore=0
 suspectscore=0 recipient_domain_to_sender_totalscore=0 bulkscore=0
 recipient_domain_to_sender_domain_totalscore=0
 recipient_to_sender_domain_totalscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1412110000 definitions=main-1509060348
Subject: Re: [oss-security] CVE Request Blind SQL Injection in wordpress plugin
 dukapress v2.5.9

Hello,
Any progress with this request?=20
Thanks!
-larry

> On Aug 22, 2015, at 6:48 AM, Larry W Cashdollar <larry0@me.com> wrote:
>=20
> Hello,
> May I have a CVE for this vulnerability?
>=20
> Title: Blind SQL Injection in wordpress plugin dukapress v2.5.9
> Author: Larry W. Cashdollar, @_larry0
> Date: 2015-08-04
> Download Site: http://wordpress.org/plugins/dukapress/
> Vendor: dukapress.org
> Vendor Notified: 2015-08-07, fixed in v2.5.9.1
> Vendor Contact: https://twitter.com/moshthepitt
> Description: DukaPress is open source software that can be used to build =
online shops quickly and easily. DukaPress is built on top of WordPress, a =
world class content management system. DukaPress is built to be both simple=
 and elegant yet powerful and scalable.
> Vulnerability:
> The code in dukapress/download.php does not sanitize user input before pa=
ssing it to query() allowing SQL to be injected.  The user is not required =
to be logged into wordpress in order to exploit this vulnerability.
>=20
>=20
> 9:$sql =3D "SELECT saved_name, real_name, count, TIMESTAMPDIFF(SECOND,sen=
t_time,NOW()) as time_diff FROM `{$table_name2}` WHERE saved_name=3D'{$_GET=
['id']}'";
> .
> .
> .
>=20
> 26:    $wpdb->query("UPDATE {$table_name2} SET count=3D{$download_count} =
WHERE saved_name=3D'{$_GET['id']}'");
>=20
> Advisory: http://www.vapid.dhs.org/advisory.php?v=3D152
