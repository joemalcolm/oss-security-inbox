X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4543" "Monday" "19" "September" "2016" "15:20:02" "-0400" "Mike Santillana" "michael.santillana@wework.com" "<CAARAU46rH-SFtFof=E55kkPY3YyBGOWugZh==qE9zaRCQuPWLg@mail.gmail.com>" "128" "[oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode" "^Cc:" nil nil "9" "2016091919:20:02" "[oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode" (number mark "        michael.sant Sep 19  128/4543  " thread-indent "\"[oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1596 invoked by uid 550); 19 Sep 2016 19:23:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32301 invoked from network); 19 Sep 2016 19:20:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wework-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=w57n2VE9LMFc+7XBdvljzhsVvABKiTlIFFA/FoCHzoI=;
        b=Ab3z/XitWOW2IEnkeYUGMnTzg2BQLL9QnPj54h98Gt9uaFcGlaL7RHS4pdBUjgsuz/
         2nxg7IPnrMgbMd6UhyJcPLP/XAWaczZt0HePwqavJEhI6FkV6bk5PlD5vjm3XXKmLyk3
         IhKSFQKIFq1a2rCRUJkCyQOyGb/YRjCAHbv8aicDblUU8hHrHr1KbFXzcM1YU5upNEmS
         DgAggqu6cHwSwBCNOhq8Yfes3aeS1X3oq0fSzxJ2zvjM2RSBsjHI5BrqEoLK9myKFYYf
         /tnBs40FkxvUSluiyrKEjYKTMi99DLpzc4TzBgbGtYkb8pbbuFLCJdwf2/1u4MyePKwC
         xp9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=w57n2VE9LMFc+7XBdvljzhsVvABKiTlIFFA/FoCHzoI=;
        b=Me6x/cGd4bN//0oos8MxusHDOEfY063WPmhYeK90In2n8QfNS5blYHEjQWCnAUytpW
         Q9WtQk/szgHgGbh5T5Z++jBCzUxlm2SNRfBOZHP1EJ+v0nqkwv4smHZdervOIq5ljbo0
         FqRaTBl0AK+4cdO599/oEV6bs7kwUD8shzY+av4ZYk7wnoAKpNmJARhFhSHJpzFVi6l7
         rH5gAKSykOXTPc4SpKggbQPlsunxATKjsgsyPjKUUzJ8yN1hiftltnqPh5aFlqkzalym
         /vajnHlE+3YNAVzJTcxgvTZ5REnJbR2FDhZq1q0wkikomBoWJwOiwXJu0U464mGkOVkr
         kv0Q==
X-Gm-Message-State: AE9vXwMC1kydHL4Tt0Z/DldwVUv2wWGXyOBmaMm/ID5+ubOJw5wMbflKYB+S2VDdk3qsV9DJ/H5n/oFvssiJz9H+
X-Received: by 10.28.175.147 with SMTP id y141mr10272956wme.9.1474312803187;
 Mon, 19 Sep 2016 12:20:03 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAARAU46rH-SFtFof=E55kkPY3YyBGOWugZh==qE9zaRCQuPWLg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11443f0aec2d3d053ce132e2
Cc: "'Apple' via" <infosec@wework.com>
Date: Mon, 19 Sep 2016 15:20:02 -0400
From: Mike Santillana <michael.santillana@wework.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode
To: oss-security@lists.openwall.com

--001a11443f0aec2d3d053ce132e2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Product: Ruby's OpenSSL Library
Version: Tested on 2.3.1 (latest)
Bug: IV Reuse
Impact: Depends on the usage of the library

Hello,

An IV reuse bug was discovered in Ruby's OpenSSL library when using
aes-gcm. When encrypting data with aes-*-gcm, if the IV is set before
setting the key, the cipher will default to using a static IV. This creates
a static nonce and since aes-gcm is a stream cipher, this can lead to known
cryptographic issues.

The documentation does not appear to specify the order of operations when
setting the key and IV [1]. As an example, see the following insecure code
snippet below:

Vulnerable Code:

def encrypt(plaintext)
    cipher =3D OpenSSL::Cipher.new('aes-256-gcm')
    iv =3D cipher.random_iv # Notice here the IV is set before the key
    cipher.key =3D '11111111111111111111111111111111'
    cipher.auth_data =3D ""
    ciphertext =3D cipher.update(plaintext) + cipher.final
    tag =3D cipher.auth_tag

    puts "[+] Encrypting: #{plaintext}"
    puts "[+] CipherMessage (IV | Tag | Ciphertext): #{bin2hex(iv)} |
#{bin2hex(tag)} | #{bin2hex(ciphertext)}"
end

A developer that uses the code above may incorrectly assume that their code
is secure from the pitfalls associated with IV reuse in aes-*-gcm, since
the =E2=80=98cipher.random_iv=E2=80=99 method is used. According to the doc=
umentation, this
should generate a random IV each time the encryption method is called.

When the code above is run with the same key and same plaintext message,
the following results are obtained:

Output:
# Run 1
./gcm_encrypt.rb 'This is some secret message.'
[+] Encrypting: This is some secret message.
[+] CipherMessage (IV | Tag | Ciphertext): e32594080cca2b37f7d7e968 |
8c676db7551cf046266252ee776ecaa9 | 81092d16b62902d9985656253891dc
800a5bb48fb1c4ad0b7bdf6054

# Run 2
./gcm_encrypt.rb 'This is some secret message.'
[+] Encrypting: This is some secret message.
[+] CipherMessage (IV | Tag | Ciphertext): 431d70714f5e5f876d1c7830 |
8c676db7551cf046266252ee776ecaa9 | 81092d16b62902d9985656253891dc
800a5bb48fb1c4ad0b7bdf6054

Notice that in the output above a unique IV is returned for both runs, but
with the same ciphertext. This proves that even though the random_iv method
is called, the code is defaulting to a static IV. If an attacker can
retrieve multiple ciphertext messages, it is possible to decrypt the
ciphertexts by applying the same attack one would use in a two-time pad
(XOR ciphertexts and crib drag).

Next review the following code snippet and output, which depicts a secure
implementation of the code:

Valid Code:

def encrypt(plaintext)
    cipher =3D OpenSSL::Cipher.new('aes-256-gcm')
    cipher.key =3D '11111111111111111111111111111111'
    iv =3D cipher.random_iv # Notice here the IV is set after the key
    cipher.auth_data =3D ""
    ciphertext =3D cipher.update(plaintext) + cipher.final
    tag =3D cipher.auth_tag

    puts "[+] Encrypting: #{plaintext}"
    puts "[+] CipherMessage (IV | Tag | Ciphertext): #{bin2hex(iv)} |
#{bin2hex(tag)} | #{bin2hex(ciphertext)}"
end

Output:
# Run 1
./gcm_encrypt.rb 'This is some secret message.'
[+] Encrypting: This is some secret message.
[+] CipherMessage (IV | Tag | Ciphertext): 8beb4aa05533e90f4f4eddd3 |
ea1b015958a9b8bd2aafa61887309caf | 19574a9c9869b92140a57a5fd43a14
9a5eaa7e5beefdff5d56cc4136

# Run 2
./gcm_encrypt.rb 'This is some secret message.'
[+] Encrypting: This is some secret message.
[+] CipherMessage (IV | Tag | Ciphertext): 87361b3f1e32291602ac7b40 |
bce7093daa10cc9d2fad0f2b91e077f2 | 47f9a5ba55631204233ace70f169e6
65846e877dca11a6e13a659540

Notice that this time both the IV and ciphertexts are both different for
the same plaintext. This is the intended result a developer would expect to
happen when using this library.

It should be noted that when I went to Ruby's github page to report this
bug, I noticed a developer also independently encountered this weird
phenomenon [2]. Since it has already been brought up to the Ruby team, I
have not created a new ticket.

References:
 [1]
https://ruby-doc.org/stdlib-2.0.0/libdoc/openssl/rdoc/OpenSSL/Cipher.html#c=
lass-OpenSSL::Cipher-label-Authenticated+Encryption+and+Associated+Data+-28=
AEAD-29
 [2] https://github.com/ruby/openssl/issues/49

I'd like to to request a CVE ID for this issue.

Thanks

*WeWork | Mike Santillana*
Security Engineer
845-709-5655
www.wework.com

Create Your Life's Work

--001a11443f0aec2d3d053ce132e2--
