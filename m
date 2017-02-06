X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2847" "Monday" "6" "February" "2017" "16:40:32" "+0100" "Egidio Romano" "research@karmainsecurity.com" "<bb1c0dd8-17bc-945a-5048-e38b6a81f86f@karmainsecurity.com>" "80" "[oss-security] [KIS-2017-01] PEAR HTML_AJAX <= 0.5.7 (PHP Serializer) PHP Object Injection Vulnerability" nil nil nil "2" "2017020615:40:32" "[oss-security] [KIS-2017-01] PEAR HTML_AJAX <= 0.5.7 (PHP Serializer) PHP Object Injection Vulnerability" (number mark "U       research@kar Feb  6   80/2847  " thread-indent "\"[oss-security] [KIS-2017-01] PEAR HTML_AJAX <= 0.5.7 (PHP Serializer) PHP Object Injection Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 2037 invoked by uid 550); 6 Feb 2017 16:28:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32467 invoked from network); 6 Feb 2017 15:40:44 -0000
To: bugtraq@securityfocus.com, fulldisclosure@seclists.org,
 oss-security@lists.openwall.com
From: Egidio Romano <research@karmainsecurity.com>
Message-ID: <bb1c0dd8-17bc-945a-5048-e38b6a81f86f@karmainsecurity.com>
Date: Mon, 6 Feb 2017 16:40:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 7bit
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
Subject: [oss-security] [KIS-2017-01] PEAR HTML_AJAX <= 0.5.7 (PHP Serializer) PHP Object
 Injection Vulnerability

---------------------------------------------------------------------------
PEAR HTML_AJAX <= 0.5.7 (PHP Serializer) PHP Object Injection Vulnerability
---------------------------------------------------------------------------


[-] Software Link:

https://pear.php.net/package/HTML_AJAX


[-] Affected Versions:

All versions from 0.3.0 to 0.5.7.


[-] Vulnerability Description:

The vulnerable code is located within the HTML_AJAX_Serializer_PHP class defined into
the /AJAX/Serializer/PHP.php script. Such a class uses the unserialize() PHP function
with user-controlled input unless a class name which is not in the provided array
of allowed classes is found within the serialized string. Class names are
extracted by using the _getSerializedClassNames() method:

68.	    function _getSerializedClassNames($string) {
69.	        // Strip any string representations (which might contain object syntax)
70.	        while (($pos = strpos($string, 's:')) !== false) {
71.	            $pos2 = strpos($string, ':', $pos + 2);
72.	            if ($pos2 === false) {
73.	                // invalidly serialized string
74.	                return false;
75.	            }
76.	            $end = $pos + 2 + substr($string, $pos + 2, $pos2) + 1;
77.	            $string = substr($string, 0, $pos) . substr($string, $end);
78.	        }
79.	
80.	        // Pull out the class names
81.	        preg_match_all('/O:[0-9]+:"(.*)"/U', $string, $matches);
82.	
83.	        // Make sure names are unique (same object serialized twice)
84.	        return array_unique($matches[1]);
85.	    }

By default the array of allowed classes is empty, meaning that no classes are allowed
to be unserialized. However, due to the faulty regular expression used at line 81, it
might be possible to bypass such a restriction by replacing "O:X" with "O:+X" from
within the serialized string, where X is the length of the class name. This can be
exploited by unauthenticated attackers to inject arbitrary PHP objects into the
application scope, allowing to perform "POP chain" attacks or exploit memory
corruption vulnerabilities within the PHP's serialization internals, potentially
leading to execution of arbitrary code on the web server.


[-] Solution:

Update to version 0.5.8 or disable the PHP Serializer.


[-] Disclosure Timeline:

[19/01/2017] - Issue reported to https://pear.php.net/bugs/bug.php?id=21165
[01/02/2017] - CVE number requested
[01/02/2017] - CVE number assigned
[02/02/2017] - Version 0.5.8 released: http://blog.pear.php.net/2017/02/02/security
[06/02/2017] - Public disclosure


[-] CVE Reference:

The Common Vulnerabilities and Exposures project (cve.mitre.org)
has assigned the name CVE-2017-5677 to this vulnerability.


[-] Credits:

Vulnerability discovered by Egidio Romano.


[-] Original Advisory:

http://karmainsecurity.com/KIS-2017-01
