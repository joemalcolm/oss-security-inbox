X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2730" "Monday" "29" "April" "2019" "15:21:48" "-0500" "Colin Snover" "mx1xcb@zetafleet.com" nil "73" nil nil nil nil "4" nil nil (number mark "U       mx1xcb@zetaf Apr 29   73/2730  " thread-indent "\"[oss-security] [CVE-2019-9826] phpBB Native Fulltext Search denial of service\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-9826] phpBB Native Fulltext Search denial of service" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3455 invoked by uid 550); 29 Apr 2019 20:47:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13458 invoked from network); 29 Apr 2019 20:22:06 -0000
To: oss-security@lists.openwall.com
From: Colin Snover <mx1xcb@zetafleet.com>
Message-ID: <d10b3b3b-0c8b-bcc6-906d-2d2ca266d024@zetafleet.com>
Date: Mon, 29 Apr 2019 15:21:48 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Subject: [oss-security] [CVE-2019-9826] phpBB Native Fulltext Search denial of service

Vulnerability information
=========================

Title: phpBB Native Fulltext Search denial of service
CVE ID: CVE-2019-9826
CVSSv3 score: 8.6 (AV:N/AC:L/PR:N/UI:N/S:C/C:N/I:N/A:H)

Vulnerability description
=========================

Improper input validation in the Native Fulltext Search component of 
phpBB 3.2.5 and earlier allows an unauthenticated remote user to trigger 
a denial of service attack via the keywords URL parameter of search.php.

Successful exploitation generates a slow SQL query which causes the 
database engine used by phpBB to consume all available CPU resources. 
Depending upon the database engine, users will also be completely unable 
to create or modify posts due to locks on the search index tables. The 
slowness of the query depends on the size of the search_wordlist and 
search_wordmatch tables.

Because the denial of service is caused by a long-running database 
query, for a typical phpBB installation running on MySQL/Linux, only <# 
CPUs> requests need to be made by an attacker in order to consume all 
CPU resources available to the database engine. The slow query will 
continue to run after the attacker disconnects because PHP does not 
detect connection aborts until it tries to send data back to the client.

Vulnerable packages
===================

phpBB 3.2.5 and earlier when configured to use the Native Fulltext 
search component. (This is the default configuration.)

Solutions and workarounds
=========================

The vendor has released phpBB 3.2.6, which improves input validation in 
the Native Fulltext Search component.

Mitigations are available for earlier versions of phpBB:

1. Set “Search backend” to an engine other than “phpBB Native Fulltext”
2. Set the “Can search board” group permission to “No” for all untrusted 
user groups
3. Set “Enable search facilities” to “No”

Proof of concept
================

Due to the triviality of the attack, proof of concept code is withheld 
for the moment in order to allow users some time to test and install the 
vendor patch.

Report timeline
===============

The vendor was given a initial disclosure deadline of 2019-04-22. A one 
week grace period was granted so that a fixed release could be available 
at the time of disclosure.

2019-02-18: Initial disclosure to vendor with PoC and candidate patch
2019-02-19: Vendor acknowledges receipt of report
2019-03-12: Update requested
2019-03-13: Vendor verifies vulnerability
2019-03-15: Vendor assigns CVE ID
2019-03-19: Follow-up, no response
2019-04-15: Second follow-up
2019-04-18: Vendor requests extension to disclosure date
2019-04-22: One week extension granted
2019-04-29: Vendor patch released
2019-04-29: Public disclosure

