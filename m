Received: (qmail 15948 invoked by uid 550); 7 Aug 2023 12:35:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11301 invoked from network); 7 Aug 2023 06:57:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=michaeldaumconsulting.com; s=default; t=1691391465;
	bh=dNlBq0rCqEmFKkPsXCKDG/KtODysIKlzwR+rHIEQ1F4=;
	h=From:To:Subject:Date:From;
	b=0eI9KRFwyHd60Rx9F9e12bDDEXIE9BJUrS0IC1sAAp6N0HxeNAFvj8m6mXrWG4zMz
	 op4Y+2qiQZfdVKzrp7137TIfv+snRhbCTqvja9o/5uGykm/ne5GGElkbv+UmsrCzTh
	 1dKv36Kfm8e0MznqJbHeiDcVlwDsOfoJyF2JqcZNb0Y5wMRV3vTXYZ0thEj8YvJDBC
	 ArvlNq/6kj6IUCQQ3IDSb2C2pwFDHoBr8xXksjTGdX2hxac3wLDnOx2p6TXg1Px25p
	 KpaYUCUbP76fFhUOyjQXqwPdtWjGP8j6ttf2nezKrHzC0KF95aQ0fkgrToCWglKeTV
	 FXp9IU3Sh089Q==
From: Michael Daum <daum@michaeldaumconsulting.com>
To: oss-security@lists.openwall.com
Date: Mon, 07 Aug 2023 08:57:44 +0200
Message-ID: <7357024.lOV4Wx5bFT@intra>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="iso-8859-1"
Subject: [oss-security] Foswiki-2.1.8 has been released

Dear all,

we've got a new release out. Update is highly recommended as it fixes 9 critical security related bugs, i.e.

CVE-2023-33756: SpreadSheetPlugin's EVAL feature exposes information about paths and files on the server
CVE-2023-24698: Local file inclusion vulnerability in viewfile

Read more about it at https://blog.foswiki.org/Blog/Foswiki218IsReleased

Regards,
Michael.

-- 
-- Michael Daum Consulting
-- Knowledge Management Service & Solutions
-- https://www.michaeldaumconsulting.com
-- Tel: +49 (0)40 21 99 27 51


