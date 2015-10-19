X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1637" "Monday" "19" "October" "2015" "15:39:52" "-0400" "Larry Cashdollar" "larry0@me.com" "<D24ABF3B.241B5%larry0@me.com>" "48" "Re: [oss-security] CVE request for sqlalchemy-utils" nil nil nil "10" "2015101919:39:52" "[oss-security] CVE request for sqlalchemy-utils" (number mark "U       larry0@me.co Oct 19   48/1637  " thread-indent "\"Re: [oss-security] CVE request for sqlalchemy-utils\"\n") "<1445196119.3560107.413423481.7C9B0859@webmail.messagingengine.com>" ("<1444165809.2991126.403145441.2CAE05C4@webmail.messagingengine.com>" "<1445196119.3560107.413423481.7C9B0859@webmail.messagingengine.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22039 invoked by uid 550); 19 Oct 2015 19:40:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22005 invoked from network); 19 Oct 2015 19:40:12 -0000
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2015-10-19_15:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 kscore.is_bulkscore=0 kscore.compositescore=1 compositescore=0.9
 suspectscore=0 phishscore=0 bulkscore=0 kscore.is_spamscore=0 rbsscore=0
 spamscore=0 urlsuspectscore=0.9 adultscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.0.1-1510090000 definitions=main-1510190334
User-Agent: Microsoft-MacOutlook/14.5.7.151005
Message-id: <D24ABF3B.241B5%larry0@me.com>
Thread-topic: [oss-security] CVE request for sqlalchemy-utils
References: <1444165809.2991126.403145441.2CAE05C4@webmail.messagingengine.com>
 <1445196119.3560107.413423481.7C9B0859@webmail.messagingengine.com>
In-reply-to: <1445196119.3560107.413423481.7C9B0859@webmail.messagingengine.com>
MIME-version: 1.0
Content-type: multipart/alternative; boundary=B_3528113999_3679088
Cc: cve-assign@mitre.org
Date: Mon, 19 Oct 2015 15:39:52 -0400
From: Larry Cashdollar <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request for sqlalchemy-utils
To: Open Security <oss-security@lists.openwall.com>

--B_3528113999_3679088
Content-type: text/plain;
	charset="US-ASCII"
Content-transfer-encoding: 7bit

I stopped asking.

From:  <robert@robert.io>
Reply-To:  Open Security <oss-security@lists.openwall.com>
Date:  Sunday, October 18, 2015 at 3:21 PM
To:  Open Security <oss-security@lists.openwall.com>
Cc:  <cve-assign@mitre.org>
Subject:  Re: [oss-security] CVE request for sqlalchemy-utils

I've been told I should check-in after a couple of weeks without a
response. Is there any more information I can provide to help you make a
decision?

>From the discussion on the bug tracker, this was a design decision, but
at least some users of the library weren't aware of it. As far as I know
it wasn't / isn't documented. I noticed the issue when reviewing the
code for Netflix's Lemur tool and they were not previously aware of the
issue: https://github.com/Netflix/lemur/issues/117
 
- Robert

On Tue, Oct 6, 2015, at 02:10 PM, robert@robert.io wrote:
>  Description: I noticed that the sqlalchemy-utils package's EncryptedType
>  does not use a random IV when encrypting with AES in CBC mode. It
>  generates a SHA256 hash of the user's key and uses the first 16 bytes of
>  that hash as the IV (and the full hash as the encryption key). The
>  result is that for a given key, the IV will always be the same.
>  
>  Reported here: https://github.com/kvesteri/sqlalchemy-utils/issues/166
>  Version: Current. I'm not sure what the version history of this package
>  looks like, though.
>  Reporter: Robert Picard
>  
>  Please assign a CVE if you feel it would be appropriate for this bug.
>  
>  - Robert




--B_3528113999_3679088--


