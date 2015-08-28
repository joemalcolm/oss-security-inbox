X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1565" "Friday" "28" "August" "2015" "11:14:36" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150828151436.42A516C0001@smtpvmsrv1.mitre.org>" "37" "[oss-security] Re: CVE request: XSS vulnerability in jsoup related to incomplete tags at EOF" nil nil nil "8" "2015082815:14:36" "[oss-security] Re: CVE request: XSS vulnerability in jsoup related to incomplete tags at EOF" (number mark "U       cve-assign@m Aug 28   37/1565  " thread-indent "\"[oss-security] Re: CVE request: XSS vulnerability in jsoup related to incomplete tags at EOF\"\n") "<55E0165B.1020601@redhat.com>" ("<55E0165B.1020601@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16289 invoked by uid 550); 28 Aug 2015 15:14:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16256 invoked from network); 28 Aug 2015 15:14:48 -0000
In-Reply-To: <55E0165B.1020601@redhat.com>
Message-Id: <20150828151436.42A516C0001@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 28 Aug 2015 11:14:36 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: XSS vulnerability in jsoup related to incomplete tags at EOF
To: fweimer@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/jhy/jsoup/pull/582
> https://hibernate.atlassian.net/browse/HV-1012
> https://issues.jboss.org/browse/WFLY-5223

Use CVE-2015-6748 for this jsoup vulnerability.

(Although the http://www.openwall.com/lists/oss-security/2015/08/28/3
message mentions "We use Hibernate Validator (HV) ..." in its quoted
text, this does not mean that the Hibernate Validator product is used
by the jsoup product. The actual relationship is that jsoup is used by
Hibernate Validator (and jsoup is used by WildFly).)

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJV4HpBAAoJEL54rhJi8gl5sAIQAL66ByVY6dMH+ufoKvpFodZW
1qtTauto6+8hGgE6mqRFnkVJmca3ZrgsPZG0k6KnQTWuLq9PT0rwmd/WRNZGwV0n
mqaJ+lLM59p3sztISPICkboCR+/03RDlmWXwlbrsZfFrLbfWb9qYv5R3cvNjJrA/
mKNLCwznnkv4T5yWSwkRMZVctZwnv/YXqKTFHBRoUdhgV8iVLRJJIT2WapeATWpu
ksL/wjP4TBqfZCPm7fqlQdHStzuBXioFhb/7l3icg2gF1zOS+tgb1unPmUY7KtHE
3qVGzF171KmTUkzyInWk1jiGvXSGt98T0lyBDpHcmiJ++dW/a+gZczg8vdrL+O7x
KVwjmI+dvEpYozwQCNNySzZfvwOo1u42Dm34Djyheg3nW/kKl/YEod032aR4nodg
S4ZUG5+nCf//TGQ0/SUKB7iTBE03ZYGn6mnZ149sfg0c+kTM+y9RCSUaaobZubZx
5vq1sKVKV9YgSs3TCUr90Hcp5OKSXG+GNayo2R+bsf2A8I796NSEZodu6Wfgm3MM
B3CGmI7/EcLYWObdj0hZp5XjrM+8IEp10rkSfQeIetUoX+TX7RWKHX1ltG/ZTXSS
qt/HhKJmIx0PkbDqOOi8Nb8WOgtuaok81bJgYFQ/TH/0USQA4vGMOeYyd8YzjSmb
R8MYLER1ri1zeY6i0aPt
=P+gf
-----END PGP SIGNATURE-----
