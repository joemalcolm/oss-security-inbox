X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4269" "Tuesday" "19" "July" "2016" "00:56:58" "-0400" "Scott Arciszewski" "scott@paragonie.com" "<CAKws9z0pq63ZK2q_zVgoYF+U+evLNvqD5v=7HKnOy5H263Z8rA@mail.gmail.com>" "120" "[oss-security] Ruining the Magic of Magento's Encryption Library" "^Date:" nil nil "7" "2016071904:56:58" "[oss-security] Ruining the Magic of Magento's Encryption Library" (number mark "        scott@parago Jul 19  120/4269  " thread-indent "\"[oss-security] Ruining the Magic of Magento's Encryption Library\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15563 invoked by uid 550); 19 Jul 2016 04:58:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8136 invoked from network); 19 Jul 2016 04:57:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paragonie-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=HuTdMju5q+zcKa/hxPzwfh6bGvFtLGENY88lYnf+Go4=;
        b=fRByLg5EdXULKzyyiJOeO+eLzrT05gDcvJJLoWSa22fzONS5mn4N323FfsWZqpgk7L
         VCnEZqJ/cqV0YVaX0IKjQF2tLknXiyULT6oP32/s7w4Way9sW6WSZEn15YWZSmBpOqrT
         6hjLg2Po2Jq0vtrC8q/qO5b7bUVzl4jaw+yKykRnuG1BBzcbY21GfPFnsMCrZCs/4enr
         dG0BhramlXXaP56Q6rD4UjMsfuPcqH7wb6tXcBgCJUnmRsT4bMloX3af1tp6gl+Z5fh4
         7tLqthDptovTb7Soh1bxt5aRxqKw4A75wfO5jEgtwr2uWLwgbLjb3oKsaQfzdXufotxw
         NHcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=HuTdMju5q+zcKa/hxPzwfh6bGvFtLGENY88lYnf+Go4=;
        b=PeQIl4jNVyIIRpCDxqc06LPwRLrFJBuP8l+adkuEIlWknfBNY2ZKwlNXZ+p372k1Lt
         eQZc9HHevG9RuvK0Iv7JxjKCQh4IX7NTCjNDiiczdOeKnMz/HVXtXpdPfQSybdEYqWu7
         +znLcHdezOzIGAUxuvBbIxq9npNvaCdsdy5xNUeexL3ZaETng2xOV67IdP5dE2HergVF
         eHzDJ+ymNDIM9fMHrhfFwT/m2yUz77ebAvFdUYN+3LCttzQiFJ3ZG0Q39bBa4cfy0JKT
         aM+2Ot3oZKqZ5HY1Ec+Z5TZaOkXfL4dLIRsk58wBC/SzfowLIIyNttkTpwvNHS0EYlxk
         JyTQ==
X-Gm-Message-State: ALyK8tI5M4+gInPXmQ5sj2Kie0t6F/DqVHab0uVZknEprQVBkAuAQwQpAGDvVIcsAtEGeZrMcpCRpeTX//ShDA==
X-Received: by 10.202.102.100 with SMTP id a97mr16949026oic.77.1468904218781;
 Mon, 18 Jul 2016 21:56:58 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAKws9z0pq63ZK2q_zVgoYF+U+evLNvqD5v=7HKnOy5H263Z8rA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1140f5a22b7b790537f5ea73
Date: Tue, 19 Jul 2016 00:56:58 -0400
From: Scott Arciszewski <scott@paragonie.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Ruining the Magic of Magento's Encryption Library
To: fulldisclosure@seclists.org, oss-security@lists.openwall.com

--001a1140f5a22b7b790537f5ea73
Content-Type: text/plain; charset=UTF-8

Hello mcrypt, my old friend
I've come to exploit you again
Because a version slowly rotting
Is well-deserved for a boycotting
And the S-box that was planted in its GOST
Still remains
Within the sound of silence

~ 8< ~ 8< ~ 8< ~ 8< ~ 8< ~ 8< ~ 8< ~ 8< ~ 8< ~ 8< ~ 8< ~ 8< ~ 8< ~ 8< ~ 8< ~

Let's talk about Magento.

The Wikipedia page for Magento begins, "Magento is an open-source
e-commerce platform written in PHP." This bears emphasis: e-commerce
platform.

When I hear e-commerce, I think "financial information". I think "credit
card numbers" and "probably PCI-DSS violations should anything be obviously
stupid".

Let's look at how Magento implements cryptography, with a series of
exhibits followed by an explanation of what's happening and why it's
dangerous:

  A.
https://github.com/magento/magento2/blob/6ea7d2d85cded3fa0fbcf4e7aa0dcd4edbf568a6/lib/internal/Magento/Framework/Encryption/Encryptor.php#L268-L320
  B.
https://github.com/magento/magento2/blob/6ea7d2d85cded3fa0fbcf4e7aa0dcd4edbf568a6/lib/internal/Magento/Framework/Encryption/Encryptor.php#L390-L399
  C.
https://github.com/magento/magento2/blob/6ea7d2d85cded3fa0fbcf4e7aa0dcd4edbf568a6/lib/internal/Magento/Framework/Encryption/Crypt.php#L63-L77

D.
https://github.com/magento/magento2/blob/6ea7d2d85cded3fa0fbcf4e7aa0dcd4edbf568a6/lib/internal/Magento/Framework/Encryption/Encryptor.php#L170

If you looked at the code, I promise this is every bit as bad as it looks
at a glance.

EXHIBIT A
=========

Magento's decryption expects up to 4 strings concatenated by a : character.
Depending on the number of pieces, it assumes a totally different setup:

1 piece: Blowfish, in ECB mode!
2 or 3 pieces: Probably blowfish, but maybe AES or Rijndael-256, depending
on the integer supplied by the attacker.
4 pieces: We finally get an initialization vector, which means CBC mode can
be used.

At no point do they authenticate _anything_, so no matter what:

- You get to control which branch is selected by breaking pieces off the
attacker-chosen message.
- You get to choose the ciphertext that the attempted decryption is
performed upon.

EXHIBIT B
=========

If you thought the ability to be encrypted with AES was a saving grace, too
bad. They hard-code your choice to ECB mode.

The only way you can get CBC mode (which, again, is unauthenticated) is to
use the non-standard Rijndael256 cipher.

EXHIBIT C
=========

If you thought it couldn't possibly get any worse, Magento's encryption
library will either:

- Give you an IV consisting entirely of NULL bytes.
- Generate it, using rand(), on a 62-character keyspace.

(Y'know, because it's not XORed with the plaintext in CBC mode and biases
aren't a concern or anything.)

EXHIBIT D
=========

Yes, that is how Magento hashes passwords. Which is weird: They go out of
their way to compare strings in constant-time, but

PUTTING IT ALL TOGETHER
=======================

An attacker has a great deal of control over the ciphertext, and
incidentally which cipher mode is used by the decryption routine.
Nothing is authenticated. At all.
ECB mode everywhere.
When CBC mode is actually used, it's used with a laughably weak IV and a
non-standard cipher. Also, unauthenticated.

Magento, one of the largest open source e-commerce platforms, ships a
broken cryptography library that clueless developers are probably using to
encrypt your credit card information for their client's customers.

Given the prevalence of ECB mode, and the weak IV used in CBC mode, you
should assume anything you encrypted with Magento's encryption library is
both:

- Decryptable, if an attacker can alter plaintexts or ciphertexts and study
the output of either operation, without the key
- Forgeable

This cryptography implementation is very irresponsible and, because
cryptography is involved, warrants immediate full disclosure so everyone
can cease to use their broken crypto as soon as possible.

If you need a remediation strategy, I've got you covered:
https://paragonie.com/blog/2015/11/choosing-right-cryptography-library-for-your-php-project-guide

Scott Arciszewski
Chief Development Officer
Paragon Initiative Enterprises <https://paragonie.com>

--001a1140f5a22b7b790537f5ea73--
