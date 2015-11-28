X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2143" "Saturday" "28" "November" "2015" "13:05:57" "-0500" "Larry W. Cashdollar" "larry0@me.com" "<5659ED05.3060502@me.com>" "58" "[oss-security] SQL injection in wordpress plugin double-opt-in-for-download v2.0.8" nil nil nil "11" "2015112818:05:57" "[oss-security] SQL injection in wordpress plugin double-opt-in-for-download v2.0.8" (number mark "U       larry0@me.co Nov 28   58/2143  " thread-indent "\"[oss-security] SQL injection in wordpress plugin double-opt-in-for-download v2.0.8\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31825 invoked by uid 550); 28 Nov 2015 18:07:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30154 invoked from network); 28 Nov 2015 18:06:11 -0000
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2015-11-28_05:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=13
 kscore.is_bulkscore=0 kscore.compositescore=1 compositescore=0.9
 suspectscore=3 phishscore=0 bulkscore=0 kscore.is_spamscore=0 rbsscore=0
 spamscore=13 urlsuspectscore=0.9 adultscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.0.1-1510090000 definitions=main-1511280347
To: oss-security@lists.openwall.com
From: "Larry W. Cashdollar" <larry0@me.com>
Message-id: <5659ED05.3060502@me.com>
Date: Sat, 28 Nov 2015 13:05:57 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-version: 1.0
Content-type: text/plain; charset=utf-8; format=flowed
Content-transfer-encoding: 7bit
Subject: [oss-security] SQL injection in wordpress plugin double-opt-in-for-download v2.0.8

Title: SQL injection in wordpress plugin double-opt-in-for-download v2.0.8
Author: Larry W. Cashdollar, @_larry0
Date: 2015-11-24
Download Site: https://wordpress.org/plugins/double-opt-in-for-download/
Vendor: https://profiles.wordpress.org/andyba45/ 
http://www.labwebdesigns.com
Vendor Notified: 2015-11-24
Vendor Fixed: 2015-11-24 in v2.0.9
Description: Capture visitors names and email addresses by offering FREE
downloads to your visitors in exchange for their email address with our
Double Opt-In Plug
Vulnerability:
The file 
double-opt-in-for-download/public/includes/class-doifd-download.php the 
lines 61 & 110:

38                 $ver = $_GET[ 'ver' ];
.
.
61                     $checkallowed = $wpdb->get_row ( "SELECT 
doifd_downloads    _allowed FROM " . $wpdb->prefix . 
"doifd_lab_subscribers  WHERE doifd_verifi    cation_number = '$ver' " );
.
.
110                             $wpdb->query (
111                                     "
112                         UPDATE $wpdb->doifd_subscribers
113                         SET doifd_downloads_allowed = 
doifd_downloads_allowe    d+1 WHERE doifd_verification_number = '$ver'
114                     "
115                             );

Allows Blind SQL injection at the $ver parameter as it is not properly 
sanitized or passed through a prepare() function first.

In file 
double-opt-in-for-download/public/includes/class-doifd-landing-page.php 
line 71 allows for SQL injection via the $ver parameter.

  26     public function getVerification() {
  27         $this->verification = $_GET[ 'ver' ];
  28         return $this->verification;
  29     }
.
.

  71         $sql = "SELECT *
  72                 FROM {$wpdb->prefix}doifd_lab_subscribers
  73                 INNER JOIN {$wpdb->prefix}doifd_lab_downloads
  74                 ON 
{$wpdb->prefix}doifd_lab_downloads.doifd_download_id = {$ 
wpdb->prefix}doifd_lab_subscribers.doifd_download_id
  75                 WHERE doifd_verification_number = 
'$this->verification'";
  76
  77         $this->data = $wpdb->get_row( $sql, ARRAY_A );
CVEID: 2015-7517
Advisory: http://www.vapidlabs.com/advisory.php?v=157
