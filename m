X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2273" "Monday" "23" "October" "2017" "23:13:03" "+0200" "Egidio Romano" "research@karmainsecurity.com" "<46e966ba-bcd8-36d9-d0ff-97bcaf38267e@karmainsecurity.com>" "70" "[oss-security] [KIS-2017-02] Tuleap <= 9.6 Second-Order PHP Object Injection Vulnerability" nil nil nil "10" "2017102321:13:03" "[oss-security] [KIS-2017-02] Tuleap <= 9.6 Second-Order PHP Object Injection Vulnerability" (number mark "U       research@kar Oct 23   70/2273  " thread-indent "\"[oss-security] [KIS-2017-02] Tuleap <= 9.6 Second-Order PHP Object Injection Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22286 invoked by uid 550); 23 Oct 2017 21:27:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7510 invoked from network); 23 Oct 2017 21:13:18 -0000
To: bugtraq@securityfocus.com, fulldisclosure@seclists.org,
 oss-security@lists.openwall.com
From: Egidio Romano <research@karmainsecurity.com>
Message-ID: <46e966ba-bcd8-36d9-d0ff-97bcaf38267e@karmainsecurity.com>
Date: Mon, 23 Oct 2017 23:13:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - srv-hp7.netsons.net
X-AntiAbuse: Original Domain - lists.openwall.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - karmainsecurity.com
X-Get-Message-Sender-Via: srv-hp7.netsons.net: authenticated_id: research@karmainsecurity.com
X-Authenticated-Sender: srv-hp7.netsons.net: research@karmainsecurity.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: [oss-security] [KIS-2017-02] Tuleap <= 9.6 Second-Order PHP Object Injection
 Vulnerability

-------------------------------------------------------------
Tuleap <= 9.6 Second-Order PHP Object Injection Vulnerability
-------------------------------------------------------------


[-] Software Links:

https://www.tuleap.org
https://www.enalean.com


[-] Affected Versions:

All versions from 5.0 to 9.6.


[-] Vulnerability Description:

The vulnerable code can be triggered through the User::getRecentElements() method defined in /src/common/user/User.class.php:


1425.	    public function getRecentElements() {
1426.	        if ($recent_elements = $this->getPreference(self::PREFERENCE_RECENT_ELEMENTS)) {
1427.	            if ($recent_elements = unserialize($recent_elements)) {
1428.	                if (is_array($recent_elements)) {
1429.	                    return $recent_elements;
1430.	                }
1431.	            }
1432.	            //somthing wrong happen. Delete the preference
1433.	            $this->delPreference(self::PREFERENCE_RECENT_ELEMENTS);
1434.	        }
1435.	        return array();
1436.	    }

The vulnerability exists because this method is using the unserialize() function with a value that can be arbitrarily manipulated by a user through
the REST API interface. This can be exploited to inject arbitrary PHP objects into the application scope, and could allow authenticated attackers to
execute arbitrary PHP code via specially crafted serialized objects. Successful exploitation of this vulnerability requires an user account with
permissions to create or access artifacts in a tracker.


[-] Solution:

Update to version 9.7 or later.


[-] Disclosure Timeline:

[03/04/2017] - Vendor notified
[03/04/2017] - Vendor acknowledgement
[03/04/2017] - Vendor submitted artifact: https://tuleap.net/plugins/tracker/?aid=10118
[03/04/2017] - CVE number requested
[03/04/2017] - CVE number assigned
[05/04/2017] - Vulnerability fixed on the git repository: https://goo.gl/X2AT4z
[26/04/2017] - Version 9.7 released
[23/10/2017] - Publication of this advisory


[-] CVE Reference:

The Common Vulnerabilities and Exposures project (cve.mitre.org) has assigned the name CVE-2017-7411 to this vulnerability.


[-] Credits:

Vulnerability discovered by Egidio Romano.


[-] Original Advisory:

http://karmainsecurity.com/KIS-2017-02
