X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2685" "Sunday" "8" "November" "2015" "01:48:57" "-0500" "Scott Arciszewski" "scott@paragonie.com" "<CAKws9z180P5D6H0QUAg5jcz+a6GR7Z0tCNcTzmB3U9LzwfFk1w@mail.gmail.com>" "62" "[oss-security] Joomla CMS - Bad Cryptography - Multiple Vulnerabilities" nil nil nil "11" "2015110806:48:57" "[oss-security] Joomla CMS - Bad Cryptography - Multiple Vulnerabilities" (number mark "U       scott@parago Nov  8   62/2685  " thread-indent "\"[oss-security] Joomla CMS - Bad Cryptography - Multiple Vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13889 invoked by uid 550); 8 Nov 2015 06:49:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13825 invoked from network); 8 Nov 2015 06:49:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paragonie_com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=9O5VW2sYPEHm1oxTGFkbPSew49hdBQKqRAbgMDjbgjs=;
        b=Jt7Y9Qzl7AiTiW2tqk+WHMfGTu4BS++BKdL2FZNC0l59yjX+LHZ1c9mn628f4A7AeX
         DVrsgyEchUPaIE6QAHbzuzorCfURslTwgU4r6vXaM4h1b2DAHFQ+NFPA/ksR3p7/o086
         +qLhZxi0VoQ8OvAC/4F1CxiDbHuROHJcPDaBBLVrG2dVHlJZGTf/nAwCWAx2/Q9J9coc
         MCrO2Up7MqLA0JdP4PryYnqPPOapcWtfH8vlPboERWx9TFKsR51WeGZqBNxIDXV4yLFj
         PrjKp2Q9hyze2F+NFrZlTwyvq5tXSlFcBHGQnjMoZSriTrKII5c69bDHRq6K3CSmhJsE
         nMVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=9O5VW2sYPEHm1oxTGFkbPSew49hdBQKqRAbgMDjbgjs=;
        b=UgcMaYFCBXQFW1yyv09st9CV1u4GapQthc+LPjtbF9mGfQVnIiuH9MRZYKD1yNQjvz
         E81SKTPMrs5hENIYQikRnDu8B11WyT7+wjorrfTPrAQ74N7Jye9THd5A4S3duGSzq+PP
         P6Yh3mkggnUkr8dTMZLmCaO3satzjI+maHZelXk04QM1FJEvPxKbvWzukz7kZYelHPGk
         uPOU1AbAC/irQ+sAHLkCZH3qd6ul5+uKWWSdjLUidfvxpj2Y7Eu1JBgMK3S22MFjJooe
         9uBl9avoFuo1jPNyqEdVQtIwQz47mHqXif+B6nfxSM+HPrW/oH9JGaVzquMuzDQ+tQiT
         b4+Q==
X-Gm-Message-State: ALoCoQlD00vjdmDJt+vifufykQrApzCCeRrcbFUW5m35X/cs6j8vswKtRu8V3BXXdZvkKV0o6hnX
MIME-Version: 1.0
X-Received: by 10.112.151.37 with SMTP id un5mr8931384lbb.53.1446965337650;
 Sat, 07 Nov 2015 22:48:57 -0800 (PST)
Date: Sun, 8 Nov 2015 01:48:57 -0500
Message-ID: <CAKws9z180P5D6H0QUAg5jcz+a6GR7Z0tCNcTzmB3U9LzwfFk1w@mail.gmail.com>
From: Scott Arciszewski <scott@paragonie.com>
To: oss-security@lists.openwall.com, fulldisclosure@seclists.org
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Joomla CMS - Bad Cryptography - Multiple Vulnerabilities

Hi OSS-Sec, Full Disclosure, MITRE, and friends,

I spent roughly half an hour looking at Joomla (and picking up my jaw
from the floor at how bad their crypto is), and this is what I found:

https://github.com/joomla/joomla-cms/issues/created_by/paragonie-scott

It seems to hit the jackpot at "bad crypto bingo", even going so far
as to deploy a home-grown cipher that is basically XOR-ECB:
https://github.com/joomla/joomla-cms/issues/8327

MITRE: I'd like to request just one CVE for the Joomla cryptography
library, even though I've identified multiple issues here, as it would
seem redundant to get a CVE for every fatal mistake they made. But
just in case that's a no-go, here's a complete enumeration of what
I've found:

- JCrypt: Silent fallback to a weak, userspace PRNG (which is very bad
for cryptography purposes)
- JCryptCipherSimple: Homegrown weak cipher (XOR-ECB)
- JCryptCipher: Chosen ciphertext attacks (no authentication)
- JCryptCipher: Data corruption / padding oracle attack
- JCryptCipher: Static IV for CBC mode (stored with JCryptKey under
the misnomer property, "public") -- this sort of defeats the purpose
of using CBC mode
- JCryptPasswordSimple: PHP Non-Strict Type Comparison (a.k.a. Magic
Hash vulnerability)

Additionally, there's a (probably non-exploitable) issue that affects
all JCrypt functions:

If mbstring.func_overload is enabled (set to 2, 3, or 7 in php.ini),
strlen() and substr() will act as of the input strings are Unicode
strings rather than raw binary strings. None of these functions are
written to handle this, which can lead to unpredictable results (i.e.
with timingSafeCompare()).

I'd strongly encourage people to not use the current incarnation of
JCrypt for anything sensitive, especially if it's exposed to active
attackers. Instead, check out libsodium, Halite (a libsodium wrapper
that I wrote), defuse/php-encryption, or Zend\Crypt instead.

* https://pecl.php.net/package/libsodium
* https://github.com/paragonie/halite
* https://github.com/defuse/php-encryption
* https://github.com/zendframework/zend-crypt

Additionally, anyone whose PCI/whatever compliance is in any way
hinged upon the cryptography that Joomla provided should probably
notify their pen-testers and get re-evaluated with this new
information at their earliest convenience.

That's all from me.

Scott Arciszewski
Chief Development Officer
Paragon Initiative Enterprises <https://paragonie.com>

P.S. If anyone feels like the sky is falling, please take a deep
breath. Everything will be okay. If any companies need a security
consultant to help them assess the impact (if any) of these
developments on their bottom line, feel free to drop me a line.
