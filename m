X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2300" "Thursday" "26" "May" "2016" "02:18:16" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160526061816.F37E46C0410@smtpvmsrv1.mitre.org>" "49" "[oss-security] Re: CVE-Request: TYPO3 Extbase Missing Access Check" nil nil nil "5" "2016052606:18:16" "[oss-security] Re: CVE-Request: TYPO3 Extbase Missing Access Check" (number mark "U       cve-assign@m May 26   49/2300  " thread-indent "\"[oss-security] Re: CVE-Request: TYPO3 Extbase Missing Access Check\"\n") "<a33d4a482f974e8c91f260f173ca9d35@exchange.arcus-security.ch>" ("<a33d4a482f974e8c91f260f173ca9d35@exchange.arcus-security.ch>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25757 invoked by uid 550); 26 May 2016 06:18:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25739 invoked from network); 26 May 2016 06:18:28 -0000
From: cve-assign@mitre.org
To: stefan.horlacher@arcus-security.ch
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <a33d4a482f974e8c91f260f173ca9d35@exchange.arcus-security.ch>
Message-Id: <20160526061816.F37E46C0410@smtpvmsrv1.mitre.org>
Date: Thu, 26 May 2016 02:18:16 -0400 (EDT)
Subject: [oss-security] Re: CVE-Request: TYPO3 Extbase Missing Access Check

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://typo3.org/teams/security/security-bulletins/typo3-core/typo3-core-sa-2016-013/
> TYPO3-CORE-SA-2016-013
> 
> Extbase request handling fails to implement a proper access check for
> requested controller/ action combinations, which makes it possible for
> an attacker to execute arbitrary Extbase actions by crafting a special
> request. To successfully exploit this vulnerability, an attacker must
> have access to at least one Extbase plugin or module action in a TYPO3
> installation. The missing access check inevitably leads to information
> disclosure or remote code execution, depending on the action that an
> attacker is able to execute.

> TYPO3 installations with at least one publicly available Extbase
> action, are exploitable without any further authentication.
> 
> TYPO3 installations without publicly available Extbase actions, are
> still exploitable for authenticated backend users with access to a
> backend module, which is based on Extbase.

Use CVE-2016-5091 for both of these installation scenarios. As far as
we can tell, the second scenario ("without publicly available") occurs
only because TYPO3 Core code (or a copy of TYPO3 Core code) exists in,
or is reachable by, a (supported or unsupported) backend module.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXRpTJAAoJEHb/MwWLVhi2vU8P/34LeiCcFMQRXakBpAKqBQv5
Vox2Wg1HJO0lkpbihKE3ixhvRawSJsT/5TKMqSdBJG5HWQblIOHW9S0JHAazfIge
ezxJDJObtDGo8jjUERgvDAsYGgT/ZZ15ApVnCJYaVNc1ZKgM9f1/V044O8+mE1WX
4B6thQZmmbpCK8KWBEwQ9uOxES0168tS4QQ6Iu2mst7vpXnak8RxU1wI8qawFo/7
ySqgNdX6mqAo0TXQ/mPJxkT9sa/Mf+7Hr7L4K8ukRG8OkVaQ74Py4noy+XKm6lV6
IvVN+ILFcu3XcPM98Civu8B6lRi61JGjC1VQwk1UP9mgqSQBrxTRWDQSBOUrvdEI
YviIMAMSGEXhEQfG+peTVNJmR0SJr5DBhYn9UY5gHiqqM8q6XMsH6jVrbOYSy/KQ
FVVc/9K32pPwG53A9lnNkNs6FFIKzLVDOGBS3zHU9YBprN6ulV1ApIWcWuQm+sZh
81z/CzQZSLV3ovNYagmJpXyOIRmcWkfpD9YtIPwcdZWk3IuuynswSUBKlT57Mu+F
4N3SmHtRAy40ZJA35KWvnCW2PwXV8CQx+EU9B8rGCVYcbGOxtG6BTElMS5fuBwsJ
luwySw1sbQgDaECk9JKjTtwBl558KZALjzDXRd3aLv1dq8q9vd93rMifeShSTIlQ
7Oi3kAkzjD1dNVXjhC12
=A6Qx
-----END PGP SIGNATURE-----
