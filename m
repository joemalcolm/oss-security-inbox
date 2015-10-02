X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["176" "Friday" "2" "October" "2015" "15:29:31" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9parQruG9aJroLU82J4sX0yodYcPPRks+5XWF4tD2nWpg@mail.gmail.com>" "6" "Re: [oss-security] CVE requests: Critical vulnerabilities in OpenSMTPD" nil nil nil "10" "2015100213:29:31" "[oss-security] CVE requests: Critical vulnerabilities in OpenSMTPD" (number mark "        Jason@zx2c4. Oct  2    6/176   " thread-indent "\"Re: [oss-security] CVE requests: Critical vulnerabilities in OpenSMTPD\"\n") "<A43D5151-BE22-4D14-9336-73F9DE2785C3@alchemistowl.org>" ("<CAHmME9o2B_FcO57rhDSKg7x-6aiVscP-XHgz3SXnf1GYwUvp7g@mail.gmail.com>" "<A43D5151-BE22-4D14-9336-73F9DE2785C3@alchemistowl.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18303 invoked by uid 550); 2 Oct 2015 13:29:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18272 invoked from network); 2 Oct 2015 13:29:45 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:in-reply-to:references:date:message-id:subject:from:to:cc
	:content-type; s=mail; bh=exjegy38IGEO0xpXBQeMPAtOBBc=; b=RQ0Ogx
	2q1G0RdzIbZDiZoTu2hEun3d+qgcetjv1h5PV4DP9XVfTU1lx8dJbwbjpgqrc3sp
	9W+l8lLOdp0wkytqaRJIMWwjUb9gjSWYZ9oJ5JkSMd1AR8JPQKXn36X5R3ddIPW/
	Xloi1qfmpFhO3qujXlKXuNN8w4J+cFAHDGwBTUE61ODZSOBVphd6hkhiLfu0vWvw
	G+URQ9z/A+IxrcELCuUOsXkOBjABlOBSiyzlYvoQDlyQqebs/PM9NKjs18PBh+/R
	RizVudYT/3T+q92WsxlrQSNqQ8408G8cMLE4SrKLxK6nuVmujY/yzUa5iTIUxk6b
	9mEL8I4LLlR4Vy9Q==
MIME-Version: 1.0
X-Received: by 10.25.91.4 with SMTP id p4mr3623183lfb.95.1443792571672; Fri,
 02 Oct 2015 06:29:31 -0700 (PDT)
In-Reply-To: <A43D5151-BE22-4D14-9336-73F9DE2785C3@alchemistowl.org>
References: <CAHmME9o2B_FcO57rhDSKg7x-6aiVscP-XHgz3SXnf1GYwUvp7g@mail.gmail.com>
	<A43D5151-BE22-4D14-9336-73F9DE2785C3@alchemistowl.org>
Message-ID: <CAHmME9parQruG9aJroLU82J4sX0yodYcPPRks+5XWF4tD2nWpg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: misc <misc@opensmtpd.org>
Date: Fri, 2 Oct 2015 15:29:31 +0200
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE requests: Critical vulnerabilities in OpenSMTPD
To: oss-security <oss-security@lists.openwall.com>

I haven't looked at these commits yet but:

If a local user sends a message to a remote address, does this
outgoing connection open up this remote vulnerability vector?

Jason
