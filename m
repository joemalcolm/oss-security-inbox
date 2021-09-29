X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1004" "Wednesday" "29" "September" "2021" "14:53:20" "+0000" "Bryan Pendleton" "bpendleton@apache.org" nil "17" "[oss-security] CVE-2021-41616: Apache ddlutils 1.0 readobject vulnerability " nil nil nil "9" nil nil (number mark "U       bpendleton@a Sep 29   17/1004  " thread-indent "\"[oss-security] CVE-2021-41616: Apache ddlutils 1.0 readobject vulnerability \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-41616: Apache ddlutils 1.0 readobject vulnerability " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15471 invoked by uid 550); 29 Sep 2021 16:26:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15603 invoked from network); 29 Sep 2021 14:53:34 -0000
Content-Type: text/plain; charset=utf-8
From: Bryan Pendleton <bpendleton@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e52e8004-ef2f-bd45-a994-81f076002ae7@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 29 Sep 2021 14:53:20 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-41616: Apache ddlutils 1.0 readobject vulnerability 

Description:

Apache DB DdlUtils 1.0 included a BinaryObjectsHelper that was intended for=
 use when migrating database data with a SQL data type of BINARY, VARBINARY=
, LONGVARBINARY, or BLOB between databases using the ddlutils features. The=
 BinaryObjectsHelper  class was insecure and used ObjectInputStream.readObj=
ect without validating that the input data was safe to deserialize.

Please note that DdlUtils is no longer being actively developed. To address=
 the insecurity of the BinaryObjectHelper class, the following changes to D=
dlUtils have been made: (1) BinaryObjectsHelper.java has been deleted from =
the DdlUtils source repository and the DdlUtils feature of propagating data=
 of SQL binary types is therefore no longer present in DdlUtils; (2) The dd=
lutils-1.0 release has been removed from the Apache Release Distribution In=
frastructure; (3) The DdlUtils web site has been updated to indicate that D=
dlUtils is now available only as source code, not as a packaged release.

