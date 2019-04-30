X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1012" "Tuesday" "30" "April" "2019" "17:23:22" "+0200" "Martin" "martin_s@apache.org" nil "27" nil nil nil nil "4" nil nil (number mark "U       martin_s@apa Apr 30   27/1012  " thread-indent "\"[oss-security] [SECURITY] CVE-2019-0214: Apache Archiva arbitrary file write and delete on the server\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY] CVE-2019-0214: Apache Archiva arbitrary file write and delete on the server" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32094 invoked by uid 550); 30 Apr 2019 16:19:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23558 invoked from network); 30 Apr 2019 15:23:42 -0000
From: Martin <martin_s@apache.org>
To: users@archiva.apache.org, users@maven.apache.org, announce@apache.org
Cc: oss-security@lists.openwall.com, bugtraq@securityfocus.com
Date: Tue, 30 Apr 2019 17:23:22 +0200
Message-ID: <2614535.bqnvQ5soFs@golgafrichnam>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [oss-security] [SECURITY] CVE-2019-0214: Apache Archiva arbitrary file write and delete on the server

CVE-2019-0214: Apache Archiva arbitrary file write and delete on the server

Severity: Medium

Vendor:
The Apache Software Foundation

Versions Affected:
    Apache Archiva 2.0.0 - 2.2.3
    The unsupported versions 1.x are also affected.  

It is possible to write files to the archiva server at arbitrary locations by using the artifact upload mechanism. 
Existing files can be overwritten, if the archiva run user has appropriate permission on the filesystem for the target file.

Mitigation:
  It is highly recommended to upgrade to Archiva 2.2.4 or higher, where additional validations are implemented to prevent such malicious parameter values.
  As intermediate action you may reduce the number of users that are allowed to upload to archiva and make sure, that the archiva run user may have only 
  write permission to the directories needed.

References:
http://archiva.apache.org/security.html#CVE-2019-0214

The newest Archiva version can be downloaded from:
http://archiva.apache.org/download.cgi



