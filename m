X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1704" "Thursday" "21" "April" "2016" "10:55:46" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160421145546.4E703332038@smtpvbsrv1.mitre.org>" "43" "[oss-security] Re: CVE Request: Stored Cross-Site Scripting in TYPO3 Bookmarks" nil nil nil "4" "2016042114:55:46" "[oss-security] Re: CVE Request: Stored Cross-Site Scripting in TYPO3 Bookmarks" (number mark "U       cve-assign@m Apr 21   43/1704  " thread-indent "\"[oss-security] Re: CVE Request: Stored Cross-Site Scripting in TYPO3 Bookmarks\"\n") "<571642B1.4060407@integrity.pt>" ("<571642B1.4060407@integrity.pt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3364 invoked by uid 550); 21 Apr 2016 14:55:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3340 invoked from network); 21 Apr 2016 14:55:58 -0000
From: cve-assign@mitre.org
To: fr@integrity.pt
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <571642B1.4060407@integrity.pt>
Message-Id: <20160421145546.4E703332038@smtpvbsrv1.mitre.org>
Date: Thu, 21 Apr 2016 10:55:46 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: Stored Cross-Site Scripting in TYPO3 Bookmarks

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Can I have a CVE ID assigned to this Stored Cross-Site Scripting in
> TYPO3 Bookmarks?
> 
> https://typo3.org/teams/security/security-bulletins/typo3-core/typo3-core-sa-2016-006/

>> Problem Description: Failing to properly encode incoming data, the
>> bookmark toolbar is susceptible to Cross-Site Scripting.

> https://labs.integrity.pt/advisories/cve-pending-stored-cross-site-scripting-in-typo3-bookmarks/

>> To replicate this issue we go to any page and click on "Create a
>> bookmark to this page".
>> 
>> And now grab the POST request that is being passed to the server and
>> change the "module" parameter to your payload.

Use CVE-2016-4056.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXGOkgAAoJEHb/MwWLVhi2FiQP/1qjggqrBC8qjEN+PgJPeIhf
yLRSxbpXpmPJpaP/P5B/z71babzUFCYmzlyPLaDgvokdn4oLUHZL+C+FVpoS7nNr
D6Wj35JWhwbgwN8bjvmtjH61K7viFHMG3M/kVx+edt8pRAYVgzwoiX0+f6epYoJX
j9iEx76NRFeKLiNoolR27i/j3MirMaljPE3HBle9x3uIf7ClGPHGoORv2532gkU3
TImXvpCbPHORGCM/2WZWeoYRvhMCnA21pPS8nZvptQ2o15Risno2A98np03H4iBj
rIu3xV0U9wBMElp5ZooK5tiWhplkXKMnjZuATRfI8t6rBZbU5oW2/zUzWglPTgxt
czJN2TnqWgxA+ZSEHVRHBEXU7OBy5daRIHFYKlfkUmA7n+LeHcQkJ4zaxnwqENLB
LTwtxgZAzQEELy2ODqmxVs/oz6rsTZf2CknuRpLJUxtQ/6RSIhZC5ivdNV8pPMNY
3e/peVhCjO0NXFGPjygB3EcfPdQ/fcuTMaNsvRV9MqvwTerWgixciXtoELa/FI92
lzxsgb34paE/eAuQvDa3aPxwLk+OySXwKm4EQY2F1NW3ilFCx+Eh/Ajv/c3Jh4kM
rTR0MHo1VEiM3xs/NXyVnKgPhx0mvS+M/o5Gi6sI7K+7z3P6e6+DkrFzB8W2TIk6
EgycOanoaCIcW/KAQcc1
=263O
-----END PGP SIGNATURE-----
