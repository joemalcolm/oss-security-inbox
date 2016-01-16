X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2426" "Saturday" "16" "January" "2016" "03:15:53" "-0500" "Scott Arciszewski" "scott@paragonie.com" "<CAKws9z2psDS2P25SOykpaR0QUiMZd1Pe1q4Q3ia_YyXXh-ptGQ@mail.gmail.com>" "61" "[oss-security] It essentially wins crypto vulnerability bingo! gilfether/phpcrypt" "^Date:" nil nil "1" "2016011608:15:53" "[oss-security] It essentially wins crypto vulnerability bingo! gilfether/phpcrypt" (number mark "        scott@parago Jan 16   61/2426  " thread-indent "\"[oss-security] It essentially wins crypto vulnerability bingo! gilfether/phpcrypt\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19991 invoked by uid 550); 16 Jan 2016 08:16:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19970 invoked from network); 16 Jan 2016 08:16:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paragonie-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=MzR/uoYl0yLtOnXiUt/UYbF+++Z/x882nrp/DW/WI2Y=;
        b=jbByLNOOD828HJ8pTFRhARQagZDCW7fdyyc5d3uRA379xidttrmiyCalGJs3R1d+ub
         jH0+aEHxvah5leQerFOoCkaObd12yh24Yf4mevUQB75Aom95pSj+QPoQXn6urD7hOaxV
         NnaCHVnAYs73PkchKZjOZdQHKC3TaS4hBTGiSCqwKkMMTR//wU8J3LMKo9U7EB947nQs
         7BPNr75kFdqsEuNq+Y6WesjahFz1HrXrWdgu2+urSLUJPpH5+ZNMNW1spTclqAe9A5OD
         mbQPz4EB0vlB+XvKEHp3RjmkfKbyXtBXq8HzsowsDGm0beyCfnh59ONLB7KY3yVHQ3Y8
         lkDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=MzR/uoYl0yLtOnXiUt/UYbF+++Z/x882nrp/DW/WI2Y=;
        b=DqyE2U56HPrkgZ65p+a1iR4HSpszgRQh22vtOl5erWNvNkEMN4q5aG4beS5bYaWRiQ
         Z/gWc8tt3tmmbFJnrq8OotBsQ0cSOsHNwnm6zEWF4jK1sMdUW4gcnA6yxUcWgAVDe1TT
         jbltKrWLCGvrixqApbOpGJpRVnAlgoSU7jgWOFxN1mpJYYWaOKnC8cyC4fxys3vpW6y3
         uyH0XPqW9HF0MAeM4JZJQAc2BeMQySWuujOZNda3EUNkoHp2omJlJRCWhhe3G1CC/xyA
         q5oMgvryHdBrtcyRl3TuoYZ/9eiqKnuxohBRjeH6tO0+MHxcsvZWfpin6AsB7bQo2l1D
         Jfyg==
X-Gm-Message-State: ALoCoQmoAKhMe7jcTCfVS2dwpsNVTaeuLWSPJV4vfiYRk7pi7QSlqX+p/nKEDd9H1OE95iHFhGwTyfbVr5FGwvdf6PlescsAkw==
MIME-Version: 1.0
X-Received: by 10.112.135.39 with SMTP id pp7mr3996931lbb.43.1452932153126;
 Sat, 16 Jan 2016 00:15:53 -0800 (PST)
Message-ID: <CAKws9z2psDS2P25SOykpaR0QUiMZd1Pe1q4Q3ia_YyXXh-ptGQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e01228d1adeca7105296f2099
Date: Sat, 16 Jan 2016 03:15:53 -0500
From: Scott Arciszewski <scott@paragonie.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] It essentially wins crypto vulnerability bingo! gilfether/phpcrypt
To: oss-security@lists.openwall.com, fulldisclosure@seclists.org

--089e01228d1adeca7105296f2099
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Consider this email the spiritual successor to my most recent post on Full
Disclosure (http://seclists.org/fulldisclosure/2016/Jan/50).

Today, we're going to talk about this library:
https://github.com/gilfether/phpcrypt/issues/6

Let's go down the list:

- [x] Wrote their own block cipher implementation
- [x] ...in PHP...
- [x] ...and forgot to account for function overloading!
- [x] Chosen-ciphertext attacks (The existence for which is almost implied
by "PHP crypto". Almost.)
- [x] Defaults to a weak random number generator (32 bits of entropy is
enough for AES right?)
- [x] Defaults to ECB mode (https://blog.filippo.io/the-ecb-penguin/)
- [x] Offers a laundry list of ciphers available, some of which are stupid
- [x] ...like SimpleXOR (remember JCrypt?), Vigenere, and Enigma!

Yep, this is almost as bad as it gets. I've attempted to notify everyone on
Github who used this library, but there might be some people who do that
aren't on Github. Please spread the word: migrate away from homebrew PHP
cryptography.

Like most "pure PHP" cryptography projects, this code is pure security
theater. There is no salvaging it.

For PHP developers who would otherwise be left out in the rain by this
disclosure, here are some PHP cryptography libraries that do it right:

1. https://github.com/jedisct1/libsodium-php (HIGHLY recommended!)
=E2=80=8B2=E2=80=8B
. https://github.com/defuse/php-encryption (recommended!)
3. https://github.com/paragonie/halite (requires #1)
4. https://github.com/paragonie/EasyRSA (reluctantly included for people
that really believe they need RSA)

(Details:
https://paragonie.com/blog/2015/11/choosing-right-cryptography-library-for-=
your-php-project-guide
)

Seriously, folks: Writing cryptography primitives or protocols is hazardous
in any language. Even if you have a mathematics background.

If you can't afford to hire a cryptography expert to audit your library
before you publish it, you should seriously consider using one that the
community has already reviewed for free.

Scott Arciszewski
Chief Development Officer
Paragon Initiative Enterprises <https://paragonie.com>=E2=80=8B

P.S. MITRE, if you're not busy, could you slap a CVE on the issues? This
library actually gets a fair bit of use (though hopefully not for long).

--089e01228d1adeca7105296f2099--
