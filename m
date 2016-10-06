X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2426" "Thursday" "6" "October" "2016" "11:14:31" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161006151431.80DF36C58F9@smtpvmsrv1.mitre.org>" "71" "[oss-security] Re: SPIP vulnerabilities: request for 5 CVE" nil nil nil "10" "2016100615:14:31" "[oss-security] Re: SPIP vulnerabilities: request for 5 CVE" (number mark "U       cve-assign@m Oct  6   71/2426  " thread-indent "\"[oss-security] Re: SPIP vulnerabilities: request for 5 CVE\"\n") "<db3c98e6-3e7d-c98b-7cb1-777cf7d484a3@sysdream.com>" ("<db3c98e6-3e7d-c98b-7cb1-777cf7d484a3@sysdream.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30551 invoked by uid 550); 6 Oct 2016 15:14:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30530 invoked from network); 6 Oct 2016 15:14:43 -0000
From: cve-assign@mitre.org
To: labs@sysdream.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, spip-team-owner@rezo.net
In-Reply-To: <db3c98e6-3e7d-c98b-7cb1-777cf7d484a3@sysdream.com>
Message-Id: <20161006151431.80DF36C58F9@smtpvmsrv1.mitre.org>
Date: Thu,  6 Oct 2016 11:14:31 -0400 (EDT)
Subject: [oss-security] Re: SPIP vulnerabilities: request for 5 CVE

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Can you provide further information about whether each of these issues
could have been fixed independently?

We are aware of:

  https://core.spip.net/projects/spip/repository/revisions/23200
  https://core.spip.net/projects/spip/repository/revisions/23201
  https://core.spip.net/projects/spip/repository/revisions/23202

and these seem to indicate separate findings related to three
items on your list. Thus, we can initially assign these IDs:

> * Cross-Site Request Forgery

Use CVE-2016-7980.


> * Reflected Cross-Site Scripting

Use CVE-2016-7981.


> * File Enumeration / Path Traversal

Use CVE-2016-7982.


Is your reported Server Side Request Forgery a completely separate
problem? Is it resultant from an authorization issue, e.g., possibly
the wrong users have access to XML validation:

  -   if (!autoriser('sauvegarder')) {
  +   if (!autoriser('webmestre')) {

and also XML validation could be performed through CSRF? In other
words, is valider_xml.php supposed to block everyone from performing
an XML validation of an off-site document, or is it only supposed to
have access control for this functionality?


> * Template Compiler/Composer PHP Code Execution

Is there public information about this already on an spip.net web site
(such as a Redmine revision) or the https://sysdream.com/news/lab/ web
site? Is this unrelated to the valider_xml.php script?

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX9mnXAAoJEHb/MwWLVhi2/qcQAKEeOApYMW4Czdtc9dQYq5c1
BvrVK73txuLW346VYOGYB2HNp9b1RPoH34buXakJGXrhgyhbK/1fl1WILdUROuMs
UeEievyso1zudb2seSC/mPdvoyMfiKYQdQEvquQsuNNbdohR2TxA7i7k/33gpEoN
jQwsDCdm4xQQDPG5hrK39LmhboqgZtrYhZXetHWGloMMYWVMgoVOopdNXdMajXJ5
ycSlJoqMsMVWiZ4JKWPbEaFY7fJwHs3f5ZRa7WRRzAy6IdLQN/9Wo/awZsVTfe/s
mTC7bz3iiUCCu+XYWhmZGFG9JBBz4FL68CsYXw3tkjS8h0Gi4IsIKUc3ZiTm/2ee
boZiAJlRJETfgKozM/E3fyLytPeUX+2r8UI2SkkyjXM0JZ/r5NJuiaSumLo3sxst
bXsd5ruDb7FQyaQqkyPutti0Iz3gdM8MPqhGkwIG/xfDs6U/M9RFdPB91ShmuqWd
fYARzhJLsm+s2lQgMVzxLEAm7GVpJdORSRTW8JnlzxdeYy/Z/f1Nh6hxvi1pjGVO
voAvlQNNnVJYeWYoDwXBK0qF31CRNq5/wePt6JY1h92fwzgMo4w84Yny91qsHlY4
f0uaSduqB8DgO+P78X7fTai6T0j9i+6Qsnqukr9U/79Nt/tlmIJ+gs9DFF8RwQRz
IlWWaW48n/lLS/vAtKMl
=7eq2
-----END PGP SIGNATURE-----
