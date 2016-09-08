X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3852" "Thursday" "8" "September" "2016" "19:27:41" "+0200" "Summer of Pwnage" "lists@securify.nl" "<149ffd43-942f-3e77-31dc-897e0ccec1e2@securify.nl>" "84" "[oss-security] Persistent Cross-Site Scripting vulnerability in WordPress due to unsafe processing of file names" nil nil nil "9" "2016090817:27:41" "[oss-security] Persistent Cross-Site Scripting vulnerability in WordPress due to unsafe processing of file names" (number mark "U       lists@securi Sep  8   84/3852  " thread-indent "\"[oss-security] Persistent Cross-Site Scripting vulnerability in WordPress due to unsafe processing of file names\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30446 invoked by uid 550); 8 Sep 2016 17:27:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30424 invoked from network); 8 Sep 2016 17:27:55 -0000
X-Virus-Scanned: amavisd-new at pine.nl
From: Summer of Pwnage <lists@securify.nl>
To: oss-security@lists.openwall.com
Organization: Securify B.V.
Message-ID: <149ffd43-942f-3e77-31dc-897e0ccec1e2@securify.nl>
Date: Thu, 8 Sep 2016 19:27:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Persistent Cross-Site Scripting vulnerability in WordPress due to
 unsafe processing of file names

------------------------------------------------------------------------
Persistent Cross-Site Scripting vulnerability in WordPress due to unsafe
processing of file names
------------------------------------------------------------------------
Han Sahin, July 2016

------------------------------------------------------------------------
Abstract
------------------------------------------------------------------------
A persistent Cross-Site Scripting (XSS) vulnerability has been found in
WordPress. An attacker can create a specially crafted image file name
which, when uploaded in WordPress, injects malicious JavaScript code
into the application. An attacker can use this vulnerability to perform
a wide variety of actions, such as stealing victims' session tokens or
login credentials, and performing arbitrary actions on their behalf.

------------------------------------------------------------------------
OVE ID
------------------------------------------------------------------------
OVE-20160724-0018

------------------------------------------------------------------------
Tested versions
------------------------------------------------------------------------
This issue was successfully tested on WordPress [2] 4.5.3.

------------------------------------------------------------------------
Fix
------------------------------------------------------------------------
This vulnerability is resolved in WordPress 4.6.1 [3] (Release Notes
[4]).

------------------------------------------------------------------------
Introduction
------------------------------------------------------------------------
WordPress Media Upload functionality is used to upload image, audio,
video and other allowed file extensions. The uploaded media types are
automatically available to public users via so called public 'Attachment
Pages'.

------------------------------------------------------------------------
Details
------------------------------------------------------------------------
WordPress performs insufficient validation on the file name of uploaded
media types and in specific images. The file name of an image is used as
image Title (meta) in so called ‘attachment pages’ (HTML). An
attacker can exploit this vulnerability by crafting an image file name
with Cross-Site Scripting payload and lure an admin into uploading the
image with the malicious file name.

------------------------------------------------------------------------
Limitations
------------------------------------------------------------------------

Operating System

Please note that the WordPress admin (victim) needs to use an operating
system like for example Mac or Linux. These provide extended file name
capabilities necessary for an attacker to be able to successfully use
this vulnerability.

Social Engineering

For the attack to succeed the following conditions have to be met:

- A WordPress admin uploads a malicious image file requested by a user
this admin trusts or a popular malicious image that was spread via
social media. This involves social engineering. In the Proof of Concept
the file name cengizhansahinsumofpwn<img src=a
onerror=alert(document.cookie)>.jpg was used.

- An attacker can now determine if the file name with which the
malicious file is available on the WordPress site. With this information
he can spread the URL to end users and the WordPress admin.

------------------------------------------------------------------------
References
------------------------------------------------------------------------
[1] 
https://sumofpwn.nl/advisory/2016/persistent_cross_site_scripting_vulnerability_in_wordpress_due_to_unsafe_processing_of_file_names.html
[2] https://wordpress.org/
[3] https://wordpress.org/wordpress-4.6.1.zip
[4] 
https://wordpress.org/news/2016/09/wordpress-4-6-1-security-and-maintenance-release/
