X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6250" "Wednesday" "22" "November" "2017" "18:40:21" "+0100" "Securify B.V." "lists@securify.nl" "<44bd64fe-87c7-918c-4d0e-5e2e05d233ca@securify.nl>" "139" "[oss-security] Clickjacking vulnerability in CSRF error page pfSense" nil nil nil "11" "2017112217:40:21" "[oss-security] Clickjacking vulnerability in CSRF error page pfSense" (number mark "U       lists@securi Nov 22  139/6250  " thread-indent "\"[oss-security] Clickjacking vulnerability in CSRF error page pfSense\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1778 invoked by uid 550); 22 Nov 2017 17:40:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1758 invoked from network); 22 Nov 2017 17:40:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=securify.nl;
	s=201706; t=1511372424;
	bh=+iBaysQ0H6uB7IKQ6vdl/JulGjNewxunu7Ul5yr9ow8=;
	h=From:Subject:To:Date:From;
	b=FVCg5UAsXMKlpGewDP7awd11ft+OcKPNanj9V1W3GtV4qBI4r5Cw13qQ4ZrFdZNIE
	 PbeNo+hFI01/r7ZWWcA6FUDf6qfh2OBzSggLH5urfvwFD9qAB2F/8bcK+tK+RahchF
	 I8R7Ip9Y7AlpW70BDiw81UQ/jRVRimCjisKMKhF83zH1Y5ICAOyLDOl61fH5FeBz1i
	 cs7eotrQ+pl3TCa3DvFjg0Gca2yX1VKQoNbltDO0a+iL6QYipQLFG2njAey6OSZvML
	 YaJduP8+9QRE2qsh4Slbj082WnG6GsDSQ4/W4E/0FCpQgR6T+6FPaOD58URI30C9Oe
	 im5dVswFKIvlg==
X-Virus-Scanned: amavisd-new at edge1.intern.zimbra-login.net
From: "Securify B.V." <lists@securify.nl>
To: oss-security@lists.openwall.com
Organization: Securify B.V.
Message-ID: <44bd64fe-87c7-918c-4d0e-5e2e05d233ca@securify.nl>
Date: Wed, 22 Nov 2017 18:40:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Clickjacking vulnerability in CSRF error page pfSense

------------------------------------------------------------------------
Clickjacking vulnerability in CSRF error page pfSense
------------------------------------------------------------------------
Yorick Koster, November 2017

------------------------------------------------------------------------
Abstract
------------------------------------------------------------------------
pfSense is a free and open source firewall and router. It was found that
the pfSense WebGUI is vulnerable to Clickjacking. By tricking an
authenticated admin into interacting with a specially crafted webpage it
is possible for an attacker to execute arbitrary code in the WebGUI.
Since the WebGUI runs as the root user, this will result in a full
compromise of the pfSense instance.

------------------------------------------------------------------------
Tested versions
------------------------------------------------------------------------
This issue was successfully tested on pfSense version 2.4.1.

------------------------------------------------------------------------
Fix
------------------------------------------------------------------------
pfSense 2.4.2-RELEASE [2] was released that addresses the Clickjacking
issue.

------------------------------------------------------------------------
Introduction
------------------------------------------------------------------------
pfSense [3] is a free and open source firewall and router. It was found
that the pfSense WebGUI is vulnerable to Clickjacking. This
vulnerability allows an attacker to execute arbitrary code with root
privileges.

------------------------------------------------------------------------
Details
------------------------------------------------------------------------
The pfSense WebGUI uses the csrf-magic [4] library to protect against
Cross-Site Request Forgery (CSRF) attacks. This library contains a user
friendly error page that is implemented in the csrf_callback() function.
This error page is shown whenever the users submits an incorrect (or
missing) CSRF token. The error page contains a 'Try again' button that
allows the user to re-submit the requested action; the invalid token is
replaced with a valid token. The default callback function is listed
below, which is also used by pfSense.

/usr/local/www/csrf/csrf-magic.php:
function csrf_callback($tokens) {
	// (yes, $tokens is safe to echo without escaping)
	header($_SERVER['SERVER_PROTOCOL'] . ' 403 Forbidden');
	$data = '';
	foreach (csrf_flattenpost($_POST) as $key => $value) {
		if ($key == $GLOBALS['csrf']['input-name']) continue;
		$data .= '<input type="hidden" name="'.htmlspecialchars($key).'"
value="'.htmlspecialchars($value).'" />';
	}
	echo "<html><head><title>CSRF check failed</title></head>
		<body>
		<p>CSRF check failed. Your form session may have expired, or you may
not have
		cookies enabled.</p>
		<form method='post' action=''>$data<input type='submit' value='Try
again' /></form>
		<p>Debug: $tokens</p></body></html>
";
}

The use of this error page introduces a risk as in case of a CSRF
attempt, the victim will only be shown this error page. The victim may
be enticed to click the 'Try again' button, thus executing the
attacker's specially crafted action. What is even more interesting is
that the CSRF logic is executed before the WebGUI sets the
X-Frame-Options header, which should mitigate Clickjacking. In case of
an invalid CSRF token, execution of the script will be stopped after the
error page is returned and as a result the X-Frame-Options header will
not be set. Consequently, the CSRF error page is prone to Clickjacking
attacks.

/usr/local/www/guiconfig.inc:
/* Include authentication routines */
/* THIS MUST BE ABOVE ALL OTHER CODE */
include_once('phpsessionmanager.inc');
if (!$nocsrf) {
	function csrf_startup() {
		global $config;
		csrf_conf('rewrite-js', '/csrf/csrf-magic.js');
		$timeout_minutes =
isset($config['system']['webgui']['session_timeout']) ?
$config['system']['webgui']['session_timeout'] : 240;
		csrf_conf('expires', $timeout_minutes * 60);
	}
	require_once("csrf/csrf-magic.php");
	if ($_SERVER['REQUEST_METHOD'] == 'POST') {
		phpsession_end(true);
	}
}
/* make sure nothing is cached */
if (!$omit_nocacheheaders) {
	header("Expires: 0");
	header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
	header("Cache-Control: no-cache, no-store, must-revalidate");
	header("Pragma: no-cache");
}
header("X-Frame-Options: SAMEORIGIN");

The CSRF error page does include a Javascript framebreaker script that
also mitigates Clickjacking in some cases. In this case it is trivial to
bypass this framebreaker script by opening the target page within a
sandboxed iframe [5] with the allow-forms attribute set. The allow-forms
attribute allows for the form post when a victim clicks the 'Try again'
button.

/usr/local/www/csrf/csrf-magic.php:
if ($GLOBALS['csrf']['frame-breaker']) {
	$buffer = str_ireplace('</head>', '<script type="text/javascript">if
(top != self) {top.location.href =
self.location.href;}</script></head>', $buffer);
}

An attacker can use this issue to perform a Clickjacking attack against
an authenticated admin. This requires that the attacker knows the URL of
the WebGUI and tricks an authenticated admin into visiting a specially
crafted webpage. This webpage will make an arbitrary POST to the WebGUI
containing an invalid token. The POST is done to a sandboxed iframe.
Using UI redressing the attacker can trick the victim into clicking the
'Try again' button, resulting in the POST to be resend to the WebGUI -
this time containing a valid CSRF token. A successful attack will result
in the execution of arbitrary code by the WebGUI. Since the WebGUI runs
as the root user, this will result in a full compromise of the pfSense
instance.
------------------------------------------------------------------------
References
------------------------------------------------------------------------
[1] 
https://www.securify.nl/advisory/SFY20171101/clickjacking-vulnerability-in-csrf-error-page-pfsense.html
[2] https://doc.pfsense.org/index.php/2.4.2_New_Features_and_Changes
[3] https://www.pfsense.org/
[4] https://github.com/ezyang/csrf-magic
[5] https://www.w3schools.com/tags/att_iframe_sandbox.asp
