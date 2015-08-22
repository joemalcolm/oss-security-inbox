X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1340" "Saturday" "22" "August" "2015" "06:48:19" "-0400" "Larry W Cashdollar" "larry0@me.com" "<55D85373.7010101@me.com>" "37" "[oss-security] CVE Request Blind SQL Injection in wordpress plugin dukapress v2.5.9" nil nil nil "8" "2015082210:48:19" "[oss-security] CVE Request Blind SQL Injection in wordpress plugin dukapress v2.5.9" (number mark "        larry0@me.co Aug 22   37/1340  " thread-indent "\"[oss-security] CVE Request Blind SQL Injection in wordpress plugin dukapress v2.5.9\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23668 invoked by uid 550); 22 Aug 2015 10:48:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23644 invoked from network); 22 Aug 2015 10:48:34 -0000
MIME-version: 1.0
Content-type: multipart/alternative;
 boundary="Boundary_(ID_Ae/Yd8xLx2B5XVd8YcVFqA)"
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.14.151,1.0.33,0.0.0000
 definitions=2015-08-22_02:2015-08-21,2015-08-22,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=1 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1508220177
Message-id: <55D85373.7010101@me.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101
 Thunderbird/31.8.0
Date: Sat, 22 Aug 2015 06:48:19 -0400
From: Larry W Cashdollar <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request Blind SQL Injection in wordpress plugin dukapress v2.5.9
To: oss-security@lists.openwall.com

--Boundary_(ID_Ae/Yd8xLx2B5XVd8YcVFqA)
Content-type: text/plain; CHARSET=US-ASCII; format=flowed
Content-transfer-encoding: 7BIT

Hello,
May I have a CVE for this vulnerability?

Title: Blind SQL Injection in wordpress plugin dukapress v2.5.9
Author: Larry W. Cashdollar, @_larry0
Date: 2015-08-04
Download Site: http://wordpress.org/plugins/dukapress/
Vendor: dukapress.org
Vendor Notified: 2015-08-07, fixed in v2.5.9.1
Vendor Contact: https://twitter.com/moshthepitt
Description: DukaPress is open source software that can be used to build 
online shops quickly and easily. DukaPress is built on top of WordPress, 
a world class content management system. DukaPress is built to be both 
simple and elegant yet powerful and scalable.
Vulnerability:
The code in dukapress/download.php does not sanitize user input before 
passing it to query() allowing SQL to be injected.  The user is not 
required to be logged into wordpress in order to exploit this vulnerability.


9:$sql = "SELECT saved_name, real_name, count, 
TIMESTAMPDIFF(SECOND,sent_time,NOW()) as time_diff FROM `{$table_name2}` 
WHERE saved_name='{$_GET['id']}'";
.
.
.

26:    $wpdb->query("UPDATE {$table_name2} SET count={$download_count} 
WHERE saved_name='{$_GET['id']}'");

Advisory: http://www.vapid.dhs.org/advisory.php?v=152

--Boundary_(ID_Ae/Yd8xLx2B5XVd8YcVFqA)--
