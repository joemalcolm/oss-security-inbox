X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1506" "Sunday" "24" "January" "2016" "03:21:31" "+0000" "Zemn mez" "zemnmez@gmail.com" "<CAJCHTFX--F249k4kdfrWv5iHDu33SwBwZqWkhL+_v=2knRQgew@mail.gmail.com>" "37" "[oss-security] CVE Request: Host based account hijack attack on php-openid" "^Date:" nil nil "1" "2016012403:21:31" "[oss-security] CVE Request: Host based account hijack attack on php-openid" (number mark "        zemnmez@gmai Jan 24   37/1506  " thread-indent "\"[oss-security] CVE Request: Host based account hijack attack on php-openid\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6130 invoked by uid 550); 24 Jan 2016 08:16:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17661 invoked from network); 24 Jan 2016 03:21:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=yAv4FAVzUfEnrVuj7tLxGUq4z5t2oM3fw++0GqS5eEE=;
        b=v0SRpzgIyqbssVSSE79CJmLnmWOslKWU0UyUAEf3doG7Z95wPhRqELAU2HGWoKtJSd
         gpg14Irto51F1fSYd2vC6ArJBjG3pb3EOaODZ6SoOtPGHvTBK0uQaRANRARd3AmOaWDA
         l3nVMv8V/VohoIjLCiI8dvAbahjsjKN4uxN+NUNEtQzm9mcqahb1Jb4FhRNlM0DaZb/F
         qfbuZ3chUhf7LP0jSh4GTxcXiJhR2DB7ucWlL6m0vLWqjFb1VELDlm+M2NaGa8DuTIV1
         cshMVEIhW1pKEDuBvt0u0645hx1gRErWfRwZuA2h/X/xQeZqrSkEVdDhDqR6y0k5kxD3
         bIQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=yAv4FAVzUfEnrVuj7tLxGUq4z5t2oM3fw++0GqS5eEE=;
        b=cCD2WW1nhfutralhXc0lOjfLk26bOkD92i0T64KBPV46/Bg77DsS0Zr6OXRGvEtd+u
         eF+yDa+G7gAhqS5xFMPFvZcQC627PG5R5iDjeVyvVask8ANlE3cZ8UQPqqJ8VUj6vf5e
         T4UvxDVWDbH0ow021PoXVkGlve5qn3x0+9YjUXxQkfyQ/I/wQ0H7b4Xz+G3n4cxjtv7u
         hHUNaWMYki8esqgAWPSUSyrKrfaT4miI3oErey1FJQvq6H8Ny8UuNh9bnkkVMN3pytwy
         4K/l06Lxp9THVvkguncG7LuYEBZtis14jFZksr/nOip0VAsRClev74QNZ4OBnBB6nkqr
         ibhA==
X-Gm-Message-State: AG10YORvcjggqXUWdzo6TeNwNphSPixvlK2wSE+vWTmaWGg8bOp+e5LriWI3QVNnFtNyEw/xyWu1MdOSUpwWpg==
MIME-Version: 1.0
X-Received: by 10.112.144.226 with SMTP id sp2mr1741249lbb.70.1453605691619;
 Sat, 23 Jan 2016 19:21:31 -0800 (PST)
Message-ID: <CAJCHTFX--F249k4kdfrWv5iHDu33SwBwZqWkhL+_v=2knRQgew@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7b342fd4e48073052a0bf295
Date: Sun, 24 Jan 2016 03:21:31 +0000
From: Zemn mez <zemnmez@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Host based account hijack attack on php-openid
To: oss-security@lists.openwall.com

--047d7b342fd4e48073052a0bf295
Content-Type: text/plain; charset=UTF-8

An authorization hijacking attack can be carried out on a webserver using
php-openid for authentication.

In example usage (which the vast majority of sites use verbatim),
php-openid checks the `openid.realm` parameter against the PHP variable
`$SERVER['SERVER_NAME']`. (
https://github.com/openid/php-openid/blob/fb4cdfcaa578436c451f8e8687dfb61165074488/examples/consumer/common.php#L109
)

Apache after 1.3 and many other webservers derive SERVER_NAME from the HOST
header.

The attacker coerces the victim into logging into his server with OpenID
provider P. The victim has an account on a website S that also uses P for
authentication.

When the victim logs into the attacker's site, the attacker captures the
request made to it via the victim's browser upon successful login.

The attacker makes a login request to S with the request made to it by the
victim to log into their website, changing the `Host` HTTP header to
reflect the attacker's server.

The captured request represents an authorization destined for the
attacker's evil.com that the victim has allowed a login to evil.com through
the OpenID provider P. By changing the Host header and making the request
to the vulnerable website S, S thinks the openid.realm through SERVER_NAME
should be evil.com, and accepts the OpenID login, allowing the attacker
access to the victim's account on S.


Zemnmez and Nathaniel "XMPPwocky" Theis

--047d7b342fd4e48073052a0bf295--
