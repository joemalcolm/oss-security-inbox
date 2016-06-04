X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3892" "Friday" "3" "June" "2016" "22:56:47" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160604025647.D1D406C00F8@smtpvmsrv1.mitre.org>" "86" "[oss-security] Re: expat hash collision fix too predictable?" "^Cc:" nil nil "6" "2016060402:56:47" "[oss-security] Re: expat hash collision fix too predictable?" (number mark "        cve-assign@m Jun  3   86/3892  " thread-indent "\"[oss-security] Re: expat hash collision fix too predictable?\"\n") "<5751DAF8.6060901@pipping.org>" ("<5751DAF8.6060901@pipping.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32719 invoked by uid 550); 4 Jun 2016 02:57:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32646 invoked from network); 4 Jun 2016 02:56:59 -0000
In-Reply-To: <5751DAF8.6060901@pipping.org>
Message-Id: <20160604025647.D1D406C00F8@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri,  3 Jun 2016 22:56:47 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: expat hash collision fix too predictable?
To: sebastian@pipping.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The call to srand(3) can reduce the security of the calling application,
> depending on what it is doing with srand(3)/random(3). This behavior is
> recognized as a bug by Fedora, too
> (https://bugzilla.redhat.com/show_bug.cgi?id=1197087).

The text below assigns one CVE ID to this expat vulnerability.


>> https://bugzilla.redhat.com/show_bug.cgi?id=1197087#c6
>> 
>> Expat is calling srand ... [if] the code using Expat ... never called
>> XML_SetHashSalt on that parser ... the arrival of XML_SetHashSalt
>> bypassed the Expat user's radar

>>> https://sourceforge.net/p/expat/bugs/499/
>>> 2012-04-05
>>> In any case, you can supply your own hash salt - after creating the
>>> parser, but before parsing is started. See the new API function XML_SetHashSalt.

The higher-level issue, from our perspective, is that a library
(intended for use in arbitrary applications) should not have
potentially unavoidable calls to the srand function unless this is
documented. The library might be used by an application in which srand
was already called exactly once, and srand/rand happens to be the
right choice for that application because of a minimal need for
randomness, and this minimal need for randomness is no longer
satisfied if there are unexpected extra calls to srand.

In other words, good options for a library include:

  - never call srand under any circumstances

  - call srand only if the application calls a library function that
    is documented as triggering an srand call

  - call srand whenever it wants, as long as the documentation warns
    application authors about potential incompatibility with any use
    of srand within an application

We really don't know whether the above is a generally accepted
principle for all libraries. However, it appears that the expat vendor
is recognizing the old behavior (i.e., the behavior before
XML_SetHashSalt was available and documented) as a security-relevant
implementation error. Use CVE-2012-6702.

An entirely separate question is whether generate_hash_secret_salt
should ultimately be using the rand function to attempt to provide a
random number, or whether it should provide a better quality random
number. There is no CVE ID for this yet. If the expat upstream
maintainer is announcing a new expat release, specifically stating
that discontinuing use of the rand function represents a vulnerability
fix, then a CVE ID can be assigned.

One might make a design assertion that every portable library and
application, if it potentially has a need for good random numbers, is
supposed to have its own code that is able to call each of getrandom,
CryptGenRandom, and arc4random_buf on the applicable OS (as suggested
in https://bugzilla.redhat.com/show_bug.cgi?id=1197087#c28). We don't
feel that CVE is the right way to track that assertion's viability or
adherence.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXUkL1AAoJEHb/MwWLVhi29JcP/1O68QOg+teOsPnIAXqBFnf+
8zty+w4jemQtwcSeSEsFKm7U9r3ACC/EtGi8sdjws5kqFY7Qad2+XyJS4mTQLozZ
aK2MjByk3ITmEtPkLiIwBbYro1DpixvdOnkCVGUKe3NwuZ42/FOnXNobPprSEBPW
5ibjiqcu1HKAfH7A2e9EuGs63Skdh40NhEBwSbbvhiHLq1FMQuETEGmkno7yIC+u
zijg1uz+K//YkJrADyzvAzwcfer4WUqe9Ney+jgrTyp5sIqVuStro08WVH7HQRTZ
pKJ4ZbvNrn0HrchA5nd+xcsn7B29NjKMVuUCvczpP4xZKvASyey95+t9FfrkwZ6O
A04BdefJMddedSwd7odzVq0QdqUinkWMLlPuMv4UdZRwjF/MsdBqDZVPDouNSPxT
vL6KOwhGJ12qazXYhjIDxkqztj6ou9udcUyUsLK0EehlnHeE2/ZnfnEAR34i53uG
wFmPXual8A5imxVtY3uruVl91Y2UAbspTIujSBZcZwBGnIGdXmTBHdybKI4/4dfh
5nsAc6EgVak1hWR/JxzNnvwowySXECLV9XHlaMdzO/g6kMF3HKCGZYhdjgrhIE8b
GkN6uKv3JVZmFmuaOvqzPRpkrCS4Y36K9KV+T9u1qGKsmEzUt23vAEU7yr4crlDz
cX0LtknjCbvm/N/Hv1eJ
=5Ppg
-----END PGP SIGNATURE-----
