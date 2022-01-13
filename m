X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9285" "Thursday" "13" "January" "2022" "15:01:11" "+0100" "Jonas =?ISO-8859-1?Q?Sch=E4fer?=" "jonas@wielicki.name" nil "274" "[oss-security] Prosody XMPP server advisory 2022-01-13 (Remote Unauthenticated Denial of Service) (CVE request)" "^Date:" nil nil "1" nil nil (number mark "        jonas@wielic Jan 13  274/9285  " thread-indent "\"[oss-security] Prosody XMPP server advisory 2022-01-13 (Remote Unauthenticated Denial of Service) (CVE request)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Prosody XMPP server advisory 2022-01-13 (Remote Unauthenticated Denial of Service) (CVE request)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15493 invoked by uid 550); 13 Jan 2022 14:02:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13932 invoked from network); 13 Jan 2022 14:01:28 -0000
Message-ID: <2193597.LkMCQtBBq3@sinistra>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart4862386.txepOm0O7L"; micalg="pgp-sha512"; protocol="application/pgp-signature"
X-Clacks-Overhead: GNU Terry Pratchett
Date: Thu, 13 Jan 2022 15:01:11 +0100
From: Jonas =?ISO-8859-1?Q?Sch=E4fer?= <jonas@wielicki.name>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Prosody XMPP server advisory 2022-01-13 (Remote Unauthenticated Denial of Service) (CVE request)
To: oss-security@lists.openwall.com

--nextPart4862386.txepOm0O7L
Content-Type: multipart/mixed; boundary="nextPart7367752.4FWuZfsseV"; protected-headers="v1"
Content-Transfer-Encoding: 7Bit
From: Jonas =?ISO-8859-1?Q?Sch=E4fer?= <jonas@wielicki.name>
To: oss-security@lists.openwall.com
Subject: Prosody XMPP server advisory 2022-01-13 (Remote Unauthenticated Denial of Service) (CVE request)
Date: Thu, 13 Jan 2022 15:01:11 +0100
Message-ID: <2193597.LkMCQtBBq3@sinistra>

This is a multi-part message in MIME format.

--nextPart7367752.4FWuZfsseV
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi everyone,

A remote unauthenticated denial of service / resource exhaustion attack was=
=20
discovered in all Prosody servers with WebSockets enabled and publicly=20
accessible.

Upstream builds have been started and should be available shortly. The clos=
ely=20
related Snikket project will publish new images shortly, too. Jitsi Meet ha=
ve=20
been informed ahead of time.

Please see the below advisory for full information.

Lastly, we would like to request a CVE for this vulnerability.

kind regards,
Jonas Sch=C3=A4fer on behalf of the Prosody XMPP Developers

---

Prosody XMPP server advisory 2022-10-13 (Remote Denial of Service)

Project
: Prosody XMPP server

URL
: https://prosody.im/

Date
: 2022-10-13

**References**

 - Advisory (HTML): https://prosody.im/security/advisory_20220113/
 - Advisory (text): https://prosody.im/security/advisory_20220113.txt
 - Link to patch: https://prosody.im/security/advisory_20220113/1.patch
 - Instructions for testing a deployment (will only be published a few days=
=20
after this announcement): <https://prosody.im/security/advisory_20220113/
instructions.txt>

This advisory details a new security vulnerability discovered in the
Prosody.im XMPP server software. A fix for this issue is available in
Prosody 0.11.12, we advise everyone affected to upgrade.

Unauthenticated Remote Denial of Service Attack in the WebSocket interface
--------------------------------------------------------------------------

CVE
: TBA

CVSS
: 7.3 (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H/E:F/RL:X/RC:C/CR:X/IR:X/
AR:X/MAV:N/MAC:L/MPR:N/MUI:N/MS:U/MC:N/MI:N/MA:H)

CWEs
: CWE-776, CWE-20, possibly CWE-611

Affected versions
: All versions with support for WebSockets

Fixed versions
: 0.11.12

**Description**

It was discovered that an internal Prosody library to load XML based on
libexpat does not properly restrict the XML features allowed in parsed
XML data. Given suitable attacker input, this results in expansion of
recursive entity references from DTDs (CWE-776). In addition, depending
on the libexpat version used, it may also allow injections using XML
External Entity References (CWE-611). The Prosody team did not evaluate
if and which versions are affected by external entity reference
expansion.

The internal prosody API was meant for local access of trusted XML data,
but has since started to be used for network-facing applications. An
audit of usages of this API in prosody code revealed that it is used by
the WebSockets module, which allows to use XMPP over WebSockets.

As the WebSockets module needs to parse XML in order to start a session
before authentication, the lack of restriction of available XML features
can be used in a Billion Laughs Attack in order to cause excessive
resource consumption and denial of service. Because Prosody does not
yield control to other connections while processing a fully received
WebSocket frame, this also results in Denial of Service.

This internal API is *not* used to handle XML on normal XMPP connections
or the BOSH interface, which are hence not affected by this
vulnerability.

**Affected configurations**

All Prosody servers with WebSockets enabled and the WebSockets endpoint
exposed directly to any untrusted party are affected.

**Mitigating factors**

WebSockets are not enabled by default.

**Workaround**

**The recommended mitigation is to upgrade to Prosody 0.11.12, released
on 2022-01-13.** Follow the manual patching instructions only if you
cannot immediately upgrade.

This advisory has a patch attached, it can be applied to any Prosody
installation from the 0.11 series. The patch is already applied in
0.11.12. If the patch is applied manually and your Prosody installation
is managed by a package manager (such as apt or dnf), a future update
will revert the change.

To do so, open a normal shell on the server and locate the file xml.lua.
It should exist in a directory structure `util/xml.lua`.

On Debian, it is found in

    /usr/lib/prosody/util/xml.lua

on 0.11.x or

    /usr/share/lua/5.1/prosody/util/xml.lua

on trunk

Navigate to the directory containing the `xml.lua` file and apply the
attached patch using `patch -p2 < 1.patch`.

* Link to patch: <https://prosody.im/security/advisory_20220110/1.patch>

Now restart Prosody. There is no known-to-be-safe way to reload the
util/xml.lua file without a complete Prosody restart.

After the restart, this vulnerability is fixed.

If neither patching nor upgrading is an option, it is possible to unload
the websocket module using:

```
prosodyctl shell module unload websocket
```

However, note well that third-party modules may also use the vulnerable
internal APIs to parse XML. Unloading websocket does not protect those
other modules; only the patch or the upgrade can do that.

**Fix**

This issue is fixed in Prosody 0.11.12 by restricting the available XML
features in the internal XML API.

**Attribution**

The issue was discovered during internal code review by Matthew Wild
during the development of another feature. The patch was developed by
Jonas Sch=C3=A4fer. A proof-of-concept exploit was developed by Jonas Sch=
=C3=A4fer
and Kim Alvefur and will be published soon to allow administrators to
check their instances.

**Timeline**

2022-01-10: Discovery of the issue, development of an exploit as well as
an initial patch. Sharing of this information with Jitsi and Snikket
developers. Heads-up sent to the Snikket group chat.

2022-01-11: Refinement of the patch, release preparation. Heads-up sent
to the Prosody group chat. Patch shared confidentially with Jitsi.

2022-01-12: Continued release preparation, notification of distros@.

2022-01-13: Coordinated Snikket and Prosody release with a
fix, publication of the advisory.=

--nextPart7367752.4FWuZfsseV
Content-Disposition: attachment; filename="1.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="UTF-8"; name="1.patch"

diff --git a/util/xml.lua b/util/xml.lua
--- a/util/xml.lua
+++ b/util/xml.lua
@@ -3,6 +3,7 @@ local st = require "util.stanza";
 local lxp = require "lxp";
 local t_insert = table.insert;
 local t_remove = table.remove;
+local error = error;
 
 local _ENV = nil;
 -- luacheck: std none
@@ -13,7 +14,7 @@ local parse_xml = (function()
 	};
 	local ns_separator = "\1";
 	local ns_pattern = "^([^"..ns_separator.."]*)"..ns_separator.."?(.*)$";
-	return function(xml)
+	return function(xml, options)
 		--luacheck: ignore 212/self
 		local handler = {};
 		local stanza = st.stanza("root");
@@ -64,7 +65,27 @@ local parse_xml = (function()
 		function handler:EndElement()
 			stanza:up();
 		end
-		local parser = lxp.new(handler, ns_separator);
+		local parser;
+		-- SECURITY: These two handlers, especially the Doctype one, are required to prevent exploits such as Billion Laughs.
+		function handler:StartDoctypeDecl()
+			if not parser.stop or not parser:stop() then
+				error("Failed to abort parsing");
+			end
+		end
+		function handler:ProcessingInstruction()
+			if not parser.stop or not parser:stop() then
+				error("Failed to abort parsing");
+			end
+		end
+		if not options or not options.allow_comments then
+			-- NOTE: comments are generally harmless and can be useful when parsing configuration files or other data, even user-provided data
+			function handler:Comment()
+				if not parser.stop or not parser:stop() then
+					error("Failed to abort parsing");
+				end
+			end
+		end
+		parser = lxp.new(handler, ns_separator);
 		local ok, err, line, col = parser:parse(xml);
 		if ok then ok, err, line, col = parser:parse(); end
 		--parser:close();

--nextPart7367752.4FWuZfsseV--

--nextPart4862386.txepOm0O7L
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEG/EPV+Xzd5wEoQQIwGIDJZdiWIoFAmHgMKcACgkQwGIDJZdi
WIqVIA//ZzqvBEGBlZMcCc809cwVvCy693UtH9+ebexR09zjnrURaCE/il4rCAbG
lGYXIfLUvRclLHocj5/NGB28gqOpD2/OwBwD8SLwwJxrBXw5vp8CofTahr6UFg0K
lxxXecCBnibQoOrKRw6NhI7kEuEtXkyc1gijjnQph3dW1CJMCgePgDA9CjCWLl/h
Od0kfV3V21i62rTruVNP2vNEtdNFnY28WssntBV7wC6ADtLWbJCDmnjeHe6+51vt
YdlXEbKIZr53aYWSymo/ucRM1JGelHgNn0HwQiK8nuCHS1lyH6fnkLff56A5ayqR
cXjoa12KOIlHNlCWbWY/mU04+RqCJEWPrgLKQXwzdXpDe3NkkMe5DTO+GWdDtak5
0ng8xjIRILCntPi6OjQ4KZySJTEmzaNSGWOz9GT7TfFfRAr5c+JU855+6a9qBCQp
F5fwF3Od4Z2c6r7zsBZEdIyhdBIlpQM2voYnFB/eVsKR1aZOI6bhb5rxJ6Cts0eF
jbkXaeacMQ6aD5T/Yn+UkGR9V5dw9ebXaoPlv55qWTyIR6r5yIwQOq4TH4LDBRPp
fvJ2zmNC4AdqM8YDNtoIlTdqL1NOo+Bx0jajyvH/AWada4u3U848x0x6DHXbTHfK
QVuXPvH+E1BhgnMH/kVVZBVlFlbsLjU/KRtN+LVH+qBPdsHYXTE=
=xhux
-----END PGP SIGNATURE-----

--nextPart4862386.txepOm0O7L--



