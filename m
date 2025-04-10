Received: (qmail 26583 invoked by uid 550); 10 Apr 2025 13:18:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18185 invoked from network); 10 Apr 2025 12:22:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akendo.eu; s=MBO0001;
	t=1744287767;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=itzkq4TgG/Gdc6PRDMtr6uJWR0nlc5bmjvnYKleaYd0=;
	b=By2QJ3GsjzZYJsBO2QhBDlr0dzpNFa421QsXnaaorsTuc1DRfEEFLWXH4Lqyq6Gfm2QqsR
	hCnHo8EJRGIhhNJNVPMWMfi8zfhd6N6mF4+2O7Pwgn7TY7mlnkt3cqS3XP64A1eR9qPQMt
	Av7xrGbcIBGS/dE2Lx/b+0q6KBJktnN5lqMKepPVsGiRS0/DDXwLJqiRCKEZ72Er9SK9xe
	THr5B24HujemKf37viAXQNRohLXXktRoERM+n0wJX4CQSMM8eVC/oD4MibISHXp3TUkOAR
	4aLZjlfz15/nptyL2pLpXl6t91zlnrFQQEF831z1Zva5MWYMt2tJX7Xve01S2w==
From: "akendo@akendo.eu" <akendo@akendo.eu>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Kernel CVE-2024-50217
Thread-Index: AQHbqhLyJDDKZBF9g0aSSOJ7H+RjcQ==
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Thu, 10 Apr 2025 12:22:46 +0000
Message-ID:
	<VI0P189MB276612AABA4D5DB2B4018524AEB72@VI0P189MB2766.EURP189.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-Exchange-Organization-SCL: -1
X-MS-TNEF-Correlator:
X-MS-Exchange-Organization-RecordReviewCfmType: 0
x-ms-reactions: allow
Content-Type: multipart/alternative;
	boundary="_000_VI0P189MB276612AABA4D5DB2B4018524AEB72VI0P189MB2766EURP_"
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-50217: Linux kernel: btrfs: Use-after-free of block device file in __btrfs_free_extra_devids()

--_000_VI0P189MB276612AABA4D5DB2B4018524AEB72VI0P189MB2766EURP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hey everyone,

Not too sure how or whom to ask about: But I saw that there is CVE-2024-502=
17 that affects every kernel since 4.8.

However, it is only fixed on more recent version of the linux kernel like 6=
.11 or 6.12. Any reason this wasn=92t backported to older kernel versions?


Best regards,
Akendo

--_000_VI0P189MB276612AABA4D5DB2B4018524AEB72VI0P189MB2766EURP_--
