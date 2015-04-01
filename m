X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1919" "Tuesday" "31" "March" "2015" "22:53:52" "-0700" "Jeremy Spilman" "jeremy@taplink.co" "<op.xwefz2r0yldrnw@laptop-air>" "47" "[oss-security] Signature Bypass in several JSON Web Token Libraries (CVEs Needed?)" nil nil nil "3" "2015040105:53:52" "[oss-security] Signature Bypass in several JSON Web Token Libraries (CVEs Needed?)" (number mark "        jeremy@tapli Mar 31   47/1919  " thread-indent "\"[oss-security] Signature Bypass in several JSON Web Token Libraries (CVEs Needed?)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15693 invoked by uid 550); 1 Apr 2015 06:03:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10217 invoked from network); 1 Apr 2015 05:53:55 -0000
dkim-signature: v=1; a=rsa-sha256; d=taplink.co; s=key;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:MIME-Version:Content-Type:Content-Transfer-Encoding;
	bh=Z7ygkiy6JdocpvI/OdY3m1Lbhm/DSkGknKIB6oMEZkI=;
	b=1sEWMzyCiwNI60bZD8IbOuE8u9a1xDU5b/Nuyqdr5DS4h3kXZILLR2H0JBrzOx4EcqYuILJWy762nqiSZ5MuZO10xhbtX1olLwbu11UaH52jMh18KkjhY37Md+RWmwcbEHdS7YdUvyzHX670geDjd45V3IZr31jaNLDQO4ih1tg=
Content-Type: text/plain; charset=iso-8859-15; format=flowed; delsp=yes
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Organization: TapLink
Message-ID: <op.xwefz2r0yldrnw@laptop-air>
User-Agent: Opera Mail/1.0 (Win32)
Date: Tue, 31 Mar 2015 22:53:52 -0700
From: "Jeremy Spilman" <jeremy@taplink.co>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Signature Bypass in several JSON Web Token Libraries (CVEs Needed?)
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

Tim McLean discovered two serious (related) vulnerabilities common to  
several widely used JSON Web Token (JSW) libraries which he wrote about  
here [1] a month ago, and again today here [2].

A JWT is base64 encoded header, payload, and signature, where the header  
specifies the signature algorithm and an expiration timestamp.

The validation libraries running server side provide APIs such as;

   verify(string token, string secretKey)

The two critical bugs;

- Even when a secretKey was provided to the API, if the data in 'token'  
decoded to a header specifying a signature algorithm of *none*, the API  
would still return success. Meaning an attacker could just strip the  
signature, change the header, and bypass the signature validation  
server-side.

- If the secretKey was expected to be a RSA public key, but the attacker  
changed the header to indicate a signature algorithm of HMAC, the RSA  
public key would be used as the signing secret.

Effected libraries include but probably not limited to:

namshi-jose:  
https://github.com/namshi/jose/commit/127b4415e66d89b1fcfb5a07933db0b5ff5cd636
python-jwt:  
https://github.com/davedoesdev/python-jwt/commit/5ddb71b2ed5785c329b761e45a246996a1dd9cab
node-jsonwebtoken:  
https://github.com/auth0/node-jsonwebtoken/commit/1bb584bc382295eeb7ee8c4452a673a77a68b687
pyjwt:  
https://github.com/jpadilla/pyjwt/commit/88a9fc56bdc6c870aa6af93bda401414a217db2a
php-jwt: Not yet patched?
jsjwt: Not yet patched?

I think these are all (possibly independently) CVE worthy... I requested  
Tim file CVEs here [3], but I haven't seen any to-date. I'm not sure about  
requesting CVEs on someone else's work, I'm just an interested bystander  
here.


[1] - https://www.timmclean.net/2015/02/25/jwt-alg-none.html
[2] -  
https://auth0.com/blog/2015/03/31/critical-vulnerabilities-in-json-web-token-libraries/
[3] - https://news.ycombinator.com/item?id=9111049

