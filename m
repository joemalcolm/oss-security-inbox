X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3789" "Sunday" "7" "May" "2017" "19:45:57" "-0700" "Madhan Neethiraj" "madhan@apache.org" "<A71CF38B-7971-45B5-8450-43AFC566D717@apache.org>" "143" "[oss-security] CVE updates: fixes in Apache Atlas 0.7.1-incubating" "^Date:" nil nil "5" "2017050802:45:57" "[oss-security] CVE updates: fixes in Apache Atlas 0.7.1-incubating" (number mark "U       madhan@apach May  7  143/3789  " thread-indent "\"[oss-security] CVE updates: fixes in Apache Atlas 0.7.1-incubating\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5579 invoked by uid 550); 8 May 2017 09:49:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7775 invoked from network); 8 May 2017 02:46:13 -0000
User-Agent: Microsoft-MacOutlook/f.20.0.170309
Message-ID: <A71CF38B-7971-45B5-8450-43AFC566D717@apache.org>
Thread-Topic: CVE updates: fixes in Apache Atlas 0.7.1-incubating
Mime-version: 1.0
Content-type: multipart/alternative;
	boundary="B_3577031159_1502095704"
Date: Sun, 07 May 2017 19:45:57 -0700
From: Madhan Neethiraj <madhan@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE updates: fixes in Apache Atlas 0.7.1-incubating
To: <dev@atlas.incubator.apache.org>,
	<private@atlas.incubator.apache.org>,
	<user@atlas.incubator.apache.org>,
	<security@apache.org>,
	<oss-security@lists.openwall.com>,
	<bugtraq@securityfocus.com>

--B_3577031159_1502095704
Content-type: text/plain;
	charset="UTF-8"
Content-transfer-encoding: 7bit

All,

 

Please see below the details of CVE updates for Apache Atlas 0.7.1-incubating release. My apologies

for the delay in sending this update.

 

Thanks,

Madhan

 

-------------------------------------------------------------------------------------------------------

CVE-2017-3150: Use of insecure cookies

Severity: Normal

Vendor: The Apache Software Foundation

Versions Affected: 0.6.0 or 0.7.0 versions of Apache Atlas

Users affected: All users of Apache Atlas server

Description: Atlas uses cookies that could be accessible to client-side script

Fix detail: Atlas was updated to make the cookies unavailable to client-side scripts

Mitigation: Users should upgrade to Apache Atlas 0.7.1-incubating or later version

-------------------------------------------------------------------------------------------------------

CVE-2017-3151: Persistent XSS vulnerability

Severity: Normal

Vendor: The Apache Software Foundation

Versions Affected: 0.6.0 or 0.7.0 versions of Apache Atlas

Users affected: All users of Apache Atlas server

Description: Atlas was found vulnerable to a Stored Cross-Site Scripting in the edit-tag functionality

Fix detail: Atlas was updated to sanitize the user input

Mitigation: Users should upgrade to Apache Atlas 0.7.1-incubating or later version

-------------------------------------------------------------------------------------------------------

CVE-2017-3152: DOM XSS threat

Severity: Normal

Vendor: The Apache Software Foundation

Versions Affected: 0.6.0 or 0.7.0 versions of Apache Atlas

Users affected: All users of Apache Atlas server

Description: Atlas was found vulnerable to a DOM XSS in the edit-tag functionality

Fix detail: Atlas was updated to sanitize the query parameters

Mitigation: Users should upgrade to Apache Atlas 0.7.1-incubating or later version

-------------------------------------------------------------------------------------------------------

CVE-2017-3153: Reflected XSS vulnerability

Severity: Normal

Vendor: The Apache Software Foundation

Versions Affected: 0.6.0 or 0.7.0 versions of Apache Atlas

Users affected: All users of Apache Atlas server

Description: Atlas was found vulnerable to a Reflected XSS in the search functionality

Fix detail: Atlas was updated to sanitize the query parameters

Mitigation: Users should upgrade to Apache Atlas 0.7.1-incubating or later version

-------------------------------------------------------------------------------------------------------

CVE-2017-3154: Stack trace in error response

Severity: Normal

Vendor: The Apache Software Foundation

Versions Affected: 0.6.0 or 0.7.0 versions of Apache Atlas

Users affected: All users of Apache Atlas server

Description: Error response from Atlas server included stack trace, exposing excessive information

Fix detail: Atlas was updated to not include stack trace in error responses

Mitigation: Users should upgrade to Apache Atlas 0.7.1-incubating or later version

-------------------------------------------------------------------------------------------------------

CVE-2017-3155: XFS - cross frame scripting vulnerability

Severity: Normal

Vendor: The Apache Software Foundation

Versions Affected: 0.6.0 or 0.7.0 versions of Apache Atlas

Users affected: All users of Apache Atlas server

Description: Atlas was found vulnerable to a cross frame scripting

Fix detail: Atlas was updated to use appropriate headers to prevent this vulnerability

Mitigation: Users should upgrade to Apache Atlas 0.7.1-incubating or later version

-------------------------------------------------------------------------------------------------------

 

 

 

 


--B_3577031159_1502095704--


