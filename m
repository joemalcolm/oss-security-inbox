X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["630" "Monday" "18" "September" "2017" "20:44:08" "+0000" "Nicholas Prowse" "nick5990@yahoo.co.uk" "<1214526844.7781030.1505767448635@mail.yahoo.com>" "16" "Re: [oss-security] [OSSN-0081] sha512_crypt is insufficient for password hashing" "^Date:" nil nil "9" "2017091820:44:08" "[oss-security] [OSSN-0081] sha512_crypt is insufficient for password hashing" (number mark "        nick5990@yah Sep 18   16/630   " thread-indent "\"Re: [oss-security] [OSSN-0081] sha512_crypt is insufficient for password hashing\"\n") "<1214526844.7781030.1505767448635.ref@mail.yahoo.com>" ("<1214526844.7781030.1505767448635.ref@mail.yahoo.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25919 invoked by uid 550); 18 Sep 2017 20:53:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15559 invoked from network); 18 Sep 2017 20:44:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.uk; s=s2048; t=1505767452; bh=dA4ZeJcaGBT5pFjFiyCamzxENs1GNLDZBaV2n+3I1jg=; h=Date:From:Reply-To:To:Subject:References:From:Subject; b=KMONRucpELoCS1872sDJupdfWdfdQgQGk8HP7nvk+qJKHAQHSYRT4SG3MLsGvYG4cNGg1CazDlKZt7zCnZutTuE/VVh+sLXgmlxN61Sv8qLezfZvINrfFKdfeSf5QB29+9zUZm6AZnunvv8iVCGOjYxI5MMxBEWRsogbDK/4q5xsFfAuhKGr0SaBTtvW/Q9D4onK/HXxRUqk92drMaI+u9U8Td9Ka2G8BT4rAslHkNwoqHq9E6Z2zGchxrBJqyCVfIQeZT5/n2Yu6oMOtCZh/Zim1xtzsE3b8q4inAJeUxMxegstxJrm20H705bSCArhQtSGeWLldXSsAucHjLUDYA==
X-YMail-OSG: Oo9zHtsVM1mKG3vZgjtx_7VV9Ew6ZbsBTGOt7.gMWjHpgCCnc.P2Kyer.W7arDz
 lmbK.Imr7_mnKdj0pWGWgwSOlIWzYKSlgrd94eUhnKF7gkTArzx8OS5iQhzonXLh.TQTbUf6XgP8
 WAi7.deIgA_8qbbxrFLilKYkk.UeztLlog1STniz.J.i.O.rTkeVzjtWY1DpBVwGPZuxsLJK6yr4
 HjNTWjBM282d7RLLHEbf3yMJyqfSDOjvuXVRzSlMTvK8XCHq0plqNHtVP107eHwT8rz9O6IVKmDE
 tno.hthM_2IV90_Lru_d6ZibPIKZar2bt3o6KixRpoXts75AtzD73h9QwrPBav0KXUXqX7PaHlog
 fWGADD7j0DUQ4d_LsHy9wbQez5Lkf9vZSg3LyWyeVoteBp4Q61AYr1YVk91vTyoM58GRaY6F.5ty
 EV5c1flMIbH.P5Xo-
Message-ID: <1214526844.7781030.1505767448635@mail.yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
References: <1214526844.7781030.1505767448635.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.10521 YahooMailBasic Mozilla/5.0 (Android 7.1.1; Mobile; rv:55.0) Gecko/55.0 Firefox/55.0
Date: Mon, 18 Sep 2017 20:44:08 +0000 (UTC)
From: Nicholas Prowse <nick5990@yahoo.co.uk>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [OSSN-0081] sha512_crypt is insufficient for
 password hashing
To:  <oss-security@lists.openwall.com>

40000 iterations of PBKDF2 algorithm according to Sophia's Naked Security as of last month.

https://nakedsecurity.sophos.com/2013/11/20/serious-security-how-to-store-your-users-passwords-safely/

Google is your friend.

--------------------------------------------
On Mon, 18/9/17, Jordan Glover <Golden_Miller83@protonmail.ch> wrote:

 Subject: Re: [oss-security] [OSSN-0081] sha512_crypt is insufficient for password hashing
 To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
 Date: Monday, 18 September, 2017, 19:00
 
 What number of iterations is
 considered secure for sha512crypt/pbkdf2 these days?
 
