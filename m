X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1789" "Wednesday" "10" "February" "2016" "11:33:37" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160210163337.F00B66C04ED@smtpvmsrv1.mitre.org>" "44" "[oss-security] Re: CVE Request: cacti: Authentication using web authentication as a user not in the,cacti database allows complete access" nil nil nil "2" "2016021016:33:37" "[oss-security] Re: CVE Request: cacti: Authentication using web authentication as a user not in the,cacti database allows complete access" (number mark "U       cve-assign@m Feb 10   44/1789  " thread-indent "\"[oss-security] Re: CVE Request: cacti: Authentication using web authentication as a user not in the,cacti database allows complete access\"\n") "<56BA3522.6020601@suse.com>" ("<56BA3522.6020601@suse.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11594 invoked by uid 550); 10 Feb 2016 16:33:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11573 invoked from network); 10 Feb 2016 16:33:50 -0000
From: cve-assign@mitre.org
To: astieger@suse.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <56BA3522.6020601@suse.com>
Message-Id: <20160210163337.F00B66C04ED@smtpvmsrv1.mitre.org>
Date: Wed, 10 Feb 2016 11:33:37 -0500 (EST)
Subject: [oss-security] Re: CVE Request: cacti: Authentication using web authentication as a user not in the,cacti database allows complete access

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://svn.cacti.net/viewvc/cacti/tags/0.8.8g/docs/CHANGELOG?revision=7788&view=markup
> bug:0002656: Authentication using web authentication as a user not in the cacti database allows complete access

> http://bugs.cacti.net/view.php?id=2656
> Upstream fix is http://svn.cacti.net/viewvc?view=rev&revision=7770
> https://bugzilla.suse.com/show_bug.cgi?id=965930

>> I would expect all access to be limited to what anonymous users can
>> get, which is nothing in our cacti configuration.

>> The bug is apparently here in auth_login.php lines 81 to 88 which fail
>> to check the query actually found any data or not.

>> if (!$user)
>> auth_display_custom_error_message ... is not authorized to use Cacti ...
>> exit;

Use CVE-2016-2313.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWu2XZAAoJEL54rhJi8gl5JVwP/RVDp3Kf8RFhCQm9oTHcYVo+
6RUPbnrR9e7j2V43m5n/bhgOyExkiXPh2IJtGIWEdYtf5CQDXU4oMttNCp2GeBhm
UCO/Pwh1E3zPPJEMJwDoTAK9R3o0lw9A+HtXTb9ktzBLEsZFnsy1FNNBM9PRHN7e
wbz1sGhJrIOQgYx/z8pGcK3r7Ae5JwCyFdoNnSa475ZwjMHYMjlCpb46mPjz6B/T
8yfoBuF1yHg8D6CWgYnesgRfwydWH2SM4piunr9bsq8OP0TXYkqltOpnNScfXHjx
T/NM4FssmZgDtCG8WwhvfxASbm9eYOcfo/O/WF/QgFcwlNSL0o9ZbIUZURPplwuH
E5WT3qakfhmWshZPlLY6WdgvRSyRVh0aB6P45p4KCQx03C+gr3h8nFinDQZnyxWE
JXcfRh6IU/eBvcJCJ/IMVUlNO5482F2ClIZjpqIOFZRa6EJBiqOpX9zhRCofugkj
UXQSGePKtjFD6xpeB+ThlYyITj1b57jtZFjU3OQO8STZrZTtIKS1aEaCf12BXfOi
A6qNPfdkoJ420rqmECesBhZkJ7URDLBym9XwR1uJ41NrdAm3v92CbO3X/TDO+mqV
ZJpKkdl6fTicHZKWW5cqZ7OVsd+0llBvaDp/43G4xEVoQ8UQW2RQtuAh53tkgKz1
FLopy3OuDwgPe/NKGpTQ
=tvYz
-----END PGP SIGNATURE-----
