Received: (qmail 11499 invoked by uid 550); 16 Aug 2024 21:05:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11465 invoked from network); 16 Aug 2024 21:05:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=dwheeler.com; s=selector2; h=Date:To:References:Message-Id:Subject:
	Mime-Version:Content-Type:From;
	bh=wyKfziqrshfV0xA5yzw6T1SETkak5D1FEorQABtwRGg=; b=HS7rLwvOm5orjPOxaWuH6G8VvG
	5+ofTrn7r5+sCEwdbFmFcPmf55yNlPFSG0SzfwniFJi0KnX3E+Dnfz6KsvapcyfWivzivbhAdgpPg
	ItJsK88Od236p1siV18UPsG1Xift607w9ADhRZt0hjc45rR0VmD6BdN2CyM7QICrf/pzLfWiccKrR
	kEF6GTMsFeL+SCQLbpShtHzNTiO3Z5Cf3JUb//z4zUW8MEbXG7m2deYAT2yXJ+k2Rwh2+yQpkA63Z
	nsdUajHwKP1k9T84R5WtXuli465esQhRGx3noPtMGay5NbSPaCqM0rC4C4MyL1rN+9w3ljg8DPViQ
	ImXIhF9Q==;
From: "David A. Wheeler" <dwheeler@dwheeler.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_D69511B6-430C-4AC9-8374-40ECFDF68046"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6.1.1\))
Message-Id: <24243143-1A4D-4B71-A6C4-C8140C09A1CE@dwheeler.com>
References: <E0230074-77BD-4A07-9838-92BB263C598E@linuxfoundation.org>
To: oss-security@lists.openwall.com
Date: Fri, 16 Aug 2024 17:04:52 -0400
X-Mailer: Apple Mail (2.3731.700.6.1.1)
Subject: [oss-security] AI Cyber Challenge (AIxCC) semi-final results from DEF CON 32 (2024)

--Apple-Mail=_D69511B6-430C-4AC9-8374-40ECFDF68046
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

All, FYI:

DARPA and ARPA-H are running a research competition called the "AI Cyber Ch=
allenge" (AIxCC).
Its goal is to create automated tools that find and *fix* vulnerabilities i=
n software.
General information is here: <https://aicyberchallenge.com/>

The AIxCC semifinal competition was last week at DEF CON 32 (2024).
All competitors were given an identical set of Challenge Projects, which we=
re
real-world OSS projects seeded with synthetic vulnerabilities.
The projects were Jenkins, Linux kernel, Nginx, SQLite3, and Apache Tika.
There were 7 winners; each winner received $2 million US as a reward, and t=
hose
teams will be allowed to compete in the finals at next year's DEF CON.

An official summary is here: <https://www.darpa.mil/news-events/2024-08-11>.
Some other interesting links related to the semifinals include:
<https://blog.trailofbits.com/2024/08/09/trail-of-bits-buttercup-heads-to-d=
arpas-aixcc/>
<https://www.youtube.com/watch?v=3DsQKGWZvuLko>

One of the competing teams, Team Atlanta, even found a real-world bug in SQ=
Lite3.
This was reported to SQLite through their usual process; it's fixed in trun=
k. More info
about that specifically is here:
- <https://x.com/TeamAtlanta24/status/1822739301463130271>=20
- <https://sqlite.org/forum/forumpost/81670d1056>

The tools must be released by next year as open source software, with an OS=
I-approved license,
as a condition for accepting prize money or competing in the final competit=
ion. Exact text is in the
"Open-Source Requirement" section in its rules <https://aicyberchallenge.co=
m/rules/>.
The challenge problems were all based on real-world OSS, and the
hope is that in the long term such tools can automatically find & fix vulne=
rabilities in all
software including OSS.

Full disclosure: I work for the Open Source Security Foundation (OpenSSF) a=
nd I
have been working with DARPA & ARPA-H supporting this. That said, I thought=
 others in this mailing
list would want to know about it. No research is *guaranteed* to produce so=
mething
leading to useful results, but I think this is a promising approach. We def=
initely could *use*
tools that automatically find & fix vulnerabilities, if they're good enough=
!!

--- David A. Wheeler


--Apple-Mail=_D69511B6-430C-4AC9-8374-40ECFDF68046--
