X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1782" "Monday" "2" "October" "2017" "18:14:47" "+0300" "John Torakis" "johntorakis@census-labs.com" "<3f64b550-039b-25b5-cd70-82ae5575fa62@census-labs.com>" "55" "[oss-security] CVE-2017-9807: e2openplugin-OpenWebif: Remote code execution through HTTP GET parameter manipulation" "^Cc:" nil nil "10" "2017100215:14:47" "[oss-security] CVE-2017-9807: e2openplugin-OpenWebif: Remote code execution through HTTP GET parameter manipulation" (number mark "U       johntorakis@ Oct  2   55/1782  " thread-indent "\"[oss-security] CVE-2017-9807: e2openplugin-OpenWebif: Remote code execution through HTTP GET parameter manipulation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1844 invoked by uid 550); 2 Oct 2017 15:18:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32080 invoked from network); 2 Oct 2017 15:15:00 -0000
Message-ID: <3f64b550-039b-25b5-cd70-82ae5575fa62@census-labs.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
 Gecko/20100101 Thunderbird/52.3.0
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------------2C4A48F1594CE90D09FD73E8"
Content-Language: el-GR
Cc: bugtraq@securityfocus.com, fulldisclosure@seclists.org
Date: Mon, 2 Oct 2017 18:14:47 +0300
From: John Torakis <johntorakis@census-labs.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-9807: e2openplugin-OpenWebif: Remote code execution through
 HTTP GET parameter manipulation
To: oss-security@lists.openwall.com

--------------2C4A48F1594CE90D09FD73E8
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello all,

e2openplugin-OpenWebif is an open source web interface plugin for IP TVs
and media centers. It is found in several IP TV software images and
hardware products including the commercial Dreambox devices.


A remote code injection vulnerability was found in the "key" HTTP GET
parameter of the "/api/saveconfig" API call.

Further analysis of the vulnerability can be found here:
https://census-labs.com/news/2017/10/02/e2openplugin-openwebif-saveconfig-r=
emote-code-execution/

The vulnerability allows remote code execution on hosts running the
aforementioned plugin. Some devices affected also run the plugin under
root privileges (e.g: Dreambox DM800 HD se), allowing for complete
remote takeover of the host.

This defect has been patched by the vendor with the git commit:
09a050c8f04afd3bb4a14af98994be255aae10d9
(https://github.com/E2OpenPlugins/e2openplugin-OpenWebif/commit/09a050c8f04=
afd3bb4a14af98994be255aae10d9).

Administrators of affected devices are strongly advised to update their
running instance of e2openplugin-OpenWebif to the latest version of the
code. An official release containing the fix has not been released yet.


References:
https://github.com/E2OpenPlugins/e2openplugin-OpenWebif/issues/620
https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2017-9807
https://census-labs.com/news/2017/10/02/e2openplugin-openwebif-saveconfig-r=
emote-code-execution/

Disclosure Timeline:
Vendor Contact: June 21st, 2017
CVE assignment: June 22nd, 2017
Vendor Patch: September 15th, 2017
Public Advisory: October 2nd, 2017


Regards,
--
John Torakis

Security Researcher
CENSUS S.A.


--------------2C4A48F1594CE90D09FD73E8--
