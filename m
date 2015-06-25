X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1858" "Wednesday" "24" "June" "2015" "22:32:53" "-0300" "Ignacio R. Morelle" "shadowm2006@gmail.com" "<2121534.CC5M7bqt55@nanacore>" "61" "[oss-security] CVE request: Wesnoth authentication information disclosure" nil nil nil "6" "2015062501:32:53" "[oss-security] CVE request: Wesnoth authentication information disclosure" (number mark "U       shadowm2006@ Jun 24   61/1858  " thread-indent "\"[oss-security] CVE request: Wesnoth authentication information disclosure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8044 invoked by uid 550); 25 Jun 2015 01:54:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20293 invoked from network); 25 Jun 2015 01:33:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:user-agent:mime-version
         :content-transfer-encoding:content-type;
        bh=gKnLljK47TXmvxiZ8yhBxJ5R9pMCaDLTsnUx9tM2Jks=;
        b=U42LgckHxj0u5FZy36xaPxPkRdXZVTGTTaYogzBXyuzuvvMDx+w+2dxia32QZ993tb
         5yojCg380L9jBWDs5QEhLHDwyDQeLubOxITodRInVOaAaMpds327GUCcyyPDEJesOf94
         iz9gJ123gn0XUjjwKeExfWWJm8FfwGVbS9760O5xjh4F3xdHfaV3atJvpc50h5I5dl6N
         epCrkFE7DKpg4+078YA2SpY41rF080aszldEhq5DOCpmB9PMaARe00FizFyqjdC8RX30
         DL0KSyqutCrrXhcL6/0o3SkKwbvILXW66zI2TVa8AluaM/fhsrVff3OcjfUbhuKWRCfH
         dJBw==
X-Received: by 10.140.232.131 with SMTP id d125mr59337568qhc.80.1435195977641;
        Wed, 24 Jun 2015 18:32:57 -0700 (PDT)
Message-ID: <2121534.CC5M7bqt55@nanacore>
User-Agent: KMail/4.14.1 (Linux/4.0.5-nanacore-81; KDE/4.14.2; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Date: Wed, 24 Jun 2015 22:32:53 -0300
From: "Ignacio R. Morelle" <shadowm2006@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Wesnoth authentication information disclosure
To: oss-security@lists.openwall.com

Hello,

We've found and fixed a bug in our software, "The Battle for Wesnoth", whic=
h=20
allowed malicious users to obtain the contents of client-side files contain=
ing=20
passphrases used for content server authentication.

We would like to have a CVE id assigned to this issue if possible.


Description:

Wesnoth implements a text preprocessing language that is used in conjunctio=
n=20
with its own game scripting language. It also has a built-in Lua interprete=
r=20
and API. Both the Lua API and the preprocessor make use of the same functio=
n=20
(filesystem::get_wml_location()) to resolve file paths so that only content=
=20
from the user's data directory can be read.

However, the function did not explicitly disallow files with the .pbl=20
extension. The contents of these files could thus be stored in saved game=20
files or even transmitted directly to other users in a networked game. Amon=
g=20
the information that's compromised is a user-defined passphrase used to=20
authenticate uploads to the game's content server.

This issue was found by Toom L=F5hmus, then verified and fixed by Ignacio R=
.=20
Morelle.


Bug report:

 * https://gna.org/bugs/?23504 - currently private to project members as it=
=20
   includes a sufficiently elaborate exploit proof of concept.


Affected versions:

 * All existing versions up to and including 1.12.2 and 1.13.0.
 * 1.12.3 (tagged but not officially announced) contains a partial fix that
   only prevents inclusion of files with a lowercase extension.


Patches:

 * Original fix for lowercase extensions only:=20
   https://github.com/wesnoth/wesnoth/commit/f8914468182e8d0a1551b430c0879b=
a236fe4d6d
 * More general, correct fix:=20
   https://github.com/wesnoth/wesnoth/commit/b2738ffb2fdd2550ececb74f76f755=
83c43c8b59

--=20
Regards
  Ignacio R. Morelle, Wesnoth developer and maintainer
