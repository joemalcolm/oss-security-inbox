X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3188" "Tuesday" "17" "November" "2015" "19:54:20" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151118005420.DB2DA73C35C@smtpvmsrv1.mitre.org>" "70" "[oss-security] Re: CVE request: Jenkins remote code execution vulnerability due to unsafe deserialization" "^Cc:" nil nil "11" "2015111800:54:20" "[oss-security] Re: CVE request: Jenkins remote code execution vulnerability due to unsafe deserialization" (number mark "        cve-assign@m Nov 17   70/3188  " thread-indent "\"[oss-security] Re: CVE request: Jenkins remote code execution vulnerability due to unsafe deserialization\"\n") "<E819DDD5-C53B-48A6-9578-580E69A84DF3@beckweb.net>" ("<E819DDD5-C53B-48A6-9578-580E69A84DF3@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11829 invoked by uid 550); 18 Nov 2015 00:54:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11811 invoked from network); 18 Nov 2015 00:54:32 -0000
In-Reply-To: <E819DDD5-C53B-48A6-9578-580E69A84DF3@beckweb.net>
Message-Id: <20151118005420.DB2DA73C35C@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 17 Nov 2015 19:54:20 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Jenkins remote code execution vulnerability due to unsafe deserialization
To: ml@beckweb.net

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Remote code execution vulnerability due to unsafe deserialization in Jenkins remoting
> Unsafe deserialization allows unauthenticated remote attackers to run arbitrary code on the Jenkins master.
> This is tracked as SECURITY-218 in the Jenkins project. All current Jenkins releases are affected.

> https://wiki.jenkins-ci.org/display/SECURITY/Jenkins+Security+Advisory+2015-11-11

> Public exploit:
> http://foxglovesecurity.com/2015/11/06/what-do-weblogic-websphere-jboss-jenkins-opennms-and-your-application-have-in-common-this-vulnerability/#jenkins

>> The exploit requires you to have access to a high numbered TCP port
>> running on the Jenkins machine, so it's unlikely this one will work
>> from the Internet.


> Temporary workaround:
> https://jenkins-ci.org/content/mitigating-unauthenticated-remote-code-execution-0-day-jenkins-cli

> A related issue is being discussed here:
> http://www.openwall.com/lists/oss-security/2015/11/09/1
> Jenkins is affected by both this and the Groovy variant in 'ysoserial'.

Use CVE-2015-8103 for the vulnerability addressed by modifying Jenkins
to be safe in the presence of a problematic
webapps/ROOT/WEB-INF/lib/commons-collections-*.jar file.

As far as we know, "the Groovy variant in 'ysoserial'" means:

  https://github.com/frohoff/ysoserial/blob/master/src/main/java/ysoserial/payloads/Groovy1.java

which is a CVE-2015-3253 exploit. Also, we are guessing that Groovy is
relevant because of:

  https://wiki.jenkins-ci.org/display/JENKINS/Groovy+plugin

If preventing the ysoserial Groovy attack against Jenkins only
involves updating the installed Groovy code to 2.4.4 or 2.4.5, and it
has never been necessary or recommended to change any component unique
to Jenkins, then we would recommend mapping to CVE-2015-3253. If it
were necessary or recommended to change any component unique to
Jenkins, then you can have an additional CVE ID for the ysoserial
Groovy aspect of SECURITY-218. (Our expectation is that separate CVE
IDs are needed because the Groovy plugin has own version numbering --
such as version 1.27 -- that's separate from the version numbering of
Jenkins core.)

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWS8srAAoJEL54rhJi8gl54nAQAKIr4J93MinobpK5D8TV9FUd
fyNB0tpgQwJYihVKaR/Uqu0T8B0Rtu9y1uG0DMJynJUPaiw5A1jQh4YsdylgjjOX
NoCdqpzv3ZzboCjHb5f9/4d5O9mVR3MV4T86i0Bf5n7bfB1JxWKMD0PaRBeIGAbk
tTkSXqI0BamT6RwSPHHHd+4jTEkKDT7mlm+J8Fx/WeyZ4LI8DM8lwyC7hOdrStlq
KzyRHm0Wdi9QQMdKFWNtwY02gC9F7BL5zDzvsqX1l2h5E47xFxjgprImJK20+6WA
L7gtL7jE+BqYSwBBDCxkVLqaOHPG5eKM0KXg4Owk0S9rYzbvkd0p7bpRBCMsxo+a
j81fUnrjPO/1w2P4C4FUuiaGonR+Tu958DVIkRlAWU7dhkUZrbKduqCdKO2578la
YCMkWrDg/nyJH5KDfFyitWhmw3KN359M+BX9quM/O3qBkpvx1BYNOgLrEWszOyCf
DBSJ7NMqyIPYKp6c946iXBGtomavI9lbNxCwpW44YlHeTf0mJxGQ28Qi1WvJm4rP
IKKtAsCwb5BuOnGPq10yqQsXnTdNVu713BMDToNhfE9F8NvhIk8Ko2/Gme4xdDYz
lJzMToAXbYCETPk1r3QK1gjYadWf3TyBfe0DRK9ZpPNYfjQzMWQeBZG4uedUvL3F
q/mc2sF12N2a8sX/Ulzh
=n4BO
-----END PGP SIGNATURE-----
