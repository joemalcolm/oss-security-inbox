X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1624" "Saturday" "11" "June" "2016" "02:05:05" "+0200" "Damien Regad" "dregad@mantisbt.org" "<njfkjh$lk7$1@ger.gmane.org>" "59" "[oss-security] MantisBT: XSS in custom fields management" "^Date:" nil nil "6" "2016061100:05:05" "[oss-security] MantisBT: XSS in custom fields management" (number mark "U       dregad@manti Jun 11   59/1624  " thread-indent "\"[oss-security] MantisBT: XSS in custom fields management\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11592 invoked by uid 550); 11 Jun 2016 00:05:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11331 invoked from network); 11 Jun 2016 00:05:27 -0000
X-Injected-Via-Gmane: http://gmane.org/
Message-ID: <njfkjh$lk7$1@ger.gmane.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 253.170.6.85.dynamic.wline.res.cust.swisscom.ch
X-Mozilla-News-Host: news://news.gmane.org
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.8.0
Date: Sat, 11 Jun 2016 02:05:05 +0200
From: Damien Regad <dregad@mantisbt.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] MantisBT: XSS in custom fields management
To: oss-security@lists.openwall.com

Greetings,

Please assign a CVE ID for the following issue.

Description:

An XSS vulnerability was discovered, affecting MantisBT Custom fields 
management pages. It is caused by unescaped output of 'return URL' GPC 
parameter, and can be exploited as follows:

1. using 'accesskey' inside hidden input field reflects XSS to the
    administrator in manage_custom_field_edit_page.php when the keyboard
    shortcut is actioned
2. using 'javascript:' URI scheme executes the code when the user clicks
    the [Proceed] link on manage_custom_field_update.php after updating
    a custom field

Both attack vectors have been addressed:

- properly escape the return URL prior to printing it on the hidden form
   field
- let html_operation_successful() sanitize the URL before displaying
   it, just like html_meta_redirect() does. In this case, if the
   string contains an URI scheme, it will be replaced by 'index.php'


Affected versions:
1.2.0 and later (possibly older releases as well - not tested)

Fixed in versions:
- 1.2.20
- 1.3.0-rc.2
As of this writing, these have not been released yet, but both should be 
available in the next few days.

Patch:
See Github [1]

Credits:
The issue was discovered by Kacper Szurek [2] and fixed by Damien Regad
(MantisBT Developer).

References:
Further details available in our issue tracker [3]


Best regards,
D. Regad
MantisBT Developer
http://www.mantisbt.org


[1] http://github.com/mantisbt/mantisbt/commit/5068df2d (1.2.x)
     http://github.com/mantisbt/mantisbt/commit/11ab3d6c (1.3.x)
[2] http://security.szurek.pl/
[3] https://mantisbt.org/bugs/view.php?id=20956



