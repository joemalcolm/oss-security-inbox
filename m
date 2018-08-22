X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1287" "Wednesday" "22" "August" "2018" "15:15:20" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<9c3c4663-71c6-b0bd-05b1-55fb02d22da7@oracle.com>" "36" "[oss-security] Fwd: X.Org security advisory: August 22, 2018" "^Date:" nil nil "8" "2018082222:15:20" "[oss-security] Fwd: X.Org security advisory: August 22, 2018" (number mark "        alan.coopers Aug 22   36/1287  " thread-indent "\"[oss-security] Fwd: X.Org security advisory: August 22, 2018\"\n") "<20180822220655.GA23506@also.us.oracle.com>" ("<20180822220655.GA23506@also.us.oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30610 invoked by uid 550); 22 Aug 2018 22:15:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30575 invoked from network); 22 Aug 2018 22:15:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=subject : references
 : to : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=oYaVNeXn6gEiuqXTRcqMGWCjpPmp88KuhjOM0m01Z1g=;
 b=f9BYRoSbrXGfOASbTTCkmDYi2RB8J09jvcCgvhLBEtW7F2Yw6Vz/WLhwlloN5fmbMflr
 ajdWt15mAiWph3LOFt9VU4xSIP4TD9xz+cCtdiF5awt0ioCSv9Wpgpuu/NYUMHvFIwIj
 pDZIuTJ5TQKqbdhl6ipryFVNdOYIFcb3EUJ91RMZz2FbaCADO1QDi1Al+lgFI3tds3Pg
 /7iGI5bzTQlKD5jxREmwIHN90b+vYWaIXFfK8dZaOf9fWGB8zXSFlQGYd2LQY/mjGm4c
 idnC1kSwTziUt3YO5w82CogZdMBYrS5FItfxJS28X9mATPOj7+jXDVxvtA2uqLIfRbtt ng== 
References: <20180822220655.GA23506@also.us.oracle.com>
X-Forwarded-Message-Id: <20180822220655.GA23506@also.us.oracle.com>
Message-ID: <9c3c4663-71c6-b0bd-05b1-55fb02d22da7@oracle.com>
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20180822220655.GA23506@also.us.oracle.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=8993 signatures=668707
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1807170000 definitions=main-1808220219
Date: Wed, 22 Aug 2018 15:15:20 -0700
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Fwd: X.Org security advisory: August 22, 2018
To: oss-security@lists.openwall.com

-------- Forwarded Message --------
Subject: X.Org security advisory: August 22, 2018
Date: Wed, 22 Aug 2018 15:06:55 -0700
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: xorg-announce@lists.x.org
CC: xorg-devel@lists.x.org

X.Org security advisory: August 22, 2018

Out-of-bounds write in libXcursor prior to 1.1.15
=================================================

libXcursor could write one byte out of bounds when processing Xcursor
theme files.  In certain cases, such as when used in the Firefox web
browser, this could be used as part of an exploit chain to allow
further attacks on an X client process, as reported via Mozilla's
ASan Nightly project.   This issue has been assigned CVE-2015-9262.

Patches
=======

A patch for this issue was committed to the libXcursor git repository
in 2015, and included in the libXcursor 1.1.15 release.

https://gitlab.freedesktop.org/xorg/lib/libxcursor/commit/897213f36baf6926daf6d192c709cf627aa5fd05

Thanks
======

X.Org thanks Shubham Shrivastav of Samsung for reporting this issue to X.Org
originally, and Alex Gaynor of Mozilla for helping us understand how this
could be exploited by an attacker.

--
	-Alan Coopersmith-              alan.coopersmith@oracle.com
	  X.Org Security Response Team - xorg-security@lists.x.org
