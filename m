X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/09/18/8
Message-ID: <1214526844.7781030.1505767448635@mail.yahoo.com>
Date: Mon, 18 Sep 2017 20:44:08 +0000 (UTC)
From: Nicholas Prowse <nick5990@...oo.co.uk>
To: <oss-security@...ts.openwall.com>
Subject: Re: [OSSN-0081] sha512_crypt is insufficient for password hashing
Content-Type: text/plain; charset=utf-8

40000 iterations of PBKDF2 algorithm according to Sophia's Naked Security as of last month.

https://nakedsecurity.sophos.com/2013/11/20/serious-security-how-to-store-your-users-passwords-safely/

Google is your friend.

--------------------------------------------
On Mon, 18/9/17, Jordan Glover <Golden_Miller83@...tonmail.ch> wrote:

 Subject: Re: [oss-security] [OSSN-0081] sha512_crypt is insufficient for password hashing
 To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
 Date: Monday, 18 September, 2017, 19:00
 
 What number of iterations is
 considered secure for sha512crypt/pbkdf2 these days?
 
