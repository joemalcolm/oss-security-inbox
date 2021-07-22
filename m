X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6774" "Thursday" "22" "July" "2021" "17:03:36" "+0200" "Jonas =?ISO-8859-1?Q?Sch=E4fer?=" "j.wielicki@sotecware.net" nil "184" "[oss-security] Prosody XMPP server advisory 2021-07-22 (Remote Information Disclosure) (CVE Request)" "^Cc:" nil nil "7" nil nil (number mark "        j.wielicki@s Jul 22  184/6774  " thread-indent "\"[oss-security] Prosody XMPP server advisory 2021-07-22 (Remote Information Disclosure) (CVE Request)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Prosody XMPP server advisory 2021-07-22 (Remote Information Disclosure) (CVE Request)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16349 invoked by uid 550); 22 Jul 2021 15:40:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26465 invoked from network); 22 Jul 2021 15:03:59 -0000
Message-ID: <3576736.366f73iyps@sinistra>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart4876771.fbC7LsiPbl"; micalg="pgp-sha512"; protocol="application/pgp-signature"
X-Clacks-Overhead: GNU Terry Pratchett
Cc: developers@prosody.im
Date: Thu, 22 Jul 2021 17:03:36 +0200
From: Jonas =?ISO-8859-1?Q?Sch=E4fer?= <j.wielicki@sotecware.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Prosody XMPP server advisory 2021-07-22 (Remote Information Disclosure) (CVE Request)
To: oss-sec <oss-security@lists.openwall.com>

--nextPart4876771.fbC7LsiPbl
Content-Type: multipart/mixed; boundary="nextPart3023446.NBNXtMRvBc"; protected-headers="v1"
Content-Transfer-Encoding: 7Bit
From: Jonas =?ISO-8859-1?Q?Sch=E4fer?= <j.wielicki@sotecware.net>
To: oss-sec <oss-security@lists.openwall.com>
Cc: developers@prosody.im
Subject: Prosody XMPP server advisory 2021-07-22 (Remote Information Disclosure) (CVE Request)
Date: Thu, 22 Jul 2021 17:03:36 +0200
Message-ID: <3576736.366f73iyps@sinistra>

This is a multi-part message in MIME format.

--nextPart3023446.NBNXtMRvBc
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

(NB: [1] suggested that posting to this list is still an acceptable way to 
request a CVE, especially if disclosure should happen immediately. Please let 
me know if that's not going to work, then I'll fill out the form.)

Project
:   Prosody XMPP server

URL
:   https://prosody.im/

Date
:   2021-07-22

**References**

 - Advisory (HTML): https://prosody.im/security/advisory_20210722/
 - Advisory (text): https://prosody.im/security/advisory_20210722.txt
 - Patch: https://prosody.im/security/advisory_20210722/1.patch

This advisory details a new security vulnerability discovered in the 
Prosody.im XMPP server software. **There is no fixed version released yet**. 
We are disclosing the issue because it has been mentioned in public and admins 
can apply a workaround (see below).

Information Disclosure in the Multi-User-Chat component
-------------------------------------------------------

CVE
: We have not requested a CVE yet and hereby do so.

CVSS
: 8.7 (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N/E:F/RL:T/RC:C/CR:H/IR:X/
AR:X/MAV:N/MAC:L/MPR:N/MUI:N/MS:U/MC:H/MI:N/MA:N)

CWEs
: CWE-284

Affected versions
: All versions since 0.11.0

Fixed versions
: None released yet

**Description**

It was discovered that Prosody exposes the list of entities (Jabber/XMPP
addresses) affiliated (part of) a Multi-User chat to any user, even if they
are currently not part of the chat or if their affiliation would not let
them become part of the chat, if the `whois` room configuration was set to
`anyone`.

This allows any entity to access the list of admins, members, owners and
banned entities of any federated XMPP group chat of which they know the
address if it is hosted on a vulnerable Prosody server.

**Affected configurations**

All Multi-User chat rooms hosted on an affected Prosody version which are
configured to share the real addresses of occupants with all other
occupants ("non-anonymous").

The impact is particularly high for rooms which have this option set in
combination with "members-only" (to allow only entities which have at least
"members" affiliation to take part in the chat). Unfortunately, this
configuration is a pre-requisite for using the state-of-the-art OMEMO
end-to-end encryption system.

**Mitigating factors**

A client may choose a sufficiently random name for such private group
chats and set it to be not listed publicly. This prevents unaffiliated
attackers from exploiting the vulnerability, as long as the address of the
room is not leaked.

The public jabber chat room search engine has been modified to not return
any members-only rooms for now.

**Workaround**

As there is no release yet, operators of Prosody servers are advised to
apply the following workaround.

This email has a patch attached. It can be applied to any Prosody 0.11.x
installation. If the installation is managed by a package manager (such
as apt or dnf), a future update will revert the change (though a future
update should bring the fix anyway).

To do so, open a normal shell on the server and locate the file
muc.lib.lua. It should exist in a directory structure

    `modules/muc/muc.lib.lua`.

On debian, it is found in

    `/usr/lib/prosody/modules/muc/muc.lib.lua`.

Navigate to the directory containing muc.lib.lua and apply the attached
patch using `patch -p1 < 1.patch`.

Now reload the MUC component (this can be done without any downtime or
impact on operations. This can be done via Ad-Hoc commands or the telnet
console using `module:reload("muc")`. If you have neither enabled,
a restart of prosody is required.

After the reload of the module or restart of prosody, the Information
Disclosure vulnerability is fixed.

**Fix**

The attached patch is considered a viable fix of the issue.
Distributions are encouraged to pick it up ASAP, even before an
official release by the Prosody team.

**Attribution**

This vulnerability was disclosed to the Prosody team indirectly and we
have no yet had a chance to ascertain if and how the original reporter
wants to be attributed. Due to the severity of the information
disclosure and the fact that it has also been talked about in public,
we wanted to announce the issue widely and officially. A proper
attribution will be filled in here once it has been agreed upon.
--nextPart3023446.NBNXtMRvBc
Content-Disposition: attachment; filename="1.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="UTF-8"; name="1.patch"

diff muc.lib.lua
--- a/muc.lib.lua
+++ b/muc.lib.lua
@@ -970,7 +970,7 @@
 		-- e.g. an admin can't ask for a list of owners
 		local affiliation_rank = valid_affiliations[affiliation or "none"];
 		if (affiliation_rank >= valid_affiliations.admin and affiliation_rank >= _aff_rank)
+		or (self:get_members_only() and self:get_whois() == "anyone" and affiliation_rank >= valid_affiliations.member) then
-		or (self:get_whois() == "anyone") then
 			local reply = st.reply(stanza):query("http://jabber.org/protocol/muc#admin");
 			for jid in self:each_affiliation(_aff or "none") do
 				local nick = self:get_registered_nick(jid);


--nextPart3023446.NBNXtMRvBc--

--nextPart4876771.fbC7LsiPbl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEG/EPV+Xzd5wEoQQIwGIDJZdiWIoFAmD5iMgACgkQwGIDJZdi
WIqSDA/8CCHyKXKsfdYiNxz63fRXWKqIWNKFHh8zy6QBQVCf0yHRP/E6qLe/0x/3
U/pYUoz2cI61Y6bhIyUoYMR2tJVZwT4RnQYfXwCsxg6q6eDapfFRqhv19jM79t0j
w0sXLfKkVAObw3qNSf5eYJnNrlQuWcWu5uNLIv1/ryOs1Oak8jmg0C2O/HvmeMYO
OzCmVGYKb6vtuDmxQN/O6UVddsrHmXnLsmzB9E/djzpwnPqtf1mrDC8Lf6uB1g+5
Rz7q7F3qK4M4ddksDvkQf6vG/sr39Bf3i4va+q5ytJSmXCJb+Ome7R5anxOrs+5Y
rU5V2GqDmC05qtxP44bQyxpn4qplCtF+U5I6GuQ6Az0PK0l/j5YesLxPB6S7K6GU
wEFKcga05sGDEMCQyCdRW8XOuPxbpCBVKygjJvwUV2G4k0sM0dYTs0f3qI3TL/Oe
ykDED7eHodAg9BGDkSddDy2n7ircL5lOVxL4W84iyjB3tMbkFOVEBfM2pmz2yqi/
cOU1mb0wOmxuOtB/IwgTe7NbksS+AwmEc8wkAiP5PIfOsxXuBnjHH1XN7vvkTN7O
YeolqbTJCO5ineELPINe2nE7a/40KOoLuervOWPUlZY1qempxlNc/s5M4ovEzU5H
vLJ8ELUrdbbp6L/yD5D/8rn8jRT5t/z1JftaXgxxpyEp2uolSX0=
=uZ1N
-----END PGP SIGNATURE-----

--nextPart4876771.fbC7LsiPbl--



