Received: (qmail 24394 invoked by uid 550); 6 Sep 2022 10:39:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27686 invoked from network); 6 Sep 2022 05:48:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date;
        bh=s6WUYsdhAwNi6r9t0nYC/FBwPbTtUfObdfMLCTyHJX8=;
        b=jHVT37WRTZq9NFrLZ2cumA1M2Mn7RlM+b3Mh9jlJBmKhG8DIWsih5pfUvfH25QA5QV
         Bx5ShquEYVgoKAWiU9CElTYK5jf3Ejv7BjDh4STnqMSpuPOlWEq1XlRCtxVp38LuBwX9
         XIp+LgvTxSjbsJrMtiAe3veeBHXwk9Ny2PFhqAzwMm6JG5wqv7vkIZjeobpsSZumQYoH
         lubefXnq/62X5SJ66z+xoH/ey1Us1myoFkPar7dN7TpLRhxHBoSgjCOjuU4OhFpnp86H
         yPkUtkElh5dbNifgYqtIDvQLhfPIIWOihpvpEP/CgTKQ5eZ2Reg7qeWILHhfvldzXiAI
         /6kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=s6WUYsdhAwNi6r9t0nYC/FBwPbTtUfObdfMLCTyHJX8=;
        b=P9z0OyHze1fOf/ij9MsspU+AyMs4IVh/g5jK1u3q3z4+5ltz7afbDtJ/vO8QBocwvI
         ZvThhep3bnMVWoWdn5Nv8lbikRJXvrzpR7RvSHGwyF8UvjgoxaGso/5frnaRTaMQh1F1
         CLL/E48clZEPP+exlep8fQEeA2aldl9V5TrAS6t47jNJieORxqg3FlYF8Ba5C8hVSp/t
         bWF5UA77mHXoKdVma3EnF6hHVSoLUf3y7jVqEyElSlfCSn++mEufbS16BTtT/x6Lg9sR
         eHpw6U1tWGrcQA06FRkFM1JEYpgKZ2vWdFMffzLMb16DcMn2U7U65jxlmG+bgiGg9xsK
         QS2Q==
X-Gm-Message-State: ACgBeo1uRytAV9UhaOeF7PYFbILbFnY5nYqH3uBJ71BHbO3yCUZ65R1k
	qxEoNcelk/4eWY9zI6XGUu4kiTFPHUr9grNDckn4YyEDPnY=
X-Google-Smtp-Source: AA6agR5KgXRTVJoJARNhyeKLBDPORhaRs5FE/wptZmzuPDKiBHahciX3uzUPyafsJH7I+8t7q4BliTgThUFlyZa4Guk=
X-Received: by 2002:a5d:648b:0:b0:222:cc32:c292 with SMTP id
 o11-20020a5d648b000000b00222cc32c292mr25338296wri.463.1662443290697; Mon, 05
 Sep 2022 22:48:10 -0700 (PDT)
MIME-Version: 1.0
From: Georgi Guninski <gguninski@gmail.com>
Date: Tue, 6 Sep 2022 08:47:58 +0300
Message-ID: <CAGUWgD9QR7mjyVnBV4NcyVv=RzLBjNoqvv=d02P-GGsdOV_VWg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] sagemath denial of service with abort() in gmp: overflow in mpz type

sagemath 9.0 and reportedly later on ubuntu 20.

sagemath gives access to the python interpreter,
so code execution is trivial.

We give DoS attacks, which terminates the sagemath process
with abort(), when raising symbolic expression to large integer power.

We get abort() with stack:

gmp: overflow in mpz type

#6  0x00007f55c83ee72e in __GI_abort () at
/build/glibc-SzIz7B/glibc-2.31/stdlib/abort.c:79
#7  0x00007f55c56e0d20 in __gmpz_realloc ()
#8  0x00007f55c56dd2b0 in __gmpz_n_pow_ui ()
#9  0x0000000000000000 in GiNaC::numeric::power(long) const ()
#10 0x0000000000000000 in GiNaC::numeric::pow_intexp(GiNaC::numeric
const&) const ()

The non-minimal testcase
===
#sagemath code, copyright Georgi Guninski

def binnk3u(n,k):  return ( (n/k)**(k))
n1=(2*10**3);d0=29004853178239;n0=SR(log(n1));
tt=binnk3u(n0+d0-1,d0);
print("passed :(")
===
