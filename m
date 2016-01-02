X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1369" "Saturday" "2" "January" "2016" "23:00:47" "+0100" "Damien Regad" "dregad@mantisbt.org" "<n69hag$2if$1@ger.gmane.org>" "53" "[oss-security] CVE Request: MantisBT SOAP API can be used to disclose confidential settings" nil nil nil "1" "2016010222:00:47" "[oss-security] CVE Request: MantisBT SOAP API can be used to disclose confidential settings" (number mark "U       dregad@manti Jan  2   53/1369  " thread-indent "\"[oss-security] CVE Request: MantisBT SOAP API can be used to disclose confidential settings\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7904 invoked by uid 550); 2 Jan 2016 22:01:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7883 invoked from network); 2 Jan 2016 22:01:27 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Damien Regad <dregad@mantisbt.org>
Date: Sat, 2 Jan 2016 23:00:47 +0100
Message-ID: <n69hag$2if$1@ger.gmane.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: aannecy-652-1-627-187.w90-27.abo.wanadoo.fr
X-Mozilla-News-Host: news://news.gmane.org:119
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.4.0
Subject: [oss-security] CVE Request: MantisBT SOAP API can be used to disclose confidential
 settings

Greetings,

Please assign a CVE ID for the following issue.


Description:

Until now, MantisBT sensitive config options were blacklisted to prevent 
their access via SOAP API (see config_is_private() function).

When a new config is added or an existing one is renamed, the black list 
must be updated accordingly. If this is not or incorrectly done, the 
config becomes available via SOAP API.

This was the case with the MantisBT master cryptographic salt 
(crypto_master_salt): it was incorrectly spelt.

To fix the problem as well as avoid future occurences, we are switching 
to a whitelist approach, i.e. listing all configs that *can* be accessed 
via SOAP.

Any MantisBT installation with SOAP API enabled should be patched, and 
immediately generate a new salt.


Affected versions:
 >= 1.3.0-beta.1

Fixed in versions:
1.3.0 (not yet released), possibly 1.3.0-rc.2 if we decide we need 
another release candidate before that.

Patch:
See Github [1]

Credits:
The issue was discovered by Paul Richards [2] and fixed by Roland Becker
(MantisBT Developer).

References:
Further details available in our issue tracker [3]


Best regards,
D. Regad
MantisBT Developer
http://www.mantisbt.org


[1] http://github.com/mantisbt/mantisbt/commit/7927c275
[2] https://sourceforge.net/p/mantisbt/mailman/message/32948048/
[3] https://mantisbt.org/bugs/view.php?id=20277

