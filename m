X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1021" "Friday" "20" "November" "2015" "11:39:54" "-0800" "Joe Bowser" "bowserj@gmail.com" "<CAOBL_k4PP6sjMSS3HdAodiLQUWO7F+=T4KX9hrHX-DjRyLN7UQ@mail.gmail.com>" "31" "[oss-security] CVE-2015-5256: Apache Cordova vulnerable to improper application of whitelist restrictions" nil nil nil "11" "2015112019:39:54" "[oss-security] CVE-2015-5256: Apache Cordova vulnerable to improper application of whitelist restrictions" (number mark "U       bowserj@gmai Nov 20   31/1021  " thread-indent "\"[oss-security] CVE-2015-5256: Apache Cordova vulnerable to improper application of whitelist restrictions\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13365 invoked by uid 550); 20 Nov 2015 19:57:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25938 invoked from network); 20 Nov 2015 19:40:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=muLVmHo3ZPriRvxU2+8Pz3khQIWFEE/zrU2nS/MD1go=;
        b=WHV3npf1fo6HnrktZbo3weXTVNTrz+B+rZrXTusSXZNZm8elSMM5VxW6TYV4c2BL3j
         JRfMsxcOWAoBfQ6+Ge0spY/NA72wc/AHqLetFuR381BhCRI6luqHbL+VrPBwzWa+3N0C
         ilJBeNQaZyrxQtzrGQP9B9LMZSpTh4cFxl/79wy8YEMH9TKrm/ezVPo+7bCbOxJHlUe6
         A4o8/MGQpgq2JqcNPisFBBFceirMBUSph9qjgwD5niDOZWw5s7MREJN0fHEvoSfcQC+l
         6PDjfotBLaQVplnHlZue7o20eGYYWoak+jhHZX153/dPaHXnTsAdLob4WsQWfLyB6hOP
         exUw==
MIME-Version: 1.0
X-Received: by 10.107.9.219 with SMTP id 88mr16261808ioj.6.1448048395146; Fri,
 20 Nov 2015 11:39:55 -0800 (PST)
Date: Fri, 20 Nov 2015 11:39:54 -0800
Message-ID: <CAOBL_k4PP6sjMSS3HdAodiLQUWO7F+=T4KX9hrHX-DjRyLN7UQ@mail.gmail.com>
From: Joe Bowser <bowserj@gmail.com>
To: vuls@jpcert.or.jp, "security@apache.org" <security@apache.org>, dev <dev@cordova.apache.org>, 
	"private@cordova.apache.org" <private@cordova.apache.org>, bugtraq@securityfocus.com, 
	oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a113eb12635de7d0524fe0aed
Subject: [oss-security] CVE-2015-5256: Apache Cordova vulnerable to improper application of
 whitelist restrictions

--001a113eb12635de7d0524fe0aed
Content-Type: text/plain; charset=UTF-8

======================================================================
CVE-2015-5256: Apache Cordova vulnerable to improper application of
whitelist restrictions

Severity: Medium

Vendor:
The Apache Software Foundation

Versions Affected:
Cordova Android 3.7.2 and earlier

Description:
Android applications created using Apache Cordova that use a remote server
contain a vulnerability where whitelist restrictions are not properly
applied.
Improperly crafted URIs could be used to circumvent the whitelist, allowing
for the execution of non-whitelisted Javascript.

Upgrade path:
Developers who are concerned about this should rebuild their applications
with Cordova Android 4.1.1 or later and use the new whitelist.  Developers
using remote content roots should also use SSL, as well as Content Security
Policy to further mitigate this issue.

Credit: Muneaki Nishimura of Sony Digital Network Applications, Inc

--001a113eb12635de7d0524fe0aed--
