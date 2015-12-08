X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["656" "Tuesday" "8" "December" "2015" "21:31:42" "+0100" "Matthias Geerdsen" "matthias@vorlons.info" "<56673E2E.6080702@vorlons.info>" "20" "[oss-security] CVE request: Redmine - Data disclosure in atom feed" nil nil nil "12" "2015120820:31:42" "[oss-security] CVE request: Redmine - Data disclosure in atom feed" (number mark "U       matthias@vor Dec  8   20/656   " thread-indent "\"[oss-security] CVE request: Redmine - Data disclosure in atom feed\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32276 invoked by uid 550); 8 Dec 2015 20:31:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32254 invoked from network); 8 Dec 2015 20:31:54 -0000
X-Virus-Scanned: Debian amavisd-new at mail.vorlons.info
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vorlons.info;
	s=mail; t=1449606702;
	bh=HQSoqKMYRrwrccwY/M60GHqwlMGoWyhBpd+tmEqLBlQ=;
	h=From:Subject:To:Date:From;
	b=vMzSNn1aL+6jFGdI/Hn4WSJIY8AmvG91EInnKDFpyYEjOrf3c4rtxcJzC1Sxp3jM5
	 j/8iGN8x4tHbATP3Nfooh8/aCBGavjlf4PBPHnN3OafghWR4Ew3fCsioY0/jpW0nv8
	 qXGuLQgZr+HMM/XnoAbMLeW7U0iycrDa08boTZ2c=
From: Matthias Geerdsen <matthias@vorlons.info>
X-Enigmail-Draft-Status: N1010
To: oss-security@lists.openwall.com
Message-ID: <56673E2E.6080702@vorlons.info>
Date: Tue, 8 Dec 2015 21:31:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Icedove/38.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE request: Redmine - Data disclosure in atom feed

Hi,

please assign a CVE ID a data disclosure issue fixed in the latest
Redmine Releases (2.6.9, 3.0.7 and 3.1.3) [1,2,3,4]. Changelogs are
mentioning a private ticket [5]. The relevant commit should be this
one [6].

Cheers
Matthias

[1] http://www.redmine.org/projects/redmine/wiki/Changelog_3_1
[2] http://www.redmine.org/projects/redmine/wiki/Changelog_3_0
[3] http://www.redmine.org/projects/redmine/wiki/Changelog_2_6
[4] http://www.redmine.org/news/103
[5] http://www.redmine.org/issues/21419
[6]
<https://github.com/redmine/redmine/commit/7e423fb4538247d59e01958c48b491f196a1de56>

http://www.redmine.org/projects/redmine/wiki/Security_Advisories

