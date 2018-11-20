X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["938" "Tuesday" "20" "November" "2018" "17:08:59" "-0500" "Larry W. Cashdollar" "larry0@me.com" "<0680DF2A-87F0-48B8-93F3-0163F6CF2340@me.com>" "25" "[oss-security] Arbitrary File Upload File Upload Vulnerability in php-traditional-server v1.2.2" nil nil nil "11" "2018112022:08:59" "[oss-security] Arbitrary File Upload File Upload Vulnerability in php-traditional-server v1.2.2" (number mark "U       larry0@me.co Nov 20   25/938   " thread-indent "\"[oss-security] Arbitrary File Upload File Upload Vulnerability in php-traditional-server v1.2.2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32711 invoked by uid 550); 20 Nov 2018 22:09:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32671 invoked from network); 20 Nov 2018 22:09:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=04042017;
	t=1542751744; bh=/R/miJwhf2B57z4faoq6lHt4hNT+iLWoHoe4tbd/qAo=;
	h=Date:Subject:From:To:Message-id:MIME-version:Content-type;
	b=m+BktunyNnIyXd98T6qT7o4XdlA4QKuTQYI88xd+OSl7L/DpBzsPj/VSNF2l8vaRF
 n6AL5Ytixmmv7Oul9bWZuRa95xBikXi8n6O9L/hBX5stXkbSxgPBCmW2xMsOZ6i2f4
 2EByWS3Doh9d/3joTYY3BsNdNUwY3BFFB4CQ1FXbvFlTJH8W0M/CBdBMUGofUftgfP
 0PHDOAlv91oJWp0cNRGs3wOf/xE1tKDEsYy3YYAQLPBHcevgdJ8Kejgaxl7qqztSh5
 FXQ1PJnSMCWhzC83wfGD7pSYDNJpVe1bFK0nmpysrp0R8twS+NypoXiy4ARM5IzgBE
 YvbzPrxE26w4A==
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=626 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1807170000 definitions=main-1811200194
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,,
 definitions=2018-11-20_10:,, signatures=0
User-Agent: Microsoft-MacOutlook/10.13.0.181109
Date: Tue, 20 Nov 2018 17:08:59 -0500
From: "Larry W. Cashdollar" <larry0@me.com>
To: Open Security <oss-security@lists.openwall.com>
Message-id: <0680DF2A-87F0-48B8-93F3-0163F6CF2340@me.com>
Thread-topic: Arbitrary File Upload File Upload Vulnerability in
 php-traditional-server v1.2.2
MIME-version: 1.0
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 7bit
Subject: [oss-security] Arbitrary File Upload File Upload Vulnerability in
 php-traditional-server v1.2.2

Title: Arbitrary File Upload File Upload Vulnerability in php-traditional-server v1.2.2
Author: Larry W. Cashdollar, @_larry0
Date: 2018-11-15
CVE-ID:[CVE-2018-9209]
CWE: CWE-434 Arbitrary File Upload
Download Site: N/A
Vendor: FineUploader
Vendor Notified: 2018-11-15, software discontinued. 

Advisory: http://www.vapidlabs.com/advisory.php?v=208

Description: PHP-based server-side example for handling traditional endpoint requests from Fine Uploader

Vulnerability:
The code in endpoint.php allows file uploads and doesn't check if the users authenticated or the file type.  This allows for executable files to be uploaded and therefore remote code execution. 

Lines 37-38 from endpoint.php:

37: // Specify the list of valid extensions, ex. array("jpeg", "xml", "bmp")
38: $uploader->allowedExtensions = array(); // all files types allowed by default

Exploit Code:
https://github.com/lcashdol/Exploits/tree/master/CVE-2018-9209


