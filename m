X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1141" "Wednesday" "18" "November" "2015" "11:00:13" "+0100" "Daniel Beck" "ml@beckweb.net" "<2A8BEBF8-84F6-476A-91B7-14A461A83E30@beckweb.net>" "33" "Re: [oss-security] Re: CVE request: Jenkins remote code execution vulnerability due to unsafe deserialization" "^Date:" nil nil "11" "2015111810:00:13" "[oss-security] Re: CVE request: Jenkins remote code execution vulnerability due to unsafe deserialization" (number mark "        ml@beckweb.n Nov 18   33/1141  " thread-indent "\"Re: [oss-security] Re: CVE request: Jenkins remote code execution vulnerability due to unsafe deserialization\"\n") "<20151118005420.DB2DA73C35C@smtpvmsrv1.mitre.org>" ("<20151118005420.DB2DA73C35C@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17519 invoked by uid 550); 18 Nov 2015 10:16:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7713 invoked from network); 18 Nov 2015 09:59:17 -0000
Content-Type: text/plain; charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
In-Reply-To: <20151118005420.DB2DA73C35C@smtpvmsrv1.mitre.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <2A8BEBF8-84F6-476A-91B7-14A461A83E30@beckweb.net>
References: <20151118005420.DB2DA73C35C@smtpvmsrv1.mitre.org>
X-Mailer: Apple Mail (2.1878.6)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1447840757;62d845c2;
Date: Wed, 18 Nov 2015 11:00:13 +0100
From: Daniel Beck <ml@beckweb.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE request: Jenkins remote code execution vulnerability due to unsafe deserialization
To: oss-security@lists.openwall.com


On 18.11.2015, at 01:54, cve-assign@mitre.org wrote:

> As far as we know, "the Groovy variant in 'ysoserial'" means:
>=20
>  https://github.com/frohoff/ysoserial/blob/master/src/main/java/ysoserial=
/payloads/Groovy1.java


Exactly. My apologies for the vague description.

> Also, we are guessing that Groovy is relevant because of:
>=20
>  https://wiki.jenkins-ci.org/display/JENKINS/Groovy+plugin


Groovy Plugin and its version is unrelated, as Groovy is included in Jenkin=
s core. Jenkins was vulnerable even without Groovy Plugin.

> If it were necessary or recommended to change any component unique to
> Jenkins, then you can have an additional CVE ID for the ysoserial
> Groovy aspect of SECURITY-218. (Our expectation is that separate CVE
> IDs are needed because the Groovy plugin has own version numbering --
> such as version 1.27 -- that's separate from the version numbering of
> Jenkins core.)

We updated neither commons-collections nor Groovy, the fix for both is spec=
ific to Jenkins, in the same component, and was part of the same release of=
 Jenkins. Does this mean the one CVE ID covers both?

--=20
Daniel Beck

