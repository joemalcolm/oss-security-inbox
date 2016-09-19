X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5542" "Monday" "19" "September" "2016" "18:02:40" "-0400" "Mike Santillana" "michael.santillana@wework.com" "<CAARAU449Y-_3UVN4URvLmNAWuXmm43TeMo_UyTMpE862Zv_3ng@mail.gmail.com>" "169" "Re: [oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode" nil nil nil "9" "2016091922:02:40" "[oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode" (number mark "U       michael.sant Sep 19  169/5542  " thread-indent "\"Re: [oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode\"\n") "<CALPTtNWcndGBwL-pf0BF_XuSA6UCQajhe6-mgj=G5xa3iK1EEA@mail.gmail.com>" ("<CAARAU46rH-SFtFof=E55kkPY3YyBGOWugZh==qE9zaRCQuPWLg@mail.gmail.com>" "<CALPTtNWcndGBwL-pf0BF_XuSA6UCQajhe6-mgj=G5xa3iK1EEA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26578 invoked by uid 550); 19 Sep 2016 22:06:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22121 invoked from network); 19 Sep 2016 22:02:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wework-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=59o3rUfaZU1Z5QD++SzqfNkcEels0G+ZnxkPO/QbIKs=;
        b=xSu6+ryTGJac0jDfbijtrREpdRcqnxqABT/C68P6R65JxGkano3K7YKfS6KLpmisZm
         ZDDwL+epuEib8O9LP89bVhUppazf264+kP1Cih5Oq+Ntarw6MxQjoLPVW8P0jpjEC4KU
         EKzldWKjm0fnhDfk/jax9hSDjSE6RWBXtZvCx2m55HsBMqtTGiDYDewHazthLBlZIhXo
         6x1iDzL97sczkKBhbRnOWqvXuz5Geoq6DqksAkvkS1XB5YvPtvD6+Km+5Us0jstysnQ7
         ZM394LWYB9eRaDYItHtJoqaeqkxIYg6xQyOulUJDZTFe3nHO8+AxXvdwB+wn7T65l5QI
         zkVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=59o3rUfaZU1Z5QD++SzqfNkcEels0G+ZnxkPO/QbIKs=;
        b=cOsxPPXXX2QpmdtYryimzuuc/5q2kDD5nlThsHnaurzERXvRq2PeFBApF7N2RjPPtE
         WczrU/7TnbVGlpuFxYq1fMtkvPpeWlxCOHBe0URVjg9K1jRPk1fRmxONsACAZ5WSUd9S
         5nouGcKWP8bZXEHJwhRfzkhBkAdM3pQX1AlM2hrbPumXFSaunshmp4rbADT9XJVD5jth
         H/xYbfLy61ZKn1haH2VB83PQ2z9tWhD/NOb27OB/J0O2liDepGbwzG2AjJkbLY6Ky+7W
         32j+KwU1MRTLllCDA4Tgh5+do9giGrfU5NBzNuwiCOdRVUdOgzA8dXsURXSaC5c2GJ/R
         a7Xg==
X-Gm-Message-State: AE9vXwMH+5AdVWSxLHQdDgSx5bmjQCrgod9y0PbJ66w1NR/K+tBMQG5hD34L0OxtvC/dAkWmY+9yORPfqIOsC4TL
X-Received: by 10.194.61.72 with SMTP id n8mr24879084wjr.74.1474322561504;
 Mon, 19 Sep 2016 15:02:41 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CALPTtNWcndGBwL-pf0BF_XuSA6UCQajhe6-mgj=G5xa3iK1EEA@mail.gmail.com>
References: <CAARAU46rH-SFtFof=E55kkPY3YyBGOWugZh==qE9zaRCQuPWLg@mail.gmail.com>
 <CALPTtNWcndGBwL-pf0BF_XuSA6UCQajhe6-mgj=G5xa3iK1EEA@mail.gmail.com>
From: Mike Santillana <michael.santillana@wework.com>
Date: Mon, 19 Sep 2016 18:02:40 -0400
Message-ID: <CAARAU449Y-_3UVN4URvLmNAWuXmm43TeMo_UyTMpE862Zv_3ng@mail.gmail.com>
To: Reed Loden <reed@reedloden.com>
Cc: oss-security@lists.openwall.com, "'Apple' via" <infosec@wework.com>
Content-Type: multipart/alternative; boundary=047d7b66f343902f34053ce378ac
Subject: Re: [oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in
 GCM Mode

--047d7b66f343902f34053ce378ac
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Reed,

Yes this has been submitted via HackerOne as well.

Thanks


*WeWork | Mike Santillana*
Security Engineer
845-709-5655
www.wework.com

Create Your Life's Work

On Mon, Sep 19, 2016 at 4:55 PM, 'Reed Loden' via Information Security <
infosec@wework.com> wrote:

> Was Ruby actually notified of this outside of the GitHub issue? Not sure
> they are monitoring that repository for security issues, so could have be=
en
> missed.
>
> https://www.ruby-lang.org/en/security/ defines their security reporting
> processes.
>
> ~reed
>
> On Mon, Sep 19, 2016 at 12:20 PM, Mike Santillana <
> michael.santillana@wework.com> wrote:
>
>> Product: Ruby's OpenSSL Library
>> Version: Tested on 2.3.1 (latest)
>> Bug: IV Reuse
>> Impact: Depends on the usage of the library
>>
>> Hello,
>>
>> An IV reuse bug was discovered in Ruby's OpenSSL library when using
>> aes-gcm. When encrypting data with aes-*-gcm, if the IV is set before
>> setting the key, the cipher will default to using a static IV. This
>> creates
>> a static nonce and since aes-gcm is a stream cipher, this can lead to
>> known
>> cryptographic issues.
>>
>> The documentation does not appear to specify the order of operations when
>> setting the key and IV [1]. As an example, see the following insecure co=
de
>> snippet below:
>>
>> Vulnerable Code:
>>
>> def encrypt(plaintext)
>>     cipher =3D OpenSSL::Cipher.new('aes-256-gcm')
>>     iv =3D cipher.random_iv # Notice here the IV is set before the key
>>     cipher.key =3D '11111111111111111111111111111111'
>>     cipher.auth_data =3D ""
>>     ciphertext =3D cipher.update(plaintext) + cipher.final
>>     tag =3D cipher.auth_tag
>>
>>     puts "[+] Encrypting: #{plaintext}"
>>     puts "[+] CipherMessage (IV | Tag | Ciphertext): #{bin2hex(iv)} |
>> #{bin2hex(tag)} | #{bin2hex(ciphertext)}"
>> end
>>
>> A developer that uses the code above may incorrectly assume that their
>> code
>> is secure from the pitfalls associated with IV reuse in aes-*-gcm, since
>> the =E2=80=98cipher.random_iv=E2=80=99 method is used. According to the =
documentation,
>> this
>> should generate a random IV each time the encryption method is called.
>>
>> When the code above is run with the same key and same plaintext message,
>> the following results are obtained:
>>
>> Output:
>> # Run 1
>> ./gcm_encrypt.rb 'This is some secret message.'
>> [+] Encrypting: This is some secret message.
>> [+] CipherMessage (IV | Tag | Ciphertext): e32594080cca2b37f7d7e968 |
>> 8c676db7551cf046266252ee776ecaa9 | 81092d16b62902d9985656253891dc
>> 800a5bb48fb1c4ad0b7bdf6054
>>
>> # Run 2
>> ./gcm_encrypt.rb 'This is some secret message.'
>> [+] Encrypting: This is some secret message.
>> [+] CipherMessage (IV | Tag | Ciphertext): 431d70714f5e5f876d1c7830 |
>> 8c676db7551cf046266252ee776ecaa9 | 81092d16b62902d9985656253891dc
>> 800a5bb48fb1c4ad0b7bdf6054
>>
>> Notice that in the output above a unique IV is returned for both runs, b=
ut
>> with the same ciphertext. This proves that even though the random_iv
>> method
>> is called, the code is defaulting to a static IV. If an attacker can
>> retrieve multiple ciphertext messages, it is possible to decrypt the
>> ciphertexts by applying the same attack one would use in a two-time pad
>> (XOR ciphertexts and crib drag).
>>
>> Next review the following code snippet and output, which depicts a secure
>> implementation of the code:
>>
>> Valid Code:
>>
>> def encrypt(plaintext)
>>     cipher =3D OpenSSL::Cipher.new('aes-256-gcm')
>>     cipher.key =3D '11111111111111111111111111111111'
>>     iv =3D cipher.random_iv # Notice here the IV is set after the key
>>     cipher.auth_data =3D ""
>>     ciphertext =3D cipher.update(plaintext) + cipher.final
>>     tag =3D cipher.auth_tag
>>
>>     puts "[+] Encrypting: #{plaintext}"
>>     puts "[+] CipherMessage (IV | Tag | Ciphertext): #{bin2hex(iv)} |
>> #{bin2hex(tag)} | #{bin2hex(ciphertext)}"
>> end
>>
>> Output:
>> # Run 1
>> ./gcm_encrypt.rb 'This is some secret message.'
>> [+] Encrypting: This is some secret message.
>> [+] CipherMessage (IV | Tag | Ciphertext): 8beb4aa05533e90f4f4eddd3 |
>> ea1b015958a9b8bd2aafa61887309caf | 19574a9c9869b92140a57a5fd43a14
>> 9a5eaa7e5beefdff5d56cc4136
>>
>> # Run 2
>> ./gcm_encrypt.rb 'This is some secret message.'
>> [+] Encrypting: This is some secret message.
>> [+] CipherMessage (IV | Tag | Ciphertext): 87361b3f1e32291602ac7b40 |
>> bce7093daa10cc9d2fad0f2b91e077f2 | 47f9a5ba55631204233ace70f169e6
>> 65846e877dca11a6e13a659540
>>
>> Notice that this time both the IV and ciphertexts are both different for
>> the same plaintext. This is the intended result a developer would expect
>> to
>> happen when using this library.
>>
>> It should be noted that when I went to Ruby's github page to report this
>> bug, I noticed a developer also independently encountered this weird
>> phenomenon [2]. Since it has already been brought up to the Ruby team, I
>> have not created a new ticket.
>>
>> References:
>>  [1]
>> https://ruby-doc.org/stdlib-2.0.0/libdoc/openssl/rdoc/OpenSS
>> L/Cipher.html#class-OpenSSL::Cipher-label-Authenticated+
>> Encryption+and+Associated+Data+-28AEAD-29
>>  [2] https://github.com/ruby/openssl/issues/49
>>
>> I'd like to to request a CVE ID for this issue.
>>
>> Thanks
>>
>> *WeWork | Mike Santillana*
>> Security Engineer
>> 845-709-5655
>> www.wework.com
>>
>> Create Your Life's Work
>>
>
>

--047d7b66f343902f34053ce378ac--
